-- tx_mux_ibuf
--
-- Multiplexes data blocks from multiple sources onto ethernet UDP packet stream
--
-- This contains the input FIFO and state machines to control data flow
--
-- Dave Newbold, 18/10/22

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library xpm;
use xpm.vcomponents.all;

library ipbus;
use work.ipbus.all;
use work.ipbus_reg_types.all;

use work.tx_mux_decl.all;

entity tx_mux_ibuf is
    port(
        ipb_clk: in std_logic;
        ipb_rst: in std_logic;
        ipb_in: in  ipb_wbus;
        ipb_out: out ipb_rbus;
        src_clk: in std_logic; -- DUNE base clock
        src_rst: in std_logic; -- DUNE base clock sync reset (src_clk)
        d: in src_d; -- Data from sources (src_clk)
        samp: in std_logic; -- Counter sample strobe (src_clk)
        eth_clk: in std_logic; -- Output clock (156.25MHz / 250MHz)
        eth_rst: in std_logic; -- Output clock sync reset (eth_clk)
        re: in std_logic; -- Read enable (eth_clk)
        q: out src_d; -- Data to mux (eth_clk)
        err: out std_logic -- Error flag (eth_clk)
    );

end entity tx_mux_ibuf;

architecture rtl of tx_mux_ibuf is

    type rx_state_t is (ST_INIT, ST_DISC, ST_RUN);
    signal rx_state: rx_state_t;
    signal lfifo_busy_rx, fifo_busy_rx, lfifo_full, fifo_full, lfifo_we, fifo_we: std_logic;
    signal rx_run: std_logic;
    signal rx_ctr: unsigned(11 downto 0);
    signal wfull: std_logic;
    signal lfifo_d, lfifo_q: std_logic_vector(12 downto 0);
    signal fifo_q: std_logic_vector(63 downto 0);
    signal lfifo_c, fifo_c, fifo_cw: std_logic_vector(7 downto 0);
    signal lfifo_valid, fifo_valid, lfifo_busy_tx, fifo_busy_tx: std_logic;
    type tx_state_t is (ST_INIT, ST_WAIT, ST_SEND, ST_DISC, ST_ERR);
    signal tx_state: tx_state_t;
    signal txw, last: std_logic;
    signal tx_ctr, tx_seq: unsigned(11 downto 0);
    signal stat: ipb_reg_v(9 downto 0);
    signal hwm, lwm, lhwm, llwm: std_logic_vector(7 downto 0);
    signal cts: std_logic_vector(63 downto 0);
    signal first, tinc, rinc: std_logic;
    signal vctr, tctr, rctr: unsigned(63 downto 0);

    COMPONENT ila_mux
    
    PORT (
        clk : IN STD_LOGIC;
        probe0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
    END COMPONENT  ;

begin

-- Input SM

    wfull <= d.valid and fifo_full;

    process(src_clk)
    begin
        if rising_edge(src_clk) then
            if src_rst = '1' then
                rx_state <= ST_INIT;
            else
                case rx_state is
                when ST_INIT =>  -- Starting state
                    if fifo_busy_rx = '0' and lfifo_busy_rx = '0' then
                        rx_state <= ST_DISC;
                    end if;
                when ST_DISC => -- Discard packets
                    if d.last = '1' and fifo_full = '0' and lfifo_full = '0' then
                        rx_state <= ST_RUN;
                    end if;
                when ST_RUN => -- Operating
                    if lfifo_full = '1' or wfull = '1' then 
                        rx_state <= ST_DISC;
                    end if;
                end case;
            end if;
        end if;
    end process;

    rx_run <= '1' when rx_state = ST_RUN else '0';

-- Length buffer

    process(src_clk)
    begin
        if rising_edge(src_clk) then
            if d.last = '1' then
                rx_ctr <= to_unsigned(1, rx_ctr'length);
            elsif fifo_we = '1' then
                rx_ctr <= rx_ctr + 1;
            end if;
        end if;
    end process;

    lfifo_we <= rx_run and (d.last or wfull);
    lfifo_d <= wfull & std_logic_vector(rx_ctr);

    lfifo: xpm_fifo_async
        generic map(
            FIFO_MEMORY_TYPE => "distributed",
            FIFO_READ_LATENCY => 0,
            FIFO_WRITE_DEPTH => LBUF_DEPTH,
            WR_DATA_COUNT_WIDTH => LBUF_C_W,
            READ_DATA_WIDTH => 13,
            READ_MODE => "fwft",
            SIM_ASSERT_CHK => 1,
            USE_ADV_FEATURES => "1004",
            WRITE_DATA_WIDTH => 13
        )
        port map(
            data_valid => lfifo_valid,
            dout => lfifo_q,
            full => lfifo_full,
            wr_data_count => lfifo_c(LBUF_C_W - 1 downto 0),
            rd_rst_busy => lfifo_busy_tx,
            wr_rst_busy => lfifo_busy_rx,
            din => lfifo_d,
            injectdbiterr => '0',
            injectsbiterr => '0',
            rd_clk => eth_clk,
            rd_en => last,
            rst => src_rst,
            sleep => '0',
            wr_clk => src_clk,
            wr_en => lfifo_we
        );

    lfifo_c(7 downto LBUF_C_W) <= (others => '0');

-- Main buffer

    fifo_we <= d.valid and rx_run and not wfull;

    fifo: xpm_fifo_async
        generic map(
            FIFO_MEMORY_TYPE => "block",
            FIFO_READ_LATENCY => 0,
            FIFO_WRITE_DEPTH => DBUF_DEPTH,
            PROG_FULL_THRESH => 16,
            RD_DATA_COUNT_WIDTH => 8,
            WR_DATA_COUNT_WIDTH => 8,
            READ_DATA_WIDTH => 64,
            READ_MODE => "fwft",
            SIM_ASSERT_CHK => 1,
            USE_ADV_FEATURES => "1404",
            WRITE_DATA_WIDTH => 64
        )
        port map(
            data_valid => fifo_valid,
            dout => fifo_q,
            full => fifo_full,
            rd_data_count => fifo_cw,
            wr_data_count => fifo_c,
            rd_rst_busy => fifo_busy_tx,
            wr_rst_busy => fifo_busy_rx,
            din => d.d,
            injectdbiterr => '0',
            injectsbiterr => '0',
            rd_clk => eth_clk,
            rd_en => txw,
            rst => src_rst,
            sleep => '0',
            wr_clk => src_clk,
            wr_en => fifo_we
        );

        ila_fifo : ila_mux
        PORT MAP (
            clk    => src_clk,
            probe0 => fifo_c, 
            probe1 => d.d, 
            probe2(0) => src_rst,
            probe3(0) => fifo_we
        );


-- Monitoring

    csr: entity work.ipbus_ctrlreg_v
        generic map(
            N_CTRL => 0,
            N_STAT => 10
        )
        port map(
            clk => ipb_clk,
            reset => ipb_rst,
            ipbus_in => ipb_in,
            ipbus_out => ipb_out,
            d => stat
        );

    stat(0) <= X"000000" & std_logic_vector(to_unsigned(tx_state_t'pos(tx_state), 4)) &
        std_logic_vector(to_unsigned(rx_state_t'pos(rx_state), 4)); -- CDC, static levels

-- HWM / LWM for FIFOs

    process(src_clk)
    begin
        if rising_edge(src_clk) then
            if src_rst = '1' or samp = '1' then
                hwm <= fifo_c;
                lwm <= fifo_c;
                lhwm <= lfifo_c;
                llwm <= lfifo_c;
            end if;
            if samp = '1' then
                stat(1) <= lhwm & llwm & hwm & lwm;
            end if;
        end if;
    end process;

-- Most recent timestamp

    process(src_clk)
    begin
        if rising_edge(src_clk) then
            if rx_run = '0' or d.last = '1' then
                first <= '1';
            elsif fifo_we = '1' and first = '1' then
                cts <= d.d;
                first <= '0';
            end if;
        end if;
    end process;

    stat(2) <= cts(31 downto 0) when samp = '1' and rising_edge(src_clk);
    stat(3) <= cts(63 downto 32) when samp = '1' and rising_edge(src_clk);

-- Monitoring counters

    tinc <= d.last and rx_run;
    rinc <= (d.last and not rx_run) or wfull;

    process(src_clk)
    begin
        if rising_edge(src_clk) then
            if src_rst = '1' then
                vctr <= (others => '0');               
                tctr <= (others => '0');
                rctr <= (others => '0');
            elsif samp = '1' then
                stat(9 downto 4) <= (std_logic_vector(rctr(63 downto 32)), std_logic_vector(rctr(31 downto 0)),
                    std_logic_vector(tctr(63 downto 32)), std_logic_vector(tctr(31 downto 0)),
                    std_logic_vector(vctr(63 downto 32)), std_logic_vector(vctr(31 downto 0)));
                if tinc = '0' then
                    vctr <= (others => '0');
                    tctr <= (others => '0');
                else
--                    vctr <= (rx_ctr'length - 1 downto 0 => rx_ctr, others => '0');
                    vctr(rx_ctr'length - 1 downto 0) <= rx_ctr;
                    vctr(vctr'length-1 downto rx_ctr'length) <= (others => '0');
                    tctr <= to_unsigned(1, tctr'length);
                end if;
                if rinc = '0' then
                    rctr <= (others => '0');
                else
                    rctr <= to_unsigned(1, rctr'length);
                end if;
            else
                if tinc = '1' then
                    vctr <= vctr + rx_ctr;
                    tctr <= tctr + 1;
                end if;
                if rinc = '1' then
                    rctr <= rctr + 1;
                end if;
            end if;
        end if;
    end process;

-- Output SM

    process(eth_clk)
    begin
        if rising_edge(eth_clk) then
            if eth_rst = '1' then
                tx_state <= ST_INIT;
            else
                case tx_state is
                when ST_INIT => -- Starting state
                    if fifo_busy_tx = '0' and lfifo_busy_tx = '0' then
                        tx_state <= ST_WAIT;
                    end if;
                when ST_WAIT =>
                    if lfifo_valid = '1' then
                        if lfifo_q(12) = '0' then -- Full block
                            if re = '1' then
                                tx_state <= ST_SEND;
                            end if;
                        else -- Truncated block
                            tx_state <= ST_DISC;
                        end if;
                    end if;
                when ST_SEND | ST_DISC => -- Sending or discarding top block
                    if fifo_valid = '0' then
                        tx_state <= ST_ERR;
                    elsif last = '1' then
                        tx_state <= ST_WAIT;
                    end if;
                when ST_ERR => -- Error, oops
                end case;
            end if;
        end if;
    end process;

    txw <= '1' when (tx_state = ST_SEND and re = '1') or tx_state = ST_DISC else '0';
    last <= '1' when txw = '1' and tx_ctr = 1 else '0';

-- Output counters

    process(eth_clk)
    begin
        if rising_edge(eth_clk) then
            if eth_rst = '1' then
                tx_ctr <= (others => '0');
                tx_seq <= (others => '0');
            else
                if tx_state = ST_WAIT and lfifo_valid = '1' then
                    tx_ctr <= unsigned(lfifo_q(11 downto 0));
                elsif txw = '1' then
                    tx_ctr <= tx_ctr - 1;
                end if;
                if last = '1' and tx_state = ST_SEND then
                    tx_seq <= tx_seq + 1;
                end if;
            end if;
        end if;
    end process;

-- Output interface

    q.d <= fifo_q when tx_state = ST_SEND else X"00000000" & fifo_cw & std_logic_vector(tx_seq) & lfifo_q(11 downto 0);
    q.valid <= '1' when (tx_state = ST_WAIT and lfifo_valid = '1' and lfifo_q(12) = '0') or tx_state = ST_SEND else '0';
    q.last <= '1' when tx_state = ST_SEND and tx_ctr = 1 else '0';
    err <= '1' when tx_state = ST_ERR else '0';

end architecture rtl;
