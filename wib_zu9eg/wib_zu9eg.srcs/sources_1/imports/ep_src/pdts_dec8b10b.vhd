-- dec8b10b
--
-- 8b10b decoder
--
-- Dave Newbold, October 2016

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_code8b10bpkg.all;

entity pdts_dec8b10b is
	port(
		clk: in std_logic;
		rst: in std_logic;
		en: in std_logic;
		d: in std_logic_vector(9 downto 0);
		q: out std_logic_vector(7 downto 0);
		k: out std_logic;
		cerr: out std_logic;
		derr: out std_logic
	);

end pdts_dec8b10b;

architecture rtl of pdts_dec8b10b is

	signal disp: std_logic;

begin
	
	process(clk)
		variable qv: std_logic_vector(7 downto 0);
		variable dispout, kv, cerrv, derrv: std_logic;
	begin
		if rising_edge(clk) then
			decode8b10b(
				datain => d,
				dispin => disp,
				dataout => qv,
				datakout => kv,
				dispout => dispout,
				codeerr => cerrv,
				disperr => derrv
			);		
			if rst = '1' then
				disp <= '0';
			elsif en = '1' then
				disp <= dispout;
			end if;
			if en = '1' then
				q <= qv;
				k <= kv;
				cerr <= cerrv;
				derr <= derrv;
			end if;
		end if;
	end process;

end rtl;
