-- pdts_ep_ctrl
--
-- Timing endpoint control block
--
-- Dave Newbold, March 2022

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_defs.all;
use work.pdts_ep_defs.all;

entity pdts_ep_ctrl is
	port(
		clk: in std_logic; -- Base clock
		rst: in std_logic; -- Base clock reset (clk domain)
		acmd_rx_in: in pdts_cmd_w; -- Async command stream in (clk domain)
		acmd_rx_out: out pdts_cmd_r;
		acmd_tx_out: out pdts_cmd_w; -- Async command stream out (clk domain)
		acmd_tx_in: in pdts_cmd_r;
		ctrl_out: out pdts_cmo; -- Control bus (clk domain)
		ctrl_in: in pdts_cmi;
		err: out std_logic -- Error flag
	);

end pdts_ep_ctrl;

architecture rtl of pdts_ep_ctrl is

	signal acmdw_rx, acmdw_tx: pdts_cmd_w;
	signal acmdr_rx, acmdr_tx: pdts_cmd_r;
	signal err_rx, err_trans, err_tx: std_logic;

begin

-- Rx packet buffer

	rxbuf: entity work.pdts_pktbuf
		generic map(
			BUF_RADIX => PACKET_LEN_RADIX
		)
		port map(
			clk => clk,
			rst => rst,
			rx_i => acmd_rx_in,
			rx_o => acmd_rx_out,
			tx_o => acmdw_rx,
			tx_i => acmdr_rx,
			err => err_rx
		);
		
-- Bus controller
		
	trans: entity work.pdts_ep_transactor
		port map(
			clk => clk,
			rst => rst,
			rx_i => acmdw_rx,
			rx_o => acmdr_rx,
			tx_o => acmdw_tx,
			tx_i => acmdr_tx,
			ctrl_o => ctrl_out,
			ctrl_i => ctrl_in,
			err => err_trans
		);
		
-- Tx packet buffer
		
	txbuf: entity work.pdts_pktbuf
		generic map(
			BUF_RADIX => PACKET_LEN_RADIX
		)
		port map(
			clk => clk,
			rst => rst,
			rx_i => acmdw_tx,
			rx_o => acmdr_tx,
			tx_o => acmd_tx_out,
			tx_i => acmd_tx_in,
			err => err_tx
		);
		
-- Error flag

	err <= err_rx or err_trans or err_tx;

end rtl;

