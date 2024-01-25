library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package xgmii_pkg is
    type xgmii_c_array is array(natural range <>) of std_logic_vector(7 downto 0);
    type xgmii_d_array is array(natural range <>) of std_logic_vector(63 downto 0);
end package xgmii_pkg;


package body xgmii_pkg is

end package body;
