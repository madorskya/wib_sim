-- pdts_lutram
--
-- SLICEM memory (async read, registered write)
--
-- Dave Newbold, October 2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity pdts_lutram is
	generic(
		BUF_RADIX: positive;
		W: positive
	);
	port(
		clk: in std_logic;
		rst: in std_logic;
		a: in std_logic_vector(BUF_RADIX - 1 downto 0);
		d: in std_logic_vector(W - 1 downto 0);
		q: out std_logic_vector(W - 1 downto 0);
		wen: in std_logic
	);

end pdts_lutram;

architecture rtl of pdts_lutram is

	type ram_t is array(2 ** BUF_RADIX - 1 downto 0) of std_logic_vector(W - 1 downto 0);
	signal ram: ram_t := (others => (others => '0'));
	signal sel: integer range 0 to 2 ** BUF_RADIX - 1 := 0;

begin
	
	sel <= to_integer(unsigned(a));

	process(clk)
	begin
		if rising_edge(clk) then
			if wen = '1' then
				ram(sel) <= d;
			end if;
		end if;
	end process;

	q <= ram(sel);
	
end rtl;
