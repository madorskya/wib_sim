-- pdts_del
--
-- Generic delay line
--
-- Should synth to SRL32s in Xilinx, something else may be needed for Altera
-- No register at output of this block
--
-- Dave Newbold, March 2018

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity pdts_del is
	generic(
		WIDTH: positive := 1;
		DEL_RADIX: positive := 5
	);
	port(
		clk: in std_logic;
		a: in std_logic_vector(DEL_RADIX - 1 downto 0);
		d: in std_logic_vector(WIDTH - 1 downto 0);
		q: out std_logic_vector(WIDTH - 1 downto 0)
	);
	
end pdts_del;

architecture rtl of pdts_del is

	type s_t is array(2 ** DEL_RADIX - 1 downto 0) of std_logic_vector(WIDTH - 1 downto 0);
	signal s: s_t;
	
begin

	s(0) <= d;

	process(clk)
	begin
		if rising_edge(clk) then
			s(s'left downto 1) <= s(s'left - 1 downto 0);
		end if;
	end process;
	
	q <= s(to_integer(unsigned(a)));

end rtl;
