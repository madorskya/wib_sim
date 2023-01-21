-- txmux_mux
--
-- Multiplexes data blocks from multiple sources onto ethernet UDP packet stream
--
-- The actual multiplexer
--
-- Dave Newbold, 6/10/22

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.tx_mux_decl.all;

entity tx_mux_out is
    generic(
        N_SRC: positive;
        IFACE_ID: std_logic_vector(1 downto 0)
    );    
    port(
        id: in std_logic_vector(19 downto 0);
        clk: in std_logic; -- Ethernet clock
        rst: in std_logic; -- Sync reset (clk)
        d: in src_d_array(N_SRC - 1 downto 0); -- Data input from buffers (clk)
        re: out std_logic_vector(N_SRC - 1 downto 0); -- Read enable to buffers (clk)
        q: out src_d; -- Packet data output to ethernet block (clk)
        ready: in std_logic; -- Ethernet block ready (clk)
        mark: in std_logic; -- Timeslice marker (clk)
        oflow: out std_logic
    );

end entity tx_mux_out;

architecture rtl of tx_mux_out is

    signal src: std_logic_vector(5 downto 0);
    signal srcv, req: std_logic;
    signal srci: integer range N_SRC - 1 downto 0 := 0;
    signal hdr_hb, hdr: std_logic_vector(63 downto 0);
    signal hb_ctr: unsigned(15 downto 0);
    signal hb_seq: unsigned(11 downto 0);
    signal hb_go, hb_go_d, hb_req, hb_ack: std_logic;
    type state_t is (ST_INIT, ST_HB, ST_D_HDR, ST_D, ST_SEND, ST_PAUSE, ST_OFLOW);
    signal state: state_t;
    signal sending, timeout, content: std_logic;
    signal lctr: unsigned(11 downto 0);
    signal tctr, dctr: unsigned(15 downto 0);
    signal pctr: unsigned(3 downto 0);

begin

-- Source selector

    src_sel: entity work.tx_src_sel
        generic map(
            N_SRC => N_SRC
        )
        port map(
            clk => clk,
            rst => rst,
            d => d,
            src => src,
            valid => srcv,
            req => req
        );
    
    srci <= to_integer(unsigned(src));

-- Heartbeat packet

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                hb_ctr <= (others => '0');
                hb_seq <= (others => '0');
            else
                if mark = '1' then
                    if hb_go = '1' then
                        hb_ctr <= (others => '0');
                    else
                        hb_ctr <= hb_ctr + 1;
                    end if;
                end if;
                if hb_ack = '1' then
                    hb_seq <= hb_seq + 1;
                end if;
            end if;
        end if;
    end process;

    hb_go <= and_reduce(std_logic_vector(hb_ctr(HB_PERIOD_RDX downto 0)));
    hb_go_d <= hb_go when rising_edge(clk);
    hb_req <= (hb_req or (hb_go and not hb_go_d)) and not (rst or hb_ack) when rising_edge(clk);
    hdr_hb <= X"000" & std_logic_vector(hb_seq) & "000001" & IFACE_ID & "000000" & id & PROTO_VERSION; -- Might add some content later; CDC
    hb_ack <= '1' when state = ST_HB else '0';

-- DAQ header

    hdr <= d(srci).d(11 downto 0) & d(srci).d(23 downto 12) & "000000" & IFACE_ID & src & id & PROTO_VERSION; -- CDC

-- State machine

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state <= ST_INIT;
            else
                case state is
                when ST_INIT =>  -- Starting state
                    if timeout = '1' then
                        state <= ST_SEND;
                    elsif (srcv = '1' and unsigned(d(srci).d(11 downto 0)) > (lctr - 1) and content = '1') or (lctr = 0) then
                        state <= ST_SEND;
                    elsif hb_req = '1' then
                        state <= ST_HB;
                    elsif srcv = '1' and ready = '1' then
                        state <= ST_D_HDR;
                    end if;
                when ST_HB => -- Add heartbeat header
                    if ready = '1' then
                        state <= ST_INIT;
                    end if;
                when ST_D_HDR => -- Add data header
                    if ready = '1' then
                        state <= ST_D;
                    end if;
                when ST_D => -- Add data block
                    if lctr = 0 then
                        state <= ST_OFLOW;
                    elsif ready = '1' and d(srci).last = '1' then
                        state <= ST_INIT;
                    end if;
                when ST_OFLOW => -- Overflowed packet, error
                when ST_SEND => -- Send the packet
                    if ready = '1' then
                        state <= ST_PAUSE;
                    end if;
                when ST_PAUSE => -- Inter-packet delay for rate control.
                    if dctr = 0 then
                        state <= ST_INIT;
                    end if;
                end case;
            end if;
        end if;
    end process;

    sending <= '1' when state = ST_HB or state = ST_D_HDR or state = ST_D else '0';
    req <= '1' when state = ST_D and ready = '1' and d(srci).last = '1' else '0';

-- Packet send control

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' or (state = ST_SEND and ready = '1') then
                lctr <= to_unsigned(MAX_PKT_SIZE, lctr'length);
                content <= '0';
            elsif sending = '1' and ready = '1' then
                lctr <= lctr - 1;
                content <= '1';
            end if;
            if rst = '1' or sending = '1' then
                tctr <= (others => '0');
                timeout <= '0';
            else
                if mark = '1' and content = '1' then
                    tctr <= tctr + 1;
                end if;
                if tctr(MAX_LAT_RDX) = '1' then
                    timeout <= '1';
                end if;
            end if;
        end if;
    end process;   

-- Rate control

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                dctr <= (others => '0');
                pctr <= (others => '0');
            else
                if sending = '1' and ready = '1' then
                    if pctr = RATE_D then
                        pctr <= (others => '0');
                        if and_reduce(std_logic_vector(dctr)) = '0' then
                            dctr <= dctr + RATE_M;
                        end if;
                    else
                        pctr <= pctr + 1;
                    end if;
                elsif dctr /= 0 then
                    dctr <= dctr - 1;
                end if;
            end if;
        end if;
    end process;

-- Output interface

    with state select q.d <=
        hdr when ST_D_HDR,
        d(srci).d when ST_D,
        hdr_hb when others;

    q.valid <= sending;
    q.last <= '1' when state = ST_SEND else '0';

-- Source interface
    
    process(srci, ready, state)
    begin
        for i in N_SRC - 1 downto 0 loop
            if srci = i and (state = ST_D or state = ST_D_HDR) then
                re(i) <= ready;
            else
                re(i) <= '0';
            end if;
        end loop;
    end process;

-- Overflow flag

    oflow <= '1' when state = ST_OFLOW else '0';

end architecture rtl;
