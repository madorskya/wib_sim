-- Copyright(c) 2022 UNITED KINGDOM RESEARCH AND INNOVATION
-- Electronic System Design Group, Technology Department,
-- Science and Technology Facilities Council
-- Licensed under the BSD 3-Clause license. See LICENSE file in the project root for details.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library crc_lib;
use crc_lib.crc32_64_pkg.all;

entity crc32_64 is
    generic(
        INIT     : std_logic_vector(31 downto 0) := X"FFFFFFFF";
        LL_WIDTH : integer                       := 64
    );
    port(
        clk     : in  std_logic;
        rst_s_n : in  std_logic;
        width   : in  std_logic_vector(5 downto 0);
        enable  : in  std_logic;
        data    : in  std_logic_vector(LL_WIDTH - 1 downto 0);
        crc     : out std_logic_vector(31 downto 0)
    );
end entity crc32_64;

architecture behavioral of crc32_64 is

    signal crc_r    : std_logic_vector(31 downto 0)           := INIT;
    signal data_r   : std_logic_vector(LL_WIDTH - 1 downto 0) := (others => '0');
    signal width_r  : std_logic_vector(5 downto 0)            := (others => '0');
    signal enable_r : std_logic                               := '0';

    attribute keep_hierarchy : string;
    attribute keep_hierarchy of behavioral : architecture is "false";

    attribute register_balancing : string;
    attribute register_balancing of clk : signal is "true";

begin

    crc3264 : process(clk)
    begin
        if (rising_edge(clk)) then
            enable_r <= enable;
            data_r   <= data;
            width_r  <= width;
            if (enable_r = '1') then
                if (rst_s_n = '0') then
                    crc_r <= INIT;
                else
                    crc_r <= crc_calc(crc_r, data_r, width_r);
                    -- crc_r <= crc_calc(crc_r, data_r, "111");
                end if;
            end if;
        end if;
    end process crc3264;

    crc <= (not crc_r);

end architecture behavioral;
