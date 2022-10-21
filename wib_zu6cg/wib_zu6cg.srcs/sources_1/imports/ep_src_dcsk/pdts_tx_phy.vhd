-- pdts_tx_phy
--
-- The transmit PHY
--
-- Dave Newbold, March 2017

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;
use work.pdts_clock_defs.all;

entity pdts_tx_phy is
	port(
		clk: in std_logic; -- parallel clock
		rst: in std_logic; -- sync rst; clk domain
		stb: in std_logic; -- data strobe
		d: in std_logic_vector(7 downto 0); -- input data; clk domain
		k: in std_logic; -- input kchar flag; clk domain
		q: out std_logic -- output data; txclk domain
	);

end pdts_tx_phy;

architecture rtl of pdts_tx_phy is

	signal w, wb: std_logic_vector(9 downto 0);
	signal s: std_logic;
	
begin
	
	enc: entity work.pdts_enc8b10b
		port map(
			clk => clk,
			rst => rst,
			en => stb,
			d => d,
			k => k,
			q => w
		);

	process(clk)
	begin
		if rising_edge(clk) then
			s <= stb;
			if s = '1' then
				wb <= w;
			else
				wb <= '0' & wb(9 downto 1);
			end if;
		end if;
	end process;

	q <= wb(0);
	
end rtl;
