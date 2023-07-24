-- tx_mux_timeslice
--
-- Generates timeslice markers for array of tx_mux blocks
--
-- Dave Newbold, 6/10/22

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library ipbus;
use ipbus.ipbus.all;
use ipbus.ipbus_reg_types.all;

use work.tx_mux_decl.all;

entity tx_mux_timeslice is
    port(
        ipb_clk: in std_logic;
        ipb_rst: in std_logic;
        ipb_in: in  ipb_wbus;
        ipb_out: out ipb_rbus;
        src_clk: in std_logic; -- DUNE base clock (62.5MHz)
        src_rst: in std_logic; -- DUNE base clock sync reset (src_clk)
        ts: in std_logic_vector(63 downto 0);
        samp: out std_logic; -- Sample flag
        mark: out std_logic -- Timeslice marker
    );

end entity tx_mux_timeslice;

architecture rtl of tx_mux_timeslice is

    signal ctrl: ipb_reg_v(0 downto 0);
    signal stat: ipb_reg_v(1 downto 0);
    signal ctrl_sample, s, sd: std_logic;
    signal t: std_logic_vector(63 downto 0);

begin

-- CSR registers

    csr: entity ipbus.ipbus_ctrlreg_v
		generic map(
			N_CTRL => 1,
			N_STAT => 2
		)
		port map(
			clk => ipb_clk,
			reset => ipb_rst,
			ipbus_in => ipb_in,
			ipbus_out => ipb_out,
			d => stat,
			q => ctrl
		);

    ctrl_sample <= ctrl(0)(0);
    stat <= (t(63 downto 32), t(31 downto 0));

    sync_en_buf: entity work.tx_syncreg
        generic map(
            N => 1
        )
        port map(
            clks => ipb_clk,
            d(0) => ctrl_sample,
            clk => src_clk,
            q(0) => s
        );

    sd <= s when rising_edge(src_clk);
    samp <= s and not sd;

    t <= ts when samp = '1' and rising_edge(src_clk);

    mark <= ts(TIMESLICE_RADIX - 1);

end architecture rtl;
