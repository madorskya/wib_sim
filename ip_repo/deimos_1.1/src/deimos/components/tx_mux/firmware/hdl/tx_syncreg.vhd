-- tx_syncreg
--
-- Clock-domain crossing register; now just a map onto XPM macro
--
-- Dave Newbold, 22/10/22

library ieee;
use ieee.std_logic_1164.all;

library xpm;
use xpm.vcomponents.all;

entity tx_syncreg is
    generic(
        N: positive := 1
    );
    port(
        clks: in std_logic;
        d: in std_logic_vector(N - 1 downto 0);
        clk: in std_logic;
        q: out std_logic_vector(N - 1 downto 0)
    );

end entity tx_syncreg;

architecture rtl of tx_syncreg is

begin

    cdc: xpm_cdc_array_single
        generic map(
            DEST_SYNC_FF => 2,
            SIM_ASSERT_CHK => 1,
            WIDTH => N
        )
        port map(
            dest_out => q,
            dest_clk => clk,
            src_clk => clks,
            src_in => d
        );

end architecture rtl;
