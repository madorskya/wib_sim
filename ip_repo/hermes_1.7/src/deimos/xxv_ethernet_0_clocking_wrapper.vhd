library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity  xxv_ethernet_0_clocking_wrapper is
    port(
        ge_ref_clk_p        : in  std_logic;
        gt_ref_clk_n        : in  std_logic;
        gt_ref_clk          : out std_logic;
        gt_ref_clk_out      : out std_logic
    );
end entity xxv_ethernet_0_clocking_wrapper;

architecture wrapper of xxv_ethernet_0_clocking_wrapper is

    signal gt_ref_clk_copy : std_logic;

begin
    coreclk_bufds : IBUFDS_GTE4
        port map(
            I     => ge_ref_clk_p,
            IB    => gt_ref_clk_n,
            CEB   => '0',
            O     => gt_ref_clk,
            ODIV2 => gt_ref_clk_copy
        );

    coreclk_out_bufg: BUFG_GT
        port map(
            I        => gt_ref_clk_copy,
            CE       => '1',
            CEMASK   => '1',
            CLR      => '0',
            CLRMASK  => '1',
            DIV      => (others => '0'),
            O        => gt_ref_clk_out
        );

end wrapper;