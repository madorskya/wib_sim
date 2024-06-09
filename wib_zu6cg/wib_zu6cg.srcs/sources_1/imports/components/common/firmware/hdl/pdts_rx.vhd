-- pdts_rx
--
-- Receiver block for timing protocol
--
-- Dave Newbold, December 2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_rx is
	port(
		clk: in std_logic; -- Clock
		rst: in std_logic; -- Reset
		d: in std_logic; -- Timing data input
		delay: in std_logic_vector(3 downto 0); -- Coarse delay setting
		rdy: out std_logic; -- Locked signal
		addr: in std_logic_vector(15 downto 0); -- Endpoint address
		stb: out std_logic; -- Character strobe
		scmd: out pdts_cmd_w; -- Sync command out
		acmd_out: out pdts_cmd_w; -- Async command out
		acmd_in: in pdts_cmd_r -- Async command in
	);

end pdts_rx;

architecture rtl of pdts_rx is

	signal locked, rxk, stbi, err, rst_pkt: std_logic;
	signal rxd: std_logic_vector(7 downto 0);

begin

	phy: entity work.pdts_rx_phy
		port map(
			clk => clk,
			rst => rst,
			d => d,
			delay => delay,
			locked => locked,
			q => rxd,
			k => rxk,
			stbo => stbi
		);

	stb <= stbi;
	rst_pkt <= rst or not locked;
	
	pkt: entity work.pdts_rx_pkt
		port map(
			clk => clk,
			rst => rst_pkt,
			stb => stbi,
			addr => addr,
			d => rxd,
			k => rxk,
			scmd => scmd,
			acmd_o => acmd_out,
			acmd_i => acmd_in,
			rdy => rdy
		);
	
end rtl;
