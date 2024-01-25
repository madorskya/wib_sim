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

package hermes_core_version_pkg is
    constant C_HERMES_VMAJOR_INT     : natural                       := 1;
    constant C_HERMES_VMINOR_INT     : natural                       := 8;
    constant C_HERMES_VREVISION_INT  : natural                       := 0;
    constant C_HERMES_VMAJOR_HEX     : std_logic_vector(7 downto 0)  := std_logic_vector(to_unsigned(C_HERMES_VMAJOR_INT, 8));
    constant C_HERMES_VMINOR_HEX     : std_logic_vector(7 downto 0) := std_logic_vector(to_unsigned(C_HERMES_VMINOR_INT, 8));
    constant C_HERMES_VREVISION_HEX  : std_logic_vector(7 downto 0)  := std_logic_vector(to_unsigned(C_HERMES_VREVISION_INT, 8));
    constant C_HERMES_VERSION_HEX    : std_logic_vector(23 downto 0) := C_HERMES_VMAJOR_HEX & C_HERMES_VMINOR_HEX & C_HERMES_VREVISION_HEX;
end package hermes_core_version_pkg;

package body hermes_core_version_pkg is
end package body hermes_core_version_pkg;
