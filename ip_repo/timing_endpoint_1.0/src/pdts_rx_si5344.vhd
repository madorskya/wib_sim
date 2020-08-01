-- pdts_rx_si5344
--
-- SI5344 phase alignment control
--
-- Dan Gastler 2017-06

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_defs.all;


entity pdts_rx_si5344 is
	port(
          sclk: in std_logic;
          dclk: in std_logic;
          locked_clk : in std_logic;
          reset_si5344 : out std_logic;
          clk: out std_logic;
          phase_rst: in std_logic;
          phase_locked: out std_logic
	);
		
end pdts_rx_si5344;

architecture rtl of pdts_rx_si5344 is
begin

  --Pass the SI5344's clock to the local DUNE clock
  clk <= sclk;
  phase_locked <= locked_clk;
  reset_si5344 <= phase_rst;
  
end rtl;
