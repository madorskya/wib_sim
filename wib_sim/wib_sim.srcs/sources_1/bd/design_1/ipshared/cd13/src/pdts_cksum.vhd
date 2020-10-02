-- pdts_cksum
--
-- 16b checksum block - currently 
--
-- Dave Newbold, October 2016

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity pdts_cksum is
	port(
		clk: in std_logic; -- 50MHz system clock
		stb: in std_logic; -- data strobe
		clr: in std_logic; -- clear signal
		d: in std_logic_vector(7 downto 0); -- data in
		c: out std_logic_vector(15 downto 0) -- rolling checksum out
	);

end pdts_cksum;

architecture rtl of pdts_cksum is

begin

	crc: entity work.outputlogic_crc16
		port map(
			clk => clk,
			crc_en => stb,
			rst => clr,
			data_in => d,
			crc_out => c
		);
	
end rtl;
