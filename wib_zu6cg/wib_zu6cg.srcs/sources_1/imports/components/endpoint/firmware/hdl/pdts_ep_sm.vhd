-- pdts_ep_sm
--
-- The timing endpoint master state machine
--
-- Dave Newbold, January 2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;
use work.pdts_clock_defs.all;

entity pdts_ep_sm is
	generic(
		SCLK_FREQ: real;
		SKIP_FREQ: boolean;
		SKIP_TSTAMP: boolean -- Skip the timestamp initialisation step
	);
	port(
		sys_clk: in std_logic; -- Free-running system clock
		sys_rst: in std_logic; -- System reset (sys_clk domain)
		clk: in std_logic; -- Base clock input
		rst: in std_logic; -- Base clock domain reset
		cdr_rst: out std_logic; -- CDR reset (clk domain)
		cdr_locked: in std_logic; -- CDR status (clk domain)
		rx_en: out std_logic; -- RX enable signal (clk domain)
		rx_rdy: in std_logic; -- RX block ready signal (clk domain)
		addr_done: in std_logic; -- Address set flag (clk domain)
		deskew_done: in std_logic; -- Deskew set flag (clk domain)
		pkt_err: in std_logic; -- Packet processing error flag (clk domain)
		resync: in std_logic; -- Resync request (clk domain)
		reset: in std_logic; -- Hard reset (clk domain)
		reg_rst: out std_logic; -- Register file reset (clk domain)
		tsrdy: in std_logic; -- Timestamp ready (clk domain)
		ready: out std_logic; -- Output ready signal (clk domain)
		stat: out std_logic_vector(3 downto 0) -- Status output (sys_clk domain)
	);

end pdts_ep_sm;

architecture rtl of pdts_ep_sm is

	type state_t is (ST_RESET, ST_W_CLK, ST_W_FREQ, ST_W_CDR, ST_W_RX, ST_W_ADDR, ST_W_DESKEW, ST_W_TS, ST_READY, ST_ERR_P, ST_ERR_R, ST_ERR_T, ST_ERR_X);
	signal state: state_t;
	signal reset_i, resync_i, clk_ok, f_ok, cdr_ok, rx_ok, ts_ok, pkt_err_i: std_logic;
	signal clk_lock, t, td: std_logic;
	signal rctr: unsigned(7 downto 0);
	signal sctr, cctr: unsigned(15 downto 0);
	signal rdy, rx_en_i, srst_i, srst: std_logic;

	attribute MARK_DEBUG: string;
	attribute MARK_DEBUG of state, resync_i, reset_i, clk_ok, cdr_ok, rx_ok, ts_ok, pkt_err_i, rdy, rx_en_i, srst_i: signal is "TRUE";

begin

	process(sys_clk)
	begin
		if rising_edge(sys_clk) then
			if sys_rst = '1' or reset_i = '1' then
				state <= ST_RESET;
			else
				case state is
				when ST_RESET =>
					state <= ST_W_CLK;
-- Wait for internal PLL lock
				when ST_W_CLK =>
					if clk_ok = '1' then
						state <= ST_W_FREQ;
					end if;					
-- Wait for frequency match
				when ST_W_FREQ =>
					if clk_ok = '0' then
						state <= ST_W_CLK;
					elsif f_ok = '1' or SKIP_FREQ then
						state <= ST_W_CDR;
					end if;
-- Wait for CDR to clock
				when ST_W_CDR =>
					if clk_ok = '0' then
						state <= ST_W_CLK;
					elsif cdr_ok = '1' then
						state <= ST_W_RX;
					end if;
-- Wait for RX block to lock - after this point we go to error if there are problems
				when ST_W_RX =>
					if clk_ok = '0' or cdr_ok = '0' then
						state <= ST_W_CLK;
					elsif rx_ok = '1' then
						state <= ST_W_ADDR;
					end if;
-- Wait for address to be set
				when ST_W_ADDR =>
					if clk_ok = '0' or cdr_ok = '0' then
						state <= ST_ERR_P;
					elsif rx_ok = '0' then
						state <= ST_ERR_R;
					elsif addr_done = '1' then
						if deskew_done = '1' then
							state <= ST_W_TS;
						else
							state <= ST_W_DESKEW;
						end if;
					end if;
-- Wait for phase adjustment; can leave this state only through a resync
				when ST_W_DESKEW =>
					if resync_i = '1' then
						state <= ST_W_RX;
					elsif clk_ok = '0' or cdr_ok = '0' then
						state <= ST_ERR_P;
					elsif rx_ok = '0' then
						state <= ST_ERR_R;
					end if;
-- Wait for timestamp
				when ST_W_TS =>
					if resync_i = '1' then
						state <= ST_W_RX;
					elsif clk_ok = '0' or cdr_ok = '0' then
						state <= ST_ERR_P;
					elsif rx_ok = '0' then
						state <= ST_ERR_R;
					elsif ts_ok = '1' then
						state <= ST_READY;
					end if;
-- Running
				when ST_READY =>
					if resync_i = '1' then
						state <= ST_W_RX;
					elsif clk_ok = '0' or cdr_ok = '0' then
						state <= ST_ERR_P;
					elsif rx_ok = '0' then
						state <= ST_ERR_R;
					elsif ts_ok = '0' and not SKIP_TSTAMP then
						state <= ST_ERR_T;
					elsif pkt_err_i = '1' then
						state <= ST_ERR_X;
					end if;
-- Error state
				when ST_ERR_P | ST_ERR_R | ST_ERR_T | ST_ERR_X =>
					if resync_i = '1' then
						state <= ST_W_RX;
					end if;
				end case;
			end if;
		end if;
	end process;

-- Status signals into sclk domain

	clk_lock <= not rst;

	sync_sys_clk: entity work.pdts_synchro
		generic map(
			N => 5
		)
		port map(
			clk => clk,
			clks => sys_clk,
			d(0) => clk_lock,
			d(1) => cdr_locked,
			d(2) => rx_rdy,
			d(3) => tsrdy,
			d(4) => pkt_err,
			q(0) => clk_ok,
			q(1) => cdr_ok,
			q(2) => rx_ok,
			q(3) => ts_ok,
			q(4) => pkt_err_i
		);

	sync_sys_clk_p: entity work.pdts_synchro_pulse
		generic map(
			N => 2
		)
		port map(
			clk => clk,
			rst => rst,
			clks => sys_clk,
			d(0) => resync,
			d(1) => reset,
			q(0) => resync_i,
			q(1) => reset_i
		);

-- Freq check

	process(clk) -- Predivide base clock by 256
	begin
		if rising_edge(clk) then
			if rst = '1' then
				rctr <= X"80"; -- Start with a half-count for rounding purposes
			else
				rctr <= rctr + 1;
			end if;
		end if;
	end process;
	
	sync_t: entity work.pdts_synchro
		generic map(
			N => 1
		)
		port map(
			clk => clk,
			clks => sys_clk,
			d(0) => rctr(7),
			q(0) => t
		);

	process(sys_clk)
	begin
		if rising_edge(sys_clk) then
			td <= t;
			if state /= ST_W_FREQ then
				sctr <= (others => '0');
				cctr <= (others => '0');
				f_ok <= '0';
			else
				sctr <= sctr + 1;
				if and_reduce(std_logic_vector(sctr)) = '1' then
					if cctr = to_unsigned(integer((CLK_FREQ / SCLK_FREQ) * 256.0), 16) then
						f_ok <= '1';
					end if;
					cctr <= (others => '0');
				elsif t = '1' and td = '0' then
					cctr <= cctr + 1;
				end if;
			end if;
		end if;
	end process;

-- State output

	with state select stat <=
		"0000" when ST_RESET, -- Endpoint in in reset
		"0001" when ST_W_CLK, -- Waiting for input clock
		"0010" when ST_W_FREQ, -- Waiting for frequency check
		"0011" when ST_W_CDR, -- Waiting for internal CDR to lock
		"0100" when ST_W_RX, -- Waiting for rx block to lock
		"0101" when ST_W_ADDR, -- Waiting for address to be set
		"0110" when ST_W_DESKEW, -- Waiting for deskew to be set
		"0111" when ST_W_TS, -- Waiting for timestamp initialisation
		"1000" when ST_READY, -- Good to go
		"1100" when ST_ERR_P, -- Error in physical layer
		"1101" when ST_ERR_R, -- Receive error
		"1110" when ST_ERR_T, -- Time check error
		"1111" when ST_ERR_X; -- Protocol error

	rdy <= '1' when state = ST_READY else '0';
	rx_en_i <= '0' when state = ST_RESET or state = ST_W_CLK or state = ST_W_FREQ or state = ST_W_CDR else '1';
	srst_i <= '1' when state = ST_RESET or state = ST_W_CLK else '0';
	
	sync_clk: entity work.pdts_synchro
		generic map(
			N => 3
		)
		port map(
			clk => sys_clk,
			clks => clk,
			d(0) => rdy,
			d(1) => rx_en_i,
			d(2) => srst_i,
			q(0) => ready,
			q(1) => rx_en,
			q(2) => srst
		);

	cdr_rst <= srst;
	reg_rst <= srst;

end rtl;
