-- pdts_ep_startup
--
-- The timing endpoint design
--
-- Dave Newbold, February 2017

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_ep_startup is
	generic(
		SCLK_FREQ: real;
		SIM: boolean := false;
		NEED_ADJUST: boolean := true;
		NEED_TSTAMP: boolean := true
	);
	port(
		sclk: in std_logic; -- Free-running system clock
		srst: in std_logic; -- System reset (sclk domain)
		stat: out std_logic_vector(3 downto 0); -- Status output (sclk domain)
--		sfp_los: in std_logic; -- SFP LOS line (async, sampled in sclk domain)
--		cdr_los: in std_logic; -- CDR LOS line (asnc, sampled in sclk domain)
--		cdr_lol: in std_logic; -- CDR LOL line (async, sampled in sclk domain)
		io_rdy: in std_logic;
		adj_req: in std_logic; -- Handshake with phase adjust block
		adj_ack: out std_logic;
		rec_clk: in std_logic; -- CDR recovered clock
		rec_rst: out std_logic; -- Reset out (rec_clk domain)
		rxphy_aligned: in std_logic; -- RX phy is aligned
		mclk: in std_logic; -- IO clock input
		clk: in std_logic; -- 50MHz clock input
		rxphy_rst: out std_logic; -- RX phy reset
		rxphy_locked: in std_logic; -- RX phy locked
		rst: out std_logic; -- 50MHz reset for endpoint logic
		ext_rst: out std_logic; -- 50MHz reset for external logic
		rx_err: in std_logic_vector(2 downto 0); -- RX decoder error status 
		tsrdy: in std_logic; -- Timestamp ready
		rdy: out std_logic; -- Output ready signal
		debug: out std_logic_vector(31 downto 0)
	);

end pdts_ep_startup;

architecture rtl of pdts_ep_startup is

	type state_t is (W_RST, W_LINK, W_FREQ, W_ADJUST, W_ALIGN, W_LOCK, W_PHASE, W_RDY, RUN, ERR_R, ERR_T, ERR_P);
	signal state: state_t;
	signal rctr: unsigned(7 downto 0);
	signal f_ok, t, td, f_en, adjusted, adj_ack_i: std_logic;
	signal sctr, cctr, cctr_rnd: unsigned(15 downto 0);
	signal link_bad, link_ok: std_logic;
	signal rxphy_aligned_i, rxphy_locked_i, rx_err_f, rx_err_i, tsrdy_i: std_logic;
	signal rec_rst_i, rxphy_rst_i, rst_i, rst_u, ext_rst_i: std_logic;

begin

	process(sclk)
	begin
		if rising_edge(sclk) then
			if srst = '1' then
				state <= W_RST;
			else
				case state is
				when W_RST =>
					state <= W_LINK;
-- Startup; wait for SFP signal
				when W_LINK =>
					if link_ok = '1' then
						state <= W_FREQ;
					end if;
-- Wait for frequency match
				when W_FREQ =>
					if link_ok = '0' then
						state <= W_LINK;
					elsif f_ok = '1' or SIM then
						state <= W_ADJUST;
					end if;
-- Wait for phase adjustment to complete & rxphy reset to complete
				when W_ADJUST =>
					if link_ok = '0' then
						state <= W_LINK;
					elsif rxphy_aligned_i = '0' and adj_req = '0' then
						state <= W_ALIGN;
					end if;
-- Wait for rxphy alignment
				when W_ALIGN =>
					if link_ok = '0' then
						state <= W_LINK;
					elsif rxphy_aligned_i = '1' then
						state <= W_LOCK;
					end if;
-- Wait for rxphy lock
				when W_LOCK =>
					if link_ok = '0' then
						state <= W_LINK;
					elsif rxphy_aligned_i = '0' then
						state <= W_ALIGN;
					elsif rxphy_locked_i = '1' then
						state <= W_PHASE;
					end if;
-- Wait for phase adjustment if needed
				when W_PHASE =>
					if adjusted = '1' or not NEED_ADJUST then
						state <= W_RDY;
					elsif link_ok = '0' or rxphy_aligned_i = '0' or rxphy_locked_i = '0' then
						state <= ERR_P;
					elsif rx_err_i = '1' then
						state <= ERR_R;
					elsif adj_req = '1' then
						state <= W_ADJUST;
					end if;
-- Wait for ready flag
				when W_RDY =>
					if not NEED_TSTAMP then
						state <= RUN;
					elsif link_ok = '0' or rxphy_aligned_i = '0' or rxphy_locked_i = '0' then
						state <= ERR_P;
					elsif rx_err_i = '1' then
						state <= ERR_R;
					elsif adj_req = '1' then
						state <= W_ADJUST;
					elsif tsrdy_i = '1' then
						state <= RUN;
					end if;
-- Running state
				when RUN =>
					if link_ok = '0' or rxphy_aligned_i = '0' or rxphy_locked_i = '0' then
						state <= ERR_P;
					elsif rx_err_i = '1' then
						state <= ERR_R;
					elsif tsrdy_i = '0' and NEED_TSTAMP then
						state <= ERR_T;
					elsif adj_req = '1' then
						state <= W_ADJUST;
					end if;
-- Error states. Doomed.
				when ERR_R => -- Protocol error
				when ERR_T => -- Timestamp error
				when ERR_P => -- Physical layer error
				end case;
			end if;
		end if;
	end process;
	
-- Phase adjust flag

	process(sclk)
	begin
		if rising_edge(sclk) then
			if srst = '1' then
				adjusted <= '0';
			elsif state = W_ADJUST and adj_req = '1' then
				adjusted <= '1';
			end if;
		end if;
	end process;

	adj_ack_i <= adj_req when state = W_ADJUST else '0';
	
	adel: entity work.pdts_del
		port map(
			clk => sclk,
			a => "00100", -- Delay ack by a few cycles to allow external logic to go into reset
			d(0) => adj_ack_i,
			q(0) => adj_ack
		);

-- Freq check

	sync_c: entity work.pdts_synchro
		generic map(
			N => 1
		)
		port map(
			clk => sclk,
			clks => mclk,
			d(0) => link_ok,
			q(0) => f_en
		);

	process(mclk) -- Predivide by 256
	begin
		if rising_edge(mclk) then
			if f_en = '0' then
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
			clk => mclk,
			clks => sclk,
			d(0) => rctr(7),
			q(0) => t
		);

	process(sclk)
	begin
		if rising_edge(sclk) then
			td <= t;
			if srst = '1' then
				sctr <= (others => '0');
				cctr <= (others => '0');
				cctr_rnd <= (others => '0');
			else
				sctr <= sctr + 1;
				if sctr = X"ffff" then
					cctr_rnd <= cctr;
					cctr <= (others => '0');
				elsif t = '1' and td = '0' then
					cctr <= cctr + 1;
				end if;
			end if;
		end if;
	end process;
	
	f_ok <= '1' when cctr_rnd = to_unsigned(integer(CLK_FREQ * real(SCLK_RATIO) * 256.0 / real(SCLK_FREQ)), 16) else '0';
	
-- External signal debounce	

--	link_bad <= cdr_los or cdr_lol or sfp_los;
	link_bad <= not io_rdy;

	chk: entity work.pdts_chklock
		generic map(
			N => 1
		)
		port map(
			clk => sclk,
			rst => srst,
			los(0) => link_bad,
			ok(0) => link_ok
		);

-- CDC into sclk domain

	process(clk)
	begin
		if rising_edge(clk) then
			if rst_u = '1' then
				rx_err_f <= '0';
			elsif rx_err /= "000" then
				rx_err_f <= '1';
			end if;
		end if;
	end process;

	sync_sclk: entity work.pdts_synchro
		generic map(
			N => 4
		)
		port map(
			clk => clk,
			clks => sclk,
			d(0) => rxphy_aligned,
			d(1) => rxphy_locked,
			d(2) => rx_err_f,
			d(3) => tsrdy,
			q(0) => rxphy_aligned_i,
			q(1) => rxphy_locked_i,
			q(2) => rx_err_i,
			q(3) => tsrdy_i
		);

-- Resets

	rec_rst_i <= '1' when state = W_RST or state = W_LINK or state = W_FREQ or state = W_ADJUST else '0';
	rxphy_rst_i <= '1' when rec_rst_i = '1' or state = W_ALIGN else '0';
	rst_i <= '1' when rxphy_rst_i = '1' or state = W_LOCK else '0';
	ext_rst_i <= '1' when rst_i = '1' or state = W_PHASE else '0';
	rdy <= '1' when state = RUN else '0';

-- CDC into clk domain
		
	sync_clk: entity work.pdts_synchro
		generic map(
			N => 4
		)
		port map(
			clk => sclk,
			clks => clk,
			d(0) => rec_rst_i,
			d(1) => rxphy_rst_i,
			d(2) => rst_i,
			d(3) => ext_rst_i,
			q(0) => rec_rst,
			q(1) => rxphy_rst,
			q(2) => rst_u,
			q(3) => ext_rst
		);
		
	rst <= rst_u;

-- State output

	with state select stat <=
		"0000" when W_RST, -- Starting state after reset
		"0001" when W_LINK, -- Waiting for SFP LOS to go low
		"0010" when W_FREQ, -- Waiting for good frequency check
		"0011" when W_ADJUST, -- Waiting for phase adjustment to complete
		"0100" when W_ALIGN, -- Waiting for comma alignment, stable 50MHz phase
		"0101" when W_LOCK, -- Waiting for 8b10 decoder good packet
		"0110" when W_PHASE, -- Waiting for phase adjustment command
		"0111" when W_RDY, -- Waiting for time stamp initialisation
		"1000" when RUN, -- Good to go
		"1100" when ERR_R, -- Error in rx
		"1101" when ERR_T, -- Error in time stamp check
		"1110" when ERR_P; -- Physical layer error after lock
		
	debug <= std_logic_vector(cctr_rnd) & X"00" & rxphy_aligned_i & rxphy_locked_i & rx_err_i & tsrdy_i & link_bad & link_ok & f_ok & srst;

end rtl;
