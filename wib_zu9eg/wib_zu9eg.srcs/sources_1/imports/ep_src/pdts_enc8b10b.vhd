-- enc8b10b
--
-- 8b10b encoder
--
-- Dave Newbold, October 2016

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_code8b10bpkg.all;

entity pdts_enc8b10b is
	port(
		clk: in std_logic;
		rst: in std_logic;
		en: in std_logic;
		d: in std_logic_vector(7 downto 0);
		k: in std_logic;
		q: out std_logic_vector(9 downto 0)
	);

end pdts_enc8b10b;

architecture rtl of pdts_enc8b10b is

	signal disp: std_logic := '0';

begin
	
	process(clk)
		variable qv: std_logic_vector(9 downto 0);
		variable dispout: std_logic;
	begin	
		if rising_edge(clk) then
			encode8b10b(
				datain => d,
				datakin => k,
				dispin => disp,
				dataout => qv,
				dispout => dispout
			);
			if rst = '1' then
				disp <= '0';
			elsif en = '1' then
				disp <= dispout;
			end if;
			if en = '1' then
				q <= qv;
			end if;
		end if;
	end process;

end rtl;
