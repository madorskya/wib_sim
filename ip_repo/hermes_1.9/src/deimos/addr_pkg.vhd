library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package addr_pkg is
    type ip_addr_array is array(natural range <>) of std_logic_vector(31 downto 0);
    type mac_addr_array is array(natural range <>) of std_logic_vector(47 downto 0);
    type udp_port_array is array(natural range <>) of std_logic_vector(15 downto 0);
end package addr_pkg;

package body addr_pkg is
end package body;