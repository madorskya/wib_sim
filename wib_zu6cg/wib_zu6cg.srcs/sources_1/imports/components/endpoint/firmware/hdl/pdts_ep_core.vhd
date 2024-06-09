-- pdts_ep_core
--
-- The core components of the endpoint, without the CDR / modulator
--
-- Dave Newbold, March 2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_defs.all;
use work.pdts_ep_defs.all;
use work.pdts_clock_defs.all;

entity pdts_ep_core is
	generic(
		SCLK_FREQ: real; -- Frequency (MHz) of the system clock
		FORCE_TX: boolean := false; -- Turn on transmit permanently
		SKIP_FREQ: boolean := false; -- Skip the frequency check step (e.g. for simulation)
		EXT_ADDR: boolean := true; -- Skip the address setting step
		SKIP_DESKEW: boolean := false; -- Skip the phase adjustment step
		SKIP_TSTAMP: boolean := false -- Skip the timestamp initialisation step
	);
	port(
		sys_clk: in std_logic; -- System clock
		sys_rst: in std_logic; -- System reset (sclk domain)
		sys_addr: in std_logic_vector(15 downto 0) := X"FFF0"; -- Default address
		sys_stat: out std_logic_vector(3 downto 0); -- Status output (sclk domain)
		ctrl_out: out pdts_cmo; -- Control bus (clk domain)
		ctrl_in: in pdts_cmi := PDTS_CMI_NULL;
		clk: in std_logic; -- Base clock
		rst: in std_logic; -- Base clock reset (clk domain)
		phase: out std_logic_vector(11 downto 0); -- Fine deskew setting
		phase_done: in std_logic := '0'; -- Fine deskew done flag
		cdr_rst: out std_logic; -- CDR reset signal
		locked: in std_logic := '1'; -- CDR lock input
		d: in std_logic; -- Timing input (clk domain)
		q: out std_logic; -- Timing output (clk domain)
		txenb: out std_logic; -- Timing output enable (active low for SFP) (clk domain)
		ready: out std_logic; -- Endpoint ready flag (clk domain)
		tstamp: out std_logic_vector(63 downto 0); -- Timestamp (clk domain)
		sync: out std_logic_vector(7 downto 0); -- Sync command output (clk domain)
		sync_stb: out std_logic -- Sync command strobe (clk domain)
	);

end pdts_ep_core;

architecture rtl of pdts_ep_core is

	signal stati: std_logic_vector(3 downto 0);
	signal resync, rx_en, rx_rdy, addr_done, deskew_done, tsrdy, reset, trst, reg_rst, rrst: std_logic;
	signal delay: std_logic_vector(3 downto 0);
	signal addr: std_logic_vector(15 downto 0);
	signal stb, tx_err, pkt_err: std_logic;
	signal acmd_rx_w, acmd_tx_w, scmd_rx_w, scmd_tx_w: pdts_cmd_w;
	signal acmd_rx_r, acmd_tx_r, scmd_rx_r, scmd_tx_r: pdts_cmd_r;
	signal ctrl_w, rctrl_w: pdts_cmo;
	signal ctrl_r, rctrl_r: pdts_cmi;
	signal ts_stb: std_logic;
	signal tstamp_i: std_logic_vector(63 downto 0);

	attribute MARK_DEBUG: string;
	attribute MARK_DEBUG of txenb, rst, rrst, trst, resync, locked, rx_en, d, q: signal is "TRUE";
	attribute MARK_DEBUG of ctrl_out, ctrl_in, ctrl_w, ctrl_r: signal is "TRUE";

begin

-- Control state machine

	sm: entity work.pdts_ep_sm
		generic map(
			SCLK_FREQ => SCLK_FREQ,
			SKIP_FREQ => SKIP_FREQ,
			SKIP_TSTAMP => SKIP_TSTAMP
		)
		port map(
			sys_clk => sys_clk,
			sys_rst => sys_rst,
			clk => clk,
			rst => rst,
			cdr_rst => cdr_rst,
			cdr_locked => locked,
			rx_en => rx_en,
			rx_rdy => rx_rdy,
			addr_done => addr_done,
			deskew_done => deskew_done,
			pkt_err => pkt_err,
			reset => reset,
			resync => resync,
			reg_rst => reg_rst,
			tsrdy => tsrdy,
			ready => ready,
			stat => stati
		);
		
	sys_stat <= stati;

-- Receive

	trst <= rst or resync or (not locked) or (not rx_en);

	rx: entity work.pdts_rx
		port map(
			clk => clk,
			rst => trst,
			d => d,
			delay => delay,
			rdy => rx_rdy,
			addr => addr,
			stb => stb,
			scmd => scmd_rx_w,
			acmd_out => acmd_rx_w,
			acmd_in => acmd_rx_r
		);
		
	sync <= scmd_rx_w.d;
	sync_stb <= scmd_rx_w.valid;

-- Control block

	ctrl: entity work.pdts_ep_ctrl
		port map(
			clk => clk,
			rst => trst,
			acmd_rx_in => acmd_rx_w,
			acmd_rx_out => acmd_rx_r,
			acmd_tx_out => acmd_tx_w,
			acmd_tx_in => acmd_tx_r,
			ctrl_out => ctrl_w,
			ctrl_in => ctrl_r,
			err => pkt_err
		);
		
	ctrlmux: entity work.pdts_ep_ctrlmux
		port map(
			ctrl_in => ctrl_w,
			ctrl_out => ctrl_r,
			ctrl_out_v(0) => rctrl_w,
			ctrl_out_v(1) => ctrl_out,
			ctrl_in_v(0) => rctrl_r,
			ctrl_in_v(1) => ctrl_in
		);
		
	scmd_tx_w <= scmd_rx_w; -- Echo all sync commands back to master
			
-- Register file

	rrst <= rst or reg_rst;

	regfile: entity work.pdts_ep_regfile
		generic map(
			FORCE_TX => FORCE_TX,
			EXT_ADDR => EXT_ADDR,
			SKIP_DESKEW => SKIP_DESKEW
		)
		port map(
			clk => clk,
			rst => rrst,
			ctrl_in => rctrl_w,
			ctrl_out => rctrl_r,
			sys_addr => sys_addr,
			addr => addr,
			stat => stati,
			phase => phase,
			phase_done => phase_done,
			delay => delay,
			resync => resync,
			reset => reset,
			txenb => txenb,
			tstamp => tstamp_i,
			ts_stb => ts_stb,
			addr_done => addr_done,
			deskew_done => deskew_done
		);

-- Transmit

	tx: entity work.pdts_tx
		port map(
			clk => clk,
			rst => rst,
			stb => stb,
			scmd_in => scmd_tx_w,
			scmd_out => scmd_tx_r,
			acmd_in => acmd_tx_w,
			acmd_out => acmd_tx_r,
			q => q,
			err => tx_err
		);

-- Timestamp generator

	ts: entity work.pdts_ep_tstamp
		generic map(
			SKIP_TSTAMP => SKIP_TSTAMP
		)
		port map(
			clk => clk,
			rst => trst,
			sync => scmd_rx_w.d,
			sync_stb => scmd_rx_w.valid,
			ts_in => tstamp_i,
			ts_stb => ts_stb,
			ts_out => tstamp,
			rdy => tsrdy
		);

end rtl;
