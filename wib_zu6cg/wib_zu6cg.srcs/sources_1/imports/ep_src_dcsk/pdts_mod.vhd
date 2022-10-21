-- pdts_mod
--
-- Line interface for 'no CDR' pulse width modulation - tx side
--
-- Dave Newbold, December 2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use work.pdts_clock_defs.all;

entity pdts_mod is
	port(
		clk4x: in std_logic;
		rst: in std_logic; -- Needs to be in the clk1x domain
		d: in std_logic;
		q: out std_logic
	);

end pdts_mod;

architecture rtl of pdts_mod is

	signal cctr: unsigned(1 downto 0);
	signal patt: std_logic_vector(3 downto 0);
	
begin

-- Cycle counter

	process(clk4x)
	begin
		if rising_edge(clk4x) then
			if rst = '1' then
				cctr <= "11";
			else
				cctr <= cctr + 1;
			end if;
		end if;
	end process;
	
-- Modulator

	patt <= "0001" when d = '0' else "0111";
	q <= patt(to_integer(cctr)) when rising_edge(clk4x);

end rtl;
