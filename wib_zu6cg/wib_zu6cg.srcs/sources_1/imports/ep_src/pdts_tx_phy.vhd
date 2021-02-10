-- pdts_tx_phy
--
-- The transmit PHY, internal serialiser version
--
-- Dave Newbold, March 2017

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_defs.all;

entity pdts_tx_phy is
	port(
		clk: in std_logic; -- parallel clock
		rst: in std_logic; -- sync rst; clk domain
		d: in std_logic_vector(7 downto 0); -- input data; clk domain
		k: in std_logic; -- input kchar flag; clk domain
		stb: in std_logic; -- data strobe
		txclk: in std_logic; -- tx clock
		q: out std_logic -- output data; txclk domain
	);

end pdts_tx_phy;

architecture rtl of pdts_tx_phy is

	signal d_tx: std_logic_vector(7 downto 0);
	signal w, wb, wc: std_logic_vector(9 downto 0);
	signal t: std_logic_vector(SCLK_RATIO - 1 downto 0);
	signal s, rsta: std_logic;
	
	attribute MARK_DEBUG: string;
	attribute MARK_DEBUG of d_tx, k, w: signal is "TRUE";
	
begin

	process(d, k)
	begin
		if k = '1' then
			if d(0) = '0' then
				d_tx <= CCHAR;
			else
				d_tx <= SCHAR;
			end if;
		else
			d_tx <= d;
		end if;
	end process;
	
	enc: entity work.pdts_enc8b10b
		port map(
			clk => clk,
			rst => rst,
			en => stb,
			d => d_tx,
			k => k,
			q => w
		);

	s <= stb when rising_edge(clk);
		
	process(txclk)
	begin
		if rising_edge(txclk) then
			rsta <= rst;
			if rsta = '1' then
				t <= (0 => '1', others => '0');
			else
				t <= t(0) & t(SCLK_RATIO - 1 downto 1);
			end if;
			wc <= w;
			if s = '1' and t(0) = '1' then
				wb <= wc;
			else
				wb <= '0' & wb(9 downto 1);
			end if;
		end if;
	end process;

	q <= wb(0);
	
end rtl;
