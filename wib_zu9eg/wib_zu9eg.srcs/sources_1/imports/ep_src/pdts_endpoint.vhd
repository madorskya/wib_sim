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
		SCLK_FREQ: real := 50.0; -- Frequency (MHz) of the supplied sclk
		EN_TX: boolean := false;
		SIM: boolean := false;
		NEED_ADJUST: boolean := true;
		NEED_TSTAMP: boolean := true
	);
	port(
		sclk: in std_logic; -- Free-running system clock
		srst: in std_logic; -- System reset (sclk domain)
		addr: in std_logic_vector(7 downto 0); -- Endpoint address (async, sampled in clk domain)
		tgrp: in std_logic_vector(1 downto 0); -- Timing group (async, sampled in clk domain)
		stat: out std_logic_vector(3 downto 0); -- Status output (sclk domain)
		rec_clk: in std_logic; -- CDR recovered clock from timing link
		rec_d: in std_logic; -- CDR recovered data from timing link (rec_clk domain)
		txd: out std_logic; -- Output data to timing link (rec_clk domain)
--		sfp_los: in std_logic := '0'; -- SFP LOS line (async, sampled in sclk domain)
--		cdr_los: in std_logic := '0'; -- CDR LOS line (async, sampled in sclk domain)
--		cdr_lol: in std_logic := '0'; -- CDR LOL line (async, sampled in sclk domain)
		io_rdy: in std_logic;
		sfp_tx_dis: out std_logic; -- SFP tx disable line (clk domain)
		clk: out std_logic; -- 50MHz clock output
		rst: out std_logic; -- 50MHz domain reset
		rdy: out std_logic; -- Timestamp valid flag
		sync: out std_logic_vector(SCMD_W - 1 downto 0); -- Sync command output (clk domain)
		sync_stb: out std_logic; -- Sync command strobe (clk domain)
		sync_first: out std_logic; -- Sync command valid flag (clk domain)
		tstamp: out std_logic_vector(8 * TSTAMP_WDS - 1 downto 0); -- Timestamp out
		tsync_in: in cmd_w := CMD_W_NULL; -- Tx sync command input
		tsync_out: out cmd_r; -- Tx sync command handshake
		debug: out std_logic_vector(31 downto 0) -- port for debug info, e.g. applied delay values
	);

end pdts_endpoint;

architecture rtl of pdts_endpoint is

	signal rec_rst, rxphy_aligned, clk_i, rxphy_rst, rxphy_locked, rst_i, ext_rst_i: std_logic;
	signal rx_err: std_logic_vector(2 downto 0);
	signal phase_locked, phase_rst: std_logic;	
	signal stb, k, s_stb, s_first, a_stb, a_first: std_logic;
	signal d, dr: std_logic_vector(7 downto 0);
	signal rdy_i: std_logic;
	signal ph_data: std_logic_vector(15 downto 0);
	signal fdel: std_logic_vector(3 downto 0);
	signal cdel: std_logic_vector(5 downto 0);
	signal adj_req, adj_ack, tx_en, ph_update: std_logic;
	signal scmdw_v: cmd_w_array(1 downto 0);
	signal scmdr_v: cmd_r_array(1 downto 0);
	signal scmdw, acmdw: cmd_w;
	signal scmdr, acmdr: cmd_r;
	signal tp, tp_d: std_logic;
	signal tx_q: std_logic_vector(7 downto 0);
	signal tx_err, tx_stb, tx_k, txdi: std_logic;
	signal stat_i: std_logic_vector(3 downto 0);
	signal debug_i: std_logic_vector(7 downto 0);

begin

-- Startup controller

	startup: entity work.pdts_ep_startup
		generic map(
			SCLK_FREQ => SCLK_FREQ,
			SIM => SIM,
			NEED_ADJUST => NEED_ADJUST,
			NEED_TSTAMP => NEED_TSTAMP
		)
		port map(
			sclk => sclk,
			srst => srst,
			stat => stat_i,
--			sfp_los => sfp_los,
--			cdr_los => cdr_los,
--			cdr_lol => cdr_lol,
			io_rdy => io_rdy,
			adj_req => adj_req,
			adj_ack => adj_ack,
			rec_clk => rec_clk,
			rec_rst => rec_rst,
			rxphy_aligned => rxphy_aligned,
			mclk => rec_clk,
			clk => clk_i,
			rxphy_rst => rxphy_rst,
			rxphy_locked => rxphy_locked,
			rst => rst_i,
			ext_rst => ext_rst_i,
			rx_err => rx_err,
			tsrdy => rdy_i,
			rdy => rdy,
			debug => debug
		);

	stat <= stat_i;
	rst <= ext_rst_i;

-- Clock divider

	clkgen: entity work.pdts_rx_div_mmcm
		port map(
			sclk => rec_clk,
			clk => clk_i,
			phase_rst => phase_rst,
			phase_locked => phase_locked
		);
		
	clk <= clk_i;
	
-- Rx PHY

	rxphy: entity work.pdts_rx_phy
		port map(
			rxclk => rec_clk,
			rxd => rec_d,
			fdel => fdel,
			cdel => cdel,
			clk => clk_i,
			rec_rst => rec_rst,
			rst => rxphy_rst,
			phase_rst => phase_rst,
			phase_locked => phase_locked,
			aligned => rxphy_aligned,
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
			tgrp => tgrp,
			addr => addr,
			d => d,
			k => k,
			q => dr,
			s_stb => s_stb,
			s_first => s_first,
			a_stb => a_stb,
			a_first => a_first,
			err => rx_err
		);
	
-- Temporary sync and async output

	sync <= dr(SCMD_W - 1 downto 0);
	sync_first <= s_first and rdy_i;
	sync_stb <= s_stb and rdy_i;
		
-- Async command rx and phase adjust

	acmd_rx: entity work.pdts_acmd_rx
		port map(
			clk => clk_i,
			rst => rst_i,
			a_d => dr,
			a_stb => a_stb,
			a_first => a_first,
			q => ph_data,
			s => ph_update
		);
		
	adj: entity work.pdts_adjust
		port map(
			sclk => sclk,
			srst => srst,
			clk => clk_i,
			d => ph_data,
			s => ph_update,
			fdel => fdel,
			cdel => cdel,
			adj_req => adj_req,
			adj_ack => adj_ack,
			tx_en => tx_en
		);
	
			
-- Timestamp / event counter

	ts: entity work.pdts_tstamp
		port map(
			clk => clk_i,
			rst => rst_i,
			d => dr,
			s_stb => s_stb,
			s_first => s_first,
			tstamp => tstamp,
			rdy => rdy_i
		);
	
-- Echo command; send it back to the master

	scmdw_v(0).d <= dr;
	scmdw_v(0).req <= s_first and s_stb when dr(3 downto 0) = SCMD_ECHO else '0';
	scmdw_v(0).last <= '1';

-- Sync command input

	scmdw_v(1) <= tsync_in;
	tsync_out <= scmdr_v(1);

-- Merge

	merge: entity work.pdts_scmd_merge
		generic map(
			N_SRC => 2,
			N_PART => 0
		)
		port map(
			clk => clk_i,
			rst => rst_i,
			scmd_in_v => scmdw_v,
			scmd_out_v => scmdr_v,
			typ => open,
			tv => open,
			tgrp => (others => '0'),
			scmd_out => scmdw,
			scmd_in => scmdr
		);
		
-- Idle pattern gen

	idle: entity work.pdts_idle_gen
		port map(
			clk => clk_i,
			rst => rst_i,
			acmd_out => acmdw,
			acmd_in => acmdr
		);
		
-- Tx

	tx: entity work.pdts_tx
		port map(
			clk => clk_i,
			rst => rst_i,
			stb => stb,
			addr => addr,
			scmd_in => scmdw,
			scmd_out => scmdr,
			acmd_in => acmdw,
			acmd_out => acmdr,
			q => tx_q,
			k => tx_k,
			stbo => tx_stb,
			err => tx_err
		);
		
-- Tx PHY

	txphy: entity work.pdts_tx_phy
		port map(
			clk => clk_i,
			rst => rst_i,
			d => tx_q,
			k => tx_k,
			stb => tx_stb,
			txclk => rec_clk,
			q => txdi
		);
		
-- SFP control

	sfp_tx_dis <= '0' when EN_TX else not tx_en;
	txd <= txdi and not rst_i when EN_TX else txdi and tx_en and not rst_i;

-- Debug port

--	debug <= "0" & stat_i & rdy_i & ext_rst_i & rst_i & tx_err & adj_ack & tx_en & adj_req & fdel & cdel & ph_update & rx_err & phase_locked & phase_rst & rxphy_locked & rxphy_aligned & rxphy_rst & rec_rst;


end rtl;
