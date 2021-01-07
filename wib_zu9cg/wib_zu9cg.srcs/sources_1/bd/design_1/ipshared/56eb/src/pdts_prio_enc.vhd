-- pdts_prio_enc
--
-- Priority encoder
--
-- Dave Newbold, January 2017

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity pdts_prio_enc is
	generic(
		WIDTH: positive := 1
	);
	port(
		d: in std_logic_vector(WIDTH - 1 downto 0);
		sel: out std_logic_vector(3 downto 0)
	);

end pdts_prio_enc;

architecture rtl of pdts_prio_enc is

begin

	process(d)
	begin
		sel <= (others => '0');
		for i in d'range loop
			if d(i) = '1' then
				sel <= std_logic_vector(to_unsigned(i, sel'length));
			end if;
		end loop;
	end process;

end rtl;
