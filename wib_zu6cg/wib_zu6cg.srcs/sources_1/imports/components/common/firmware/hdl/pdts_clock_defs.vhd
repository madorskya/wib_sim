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

	-- constants used in IRIG
	-- Seconds offset from the TAI epoch (Jan. 1, 1958) since IRIG only provides the year since 2000
    constant TAI_EPOCH_TO_1999_SECOND_TICKS : unsigned(59 downto 0) := X"1651F5121779000"; 
    constant START_YEAR : unsigned(6 downto 0) := "0000000"; -- GPS start year, 0x0 is 2000
    
    constant YEAR_TO_SECOND   : unsigned(27 downto 0) := X"1E13380"; -- seconds in a year
    constant DAY_TO_SECOND    : unsigned(19 downto 0) := X"15180";   -- seconds in a day
    constant HOUR_TO_SECOND   : unsigned(11 downto 0) := X"E10";     -- seconds in an hour
    constant MINUTE_TO_SECOND : unsigned(7 downto 0)  := X"3C";      -- seconds in a minute
	
end pdts_clock_defs;
