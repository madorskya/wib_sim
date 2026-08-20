-- pdts_clock_defs (62.5 MHz)
--
-- Constants and types for PDTS
--
-- Dave Newbold, October 2016

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

package pdts_clock_defs is

-- L0 constants (signalling layer)

	constant CLK_FREQ: real := 62.5; -- System clock frequency, MHz
	constant CLK_FREQ_HZ: unsigned(31 downto 0) := to_unsigned(integer(CLK_FREQ*1000000.0), 32); -- -- System clock frequency, Hz, unsigned
	constant DIV_VCO_RATIO: integer := 4; -- Base clock 250MHz; VCO frequency 1GHz
	constant EP_VCO_RATIO: integer := 16; -- Base clock 62.5MHz; VCO frequency 1GHz
	constant SAMPLE_CLK_RATIO: integer := 89; -- Sample clock divisor
	
end pdts_clock_defs;
