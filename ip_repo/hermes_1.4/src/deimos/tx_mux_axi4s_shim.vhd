-- tx_mux_axi4s_shim
--
-- Converts simple tx_mux 'src_d' interface to axi4s for connection to ethernet block
--
-- Dave Newbold, 2/1/23

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.tx_mux_decl.all;

library axi4_lib;
use axi4_lib.axi4s_pkg.all;

entity tx_mux_axi4s_shim is
    port(
        mux_d: in src_d;
        mux_ready: out std_logic;
        axi4s_mosi: out t_axi4s_mosi;
        axi4s_miso: in t_axi4s_miso
    );

end entity tx_mux_axi4s_shim;

architecture rtl of tx_mux_axi4s_shim is

begin

    axi4s_mosi.tdata <= (63 downto 0 => mux_d.d, others => '0');
    axi4s_mosi.tid <= (others => '0');
    axi4s_mosi.tuser <= (others => '0');
    axi4s_mosi.tkeep <= (others => mux_d.valid);
    axi4s_mosi.tlast <= mux_d.last;
    axi4s_mosi.tvalid <= mux_d.valid or mux_d.last;

    mux_ready <= axi4s_miso.tready;

end architecture rtl;

