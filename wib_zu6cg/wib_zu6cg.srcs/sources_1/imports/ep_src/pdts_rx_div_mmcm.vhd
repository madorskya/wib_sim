-- pdts_rx_div_mmcm
--
-- Clock divider for rx side
--
-- Dave Newbold, February 2017

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.pdts_defs.all;

library unisim;
use unisim.VComponents.all;

entity pdts_rx_div_mmcm is
	port(
		sclk: in std_logic;
		clk: out std_logic;
		clkx2: out std_logic; -- Maq
		scpy: out std_logic;
		phase_rst: in std_logic;
		phase_locked: out std_logic
	);
		
end pdts_rx_div_mmcm;

architecture rtl of pdts_rx_div_mmcm is

	signal clkfbout, clkfbin, clki, scpyi: std_logic;
	signal clkix2: std_logic; -- Maq
	
begin

	mmcm: MMCME2_BASE
		generic map(
			CLKIN1_PERIOD => (1000.0 / CLK_FREQ) / real(SCLK_RATIO), -- Fast clock input
			CLKFBOUT_MULT_F => real(VCO_RATIO), -- Around 1GHz VCO freq
			CLKOUT0_DIVIDE_F => real(VCO_RATIO) * real(SCLK_RATIO), -- System clock output
			CLKOUT1_DIVIDE => VCO_RATIO, -- Copy of fast clock
			CLKOUT2_DIVIDE => 10 -- Maq: double system clock, 125M
		)
		port map(
			clkin1 => sclk,
			clkfbin => clkfbin,
			clkout0 => clki,
			clkout1 => scpyi,
			clkout2 => clkix2, -- Maq
			clkfbout => clkfbout,
			locked => phase_locked,
			rst => phase_rst,
			pwrdwn => '0'
		);

	bufg0: BUFG
		port map(
			i => clki,
			o => clk
	);
	
	-- Maq buffer for x2 clock
	bufgx2: BUFG
		port map(
			i => clkix2,
			o => clkx2
	);

	bufgfb: BUFG
		port map(
			i => clkfbout,
			o => clkfbin
	);

	bufgcp: BUFG
		port map(
			i => scpyi,
			o => scpy
	);

end rtl;
