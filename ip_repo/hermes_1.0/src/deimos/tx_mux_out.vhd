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

library ipbus;
use ipbus.ipbus.all;
use ipbus.ipbus_reg_types.all;

use work.tx_mux_decl.all;

entity tx_mux_out is
    generic(
        N_SRC: positive;
        IFACE_ID: integer
    );    
    port(
        ipb_clk: in std_logic;
        ipb_rst: in std_logic;
        ipb_in: in ipb_wbus;
        ipb_out: out ipb_rbus;
        clk: in std_logic; -- Ethernet clock
        rst: in std_logic; -- Sync reset (clk)
        en: in std_logic; -- Enable packet transmission
        d: in src_d_array(N_SRC - 1 downto 0); -- Data input from buffers (clk)
        re: out std_logic_vector(N_SRC - 1 downto 0); -- Read enable to buffers (clk)
        q: out src_d; -- Packet data output to ethernet block (clk)
        ready: in std_logic; -- Ethernet block ready (clk)
        mark: in std_logic; -- Timeslice marker (clk)
        err: out std_logic
    );

end entity tx_mux_out;

architecture rtl of tx_mux_out is

    constant IFACE: std_logic_vector(1 downto 0) := std_logic_vector(to_unsigned(IFACE_ID, 2));

	signal ctrl, stat: ipb_reg_v(0 downto 0);
    signal ctrl_id: std_logic_vector(19 downto 0);
    signal src: std_logic_vector(5 downto 0);
    signal srcv, req: std_logic;
    signal srci: integer range N_SRC - 1 downto 0 := 0;
    signal hdr_hb, hdr, q_swap: std_logic_vector(63 downto 0);
    signal hb_seq: unsigned(11 downto 0);
    type state_t is (ST_INIT, ST_D_HDR, ST_D, ST_OFLOW, ST_HB, ST_SEND, ST_PAUSE);
    signal state: state_t;
    signal sending, tos, tol, content: std_logic;
    signal lctr: unsigned(11 downto 0);
    signal tctr: unsigned(23 downto 0);
    signal dctr: unsigned(15 downto 0);
    signal pctr: unsigned(3 downto 0);
    signal oflow: std_logic;
    
--    attribute mark_debug: boolean;
--    attribute mark_debug of state, q, ready, d, tctr, tos, tol, sending, content: signal is true;

begin

    csr: entity ipbus.ipbus_ctrlreg_v
        generic map(
            N_CTRL => 1,
            N_STAT => 1
        )
        port map(
            clk => ipb_clk,
            reset => ipb_rst,
            ipbus_in => ipb_in,
            ipbus_out => ipb_out,
            d => stat,
			q => ctrl
        );

    ctrl_id <= ctrl(0)(19 downto 0);
    stat(0) <= X"00000" & std_logic_vector(to_unsigned(state_t'pos(state), 4)) & X"0" & "000" & oflow;

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

-- State machine

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                state <= ST_INIT;
            else
                case state is
                when ST_INIT =>  -- Starting state
                    if en = '1' then
                        if tos = '1' then
                            state <= ST_SEND;
                        elsif tol = '1' then
                            state <= ST_HB;
                        elsif (srcv = '1' and unsigned(d(srci).d(11 downto 0)) > (lctr - 1) and content = '1') or (lctr = 0) then
                            state <= ST_SEND;
                        elsif srcv = '1' and ready = '1' then
                            state <= ST_D_HDR;
                        end if;
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
                when ST_HB => -- Add heartbeat header
                    if ready = '1' then
                        state <= ST_SEND;
                    end if;
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
            if rst = '1' or sending = '1' or state = ST_SEND then
                tctr <= (others => '0');
                tos <= '0';
                tol <= '0';
            else
                if mark = '1' then
                    tctr <= tctr + 1;
                end if;
                if content = '1' and tctr(MAX_LAT_RDX) = '1' then
                    tos <= '1';
                elsif tctr(HBEAT_RDX) = '1' then
                    tol <= '1';
                end if;
            end if;
        end if;
    end process;  
    
-- Heartbeat counter

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                hb_seq <= (others => '0');
            elsif tol = '1' then
                hb_seq <= hb_seq + 1;
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

    hdr    <= d(srci).d(11 downto 0) & d(srci).d(23 downto 12)  & "000000" & IFACE & src      & ctrl_id & PROTO_VERSION; -- CDC (static levels)
    hdr_hb <= X"000"                 & std_logic_vector(hb_seq) & "000001" & IFACE & "000000" & ctrl_id & PROTO_VERSION; -- CDC (static levels)

    with state select q_swap <=
        hdr when ST_D_HDR,
        d(srci).d when ST_D,
        hdr_hb when others;

--    q.d <= q_swap(7 downto 0) & q_swap(15 downto 8) & q_swap(23 downto 16) & q_swap(31 downto 24) &
--        q_swap(39 downto 32) & q_swap(47 downto 40) & q_swap(55 downto 48) & q_swap(63 downto 56); -- This is why we can't have nice things

    q.d <= q_swap;
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
    err <= oflow;

end architecture rtl;
