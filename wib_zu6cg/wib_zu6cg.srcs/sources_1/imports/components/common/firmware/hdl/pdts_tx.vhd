-- pdts_tx
--
-- Transmit block for timing protocol
--
-- Dave Newbold, December 2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_tx is
	port(
		clk: in std_logic; -- Clock
		rst: in std_logic; -- Reset
		stb: in std_logic; -- Character strobe
		scmd_in: in pdts_cmd_w; -- sync command in
		scmd_out: out pdts_cmd_r; -- sync command ack
		acmd_in: in pdts_cmd_w; -- async command in
		acmd_out: out pdts_cmd_r; -- async command out
		q: out std_logic; -- Data output
		err: out std_logic -- Error flag
	);

end pdts_tx;

architecture rtl of pdts_tx is

	signal txd: std_logic_vector(7 downto 0);
	signal k, stbi: std_logic;
	signal acmdw_v: pdts_cmd_w_array(1 downto 0);
	signal acmdr_v: pdts_cmd_r_array(1 downto 0);
	signal acmdw: pdts_cmd_w;
	signal acmdr: pdts_cmd_r;

begin

	acmdw_v(0) <= acmd_in;
	acmd_out <= acmdr_v(0);

-- Idle packet generator

	idle: entity work.pdts_idle_gen
		port map(
			clk => clk,
			rst => rst,
			acmd_out => acmdw_v(1),
			acmd_in => acmdr_v(1)
		);

-- Async packet arbitrator

	arb: entity work.pdts_acmd_arb
		generic map(
			N_SRC => 2
		)
		port map(
			clk => clk,
			rst => rst,
			acmd_in_v => acmdw_v,
			acmd_out_v => acmdr_v,
			acmd_out => acmdw,
			acmd_in => acmdr
		);

-- Packet handler

	pkt: entity work.pdts_tx_pkt
		port map(
			clk => clk,
			rst => rst,
			stb => stb,
			scmd_in => scmd_in,
			scmd_out => scmd_out,
			acmd_in => acmdw,
			acmd_out => acmdr,
			q => txd,
			k => k,
			stbo => stbi,
			err => err
		);
		
-- PHY
		
	phy: entity work.pdts_tx_phy
		port map(
			clk => clk,
			rst => rst,
			stb => stbi,
			d => txd,
			k => k,
			q => q
		);

end rtl;
