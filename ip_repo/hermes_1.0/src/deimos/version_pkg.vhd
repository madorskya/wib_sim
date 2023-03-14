--------------------------------------------------------------------------------
--
-- Title    : version_pkg.vhd
-- Project  : DUNE-DAQ
-- Author   : Alessandro Thea
-- Date     : 22/March/2022
--------------------------------------------------------------------------------
--
-- Package tracking the repository version
-- 
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package version_pkg is
    constant C_VMAJOR_INT  : natural                       := 0;
    constant C_VMINOR_INT  : natural                       := 9;
    constant C_VPATCH_INT  : natural                       := 0;
    constant C_VMAJOR_HEX  : std_logic_vector(7 downto 0)  := std_logic_vector(to_unsigned(C_VMAJOR_INT, 8));
    constant C_VMINOR_HEX  : std_logic_vector(7 downto 0)  := std_logic_vector(to_unsigned(C_VMINOR_INT, 8));
    constant C_VPATCH_HEX  : std_logic_vector(7 downto 0)  := std_logic_vector(to_unsigned(C_VPATCH_INT, 8));
    constant C_VERSION_HEX : std_logic_vector(23 downto 0) := C_VMAJOR_HEX & C_VMINOR_HEX & C_VPATCH_HEX;
end package version_pkg;

package body version_pkg is
end package body version_pkg;
