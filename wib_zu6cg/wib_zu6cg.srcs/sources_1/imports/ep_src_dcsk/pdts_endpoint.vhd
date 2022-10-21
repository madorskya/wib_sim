-- pdts_endpoint
--
-- The timing endpoint design - version 2
--
-- Dave Newbold, January 2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_defs.all;
use work.pdts_ep_defs.all;
use work.pdts_clock_defs.all;

entity pdts_endpoint is
	generic(
		SCLK_FREQ: real; -- Frequency (MHz) of the system clock
		USE_EXT_PLL: boolean := false; -- Use external PLL or clock source
		EXT_PLL_DIV: positive := 2; -- External PLL division ratio
		FORCE_TX: boolean := false; -- Turn on transmit permanently
		SKIP_FREQ: boolean := false; -- Skip the frequency check step (e.g. for simulation)
		EXT_ADDR: boolean := true; -- Skip the address setting step
		SKIP_DESKEW: boolean := false; -- Skip the phase adjustment step
		SKIP_TSTAMP: boolean := false -- Skip the timestamp initialisation step
	);
	port(
		sys_clk: in std_logic; -- System clock
		sys_rst: in std_logic; -- System reset (sclk domain)
		sys_addr: in std_logic_vector(15 downto 0) := X"FFF0"; -- Address of the endpoint until overridden via control bus
--		sys_ctrl_in: in pdts_cmo := PDTS_CMO_NULL; -- System control bus (sclk domain)
--		sys_ctrl_out: out pdts_cmi;
		sys_stat: out std_logic_vector(3 downto 0); -- Status output (sclk domain)
		ctrl_out: out pdts_cmo; -- Control bus (clk domain)
		ctrl_in: in pdts_cmi := PDTS_CMI_NULL;
		pll_clko: out std_logic; -- Clock to external PLL
		pll_clki: in std_logic := '0'; -- Externally produced clock
		los: in std_logic := '0'; -- External signal path status (async)
		rxd: in std_logic; -- Timing input (clk domain)
		txd: out std_logic; -- Timing output (clk domain)
		txenb: out std_logic; -- Timing output enable (active low for SFP) (clk domain)
		clk: out std_logic; -- Base clock output
		rst: out std_logic; -- Base clock reset (clk domain)
		clk2x: out std_logic; -- 2x clock output
		clk4x: out std_logic; -- 4x clock output
		ready: out std_logic; -- Endpoint ready flag (clk domain)
		tstamp: out std_logic_vector(63 downto 0); -- Timestamp (clk domain)
		sync: out std_logic_vector(7 downto 0); -- Sync command output (clk domain)
		sync_stb: out std_logic -- Sync command strobe (clk domain)
	);

end pdts_endpoint;

architecture rtl of pdts_endpoint is

	signal cdr_rst, clk_sel, clki, clk4xi, clk2xi, d, cdr_locked, rsti, q: std_logic;
	signal phase: std_logic_vector(11 downto 0);
	signal phase_done: std_logic;

begin

-- Clock / data recovery

	rxcdr: entity work.pdts_ep_cdr
		generic map(
			USE_EXT_PLL => USE_EXT_PLL,
			EXT_PLL_DIV => EXT_PLL_DIV
		)
		port map(
			d => rxd,
			rclko => pll_clko,
			rclki => pll_clki,
			clko => clki,
			clko4x => clk4xi,
			clko2x => clk2xi,
			rsto => rsti,
			q => d,
			locked => cdr_locked,
			phase => phase,
			phase_done => phase_done,
			dbg => open
		);
		
	clk <= clki;
	rst <= rsti;
	clk4x <= clk4xi;
	clk2x <= clk2xi; -- Needed to ensure identical delta delays on clock multiples

-- Endpoint core

	ep: entity work.pdts_ep_core
		generic map(
			SCLK_FREQ => SCLK_FREQ,
			FORCE_TX => FORCE_TX,
			SKIP_FREQ => SKIP_FREQ,
			EXT_ADDR => EXT_ADDR,
			SKIP_DESKEW => SKIP_DESKEW,
			SKIP_TSTAMP => SKIP_TSTAMP
		)
		port map(
			sys_clk => sys_clk,
			sys_rst => sys_rst,
			sys_addr => sys_addr,
--			sys_ctrl_in => sys_ctrl_in,
--			sys_ctrl_out => sys_ctrl_out,
			sys_stat => sys_stat,
			ctrl_out => open,
			ctrl_in => PDTS_CMI_NULL,
			clk => clki,
			rst => rsti,
			phase => phase,
			phase_done => phase_done,
			locked => cdr_locked,
			d => d,
			q => q,
			txenb => txenb,
			ready => ready,
			tstamp => tstamp,
			sync => sync,
			sync_stb => sync_stb
		);

-- Modulator

	txmod: entity work.pdts_mod
		port map(
			clk4x => clk4xi,
			rst => rsti,
			d => q,
			q => txd
		);

end rtl;
