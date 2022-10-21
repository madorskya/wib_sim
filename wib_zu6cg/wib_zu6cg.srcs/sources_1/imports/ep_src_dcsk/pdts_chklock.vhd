-- pdts_chklock
--
-- Monitors lock status of external devices
--
-- Dave Newbold, April 2018

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

entity pdts_chklock is
	generic(
		N: positive := 1
	);
	port(
		clk: in std_logic;
		rst: in std_logic;
		los: in std_logic_vector(N - 1 downto 0);
		ok: out std_logic_vector(N - 1 downto 0);
		ok_sticky: out std_logic_vector(N - 1 downto 0)
	);

end pdts_chklock;

architecture rtl of pdts_chklock is

	type ctrs_t is array(N - 1 downto 0) of unsigned(7 downto 0); -- 256 cycle debounce
	signal ctrs: ctrs_t;
	signal ok_i: std_logic_vector(N - 1 downto 0);
	
begin

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				ctrs <= (others => (others => '0'));
			else
				for i in N - 1 downto 0 loop
					if los(i) = '1' then
						ctrs(i) <= (others => '0');
					elsif ok_i(i) = '0' then
						ctrs(i) <= ctrs(i) + 1;
					end if;
				end loop;
			end if;
		end if;
	end process;
	
	process(ctrs)
	begin
		for i in N - 1 downto 0 loop
			ok_i(i) <= and_reduce(std_logic_vector(ctrs(i)));
		end loop;
	end process;

	ok <= ok_i;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				ok_sticky <= (others => '1');
			else
				for i in N - 1 downto 0 loop
					if ok_i(i) = '0' then
						ok_sticky(i) <= '0';
					end if;
				end loop;
			end if;
		end if;
	end process;
	
end rtl;
