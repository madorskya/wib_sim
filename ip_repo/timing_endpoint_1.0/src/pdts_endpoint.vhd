-- pdts_endpoint
--
-- The timing endpoint design
--
-- Dave Newbold, February 2017

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_defs.all;

entity pdts_endpoint is
	generic(
		SCLK_FREQ: real := 50.0
	);
	port(
		sclk: in std_logic; -- Free-running system clock
		srst: in std_logic; -- System reset (sclk domain)
		addr: in std_logic_vector(7 downto 0); -- Endpoint address (async, sampled in clk domain)
		tgrp: in std_logic_vector(1 downto 0); -- Timing group (async, sampled in clk domain)
		stat: out std_logic_vector(3 downto 0); -- Status output (sclk domain)

		rec_clk: in std_logic; -- CDR recovered 50Mhz clock
                rec_d_clk : in std_logic; -- CDR recovered 250Mhz clock
		rec_d: in std_logic; -- CDR recovered data (rec_d_clk domain)
                rec_clk_locked : in std_logic; -- recovered clock locked
                rec_clk_reset : out std_logic; -- reset of SI5344

		sfp_los: in std_logic; -- SFP LOS line (async, sampled in sclk domain)
		cdr_los: in std_logic; -- CDR LOS line (async, sampled in sclk domain)
		cdr_lol: in std_logic; -- CDR LOL line (async, sampled in sclk domain)
		clk: out std_logic; -- 50MHz clock output
		rst: out std_logic; -- 50MHz domain reset
		rdy: out std_logic; -- Timestamp valid flag
		sync: out std_logic_vector(SCMD_W - 1 downto 0); -- Sync command output (clk domain)
		sync_v: out std_logic; -- Sync command valid flag (clk domain)
		tstamp: out std_logic_vector(8 * TSTAMP_WDS - 1 downto 0); -- Timestamp out
		evtctr: out std_logic_vector(8 * EVTCTR_WDS - 1 downto 0) -- Event counter out
	);

end pdts_endpoint;

architecture rtl of pdts_endpoint is

	signal rec_rst, rxphy_aligned, clk_i, rxphy_rst, rxphy_locked, rst_i: std_logic;
	signal rx_err: std_logic_vector(2 downto 0);
	signal phase_locked, phase_rst: std_logic;	
	signal stb, k, s_valid, s_first: std_logic;
	signal d, dr: std_logic_vector(7 downto 0);
	signal rdy_i: std_logic;

begin

-- Startup controller

	startup: entity work.pdts_ep_startup
		generic map(
			SCLK_FREQ => SCLK_FREQ
		)
		port map(
			sclk => sclk,
			srst => srst,
			stat => stat,
			sfp_los => sfp_los,
			cdr_los => cdr_los,
			cdr_lol => cdr_lol,
			rec_clk => rec_d_clk,
			rec_rst => rec_rst,
			rxphy_aligned => rxphy_aligned,
			clk => clk_i,
			rxphy_rst => rxphy_rst,
			rxphy_locked => rxphy_locked,
			rst => rst_i,
			rx_err => rx_err,
			rdy => rdy_i
		);
		
-- Clock divider

--	clkgen: entity work.pdts_rx_div_mmcm
--		port map(
--			sclk => rec_clk,
--			clk => clk_i,
--			phase_rst => phase_rst,
--			phase_locked => phase_locked
--		);

	clkgen: entity work.pdts_rx_si5344
		port map(
                  sclk => rec_clk,
                  dclk => rec_d_clk,
                  locked_clk => rec_clk_locked,
                  reset_si5344 => rec_clk_reset,
                  clk => clk_i,
                  phase_rst => phase_rst,                  
                  phase_locked => phase_locked
		);
        
	clk <= clk_i;
	rst <= rst_i;
	
-- Rx PHY

	rxphy: entity work.pdts_rx_phy
		port map(
			fclk => sclk,
			rxclk => rec_d_clk,
			rxrst => rec_rst,
			rxd => rec_d,
			phase_rst => phase_rst,
			phase_locked => phase_locked,
			aligned => rxphy_aligned,
			clk => clk_i,
			rst => rxphy_rst,
			rx_locked => rxphy_locked,
			q => d,
			k => k,
			stbo => stb
		);
		
-- Rx

	rx: entity work.pdts_rx
		port map(
			clk => clk_i,
			rst => rst_i,
			stb => stb,
			grp => tgrp,
			addr => addr,
			d => d,
			k => k,
			q => dr,
			s_valid => s_valid,
			s_first => s_first,
			a_valid => open,
			a_last => open,
			err => rx_err
		);
		
-- Temporary sync output

	sync <= dr(3 downto 0);
	sync_v <= s_valid and s_first;
	
-- Timestamp / event counter

	ts: entity work.pdts_tstamp
		port map(
			clk => clk_i,
			rst => rst_i,
			d => dr,
			s_valid => s_valid,
			s_first => s_first,
			tstamp => tstamp,
			evtctr => evtctr,
			rdy => rdy_i
		);
		
	rdy <= rdy_i;
		
end rtl;
