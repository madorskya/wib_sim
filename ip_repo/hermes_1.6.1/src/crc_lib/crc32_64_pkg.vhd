-- Copyright(c) 2022 UNITED KINGDOM RESEARCH AND INNOVATION
-- Electronic System Design Group, Technology Department,
-- Science and Technology Facilities Council
-- Licensed under the BSD 3-Clause license. See LICENSE file in the project root for details.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package crc32_64_pkg is
    --------------------------------------------------------------------------------
    -- Component Declarations:
    --------------------------------------------------------------------------------
    component crc32_64 is
        generic(
            INIT     : std_logic_vector(31 downto 0) := X"FFFFFFFF";
            LL_WIDTH : integer                       := 64
        );
        port(
            clk    : in  std_logic;
            rst_s  : in  std_logic;
            width  : in  std_logic_vector(5 downto 0);
            enable : in  std_logic;
            data   : in  std_logic_vector(LL_WIDTH - 1 downto 0);
            crc    : out std_logic_vector(31 downto 0)
        );
    end component crc32_64;

    component crc32_64_bytewise_lut is
        generic(
            LL_WIDTH : integer := 64
        );
        port(
            data_in : in  std_logic_vector(LL_WIDTH - 1 downto 0);
            crc_out : out std_logic_vector(31 downto 0)
        );
    end component crc32_64_bytewise_lut;

    component crc32_64_lut_based is
        generic(
            INIT     : std_logic_vector(31 downto 0) := X"FFFFFFFF";
            LL_WIDTH : integer                       := 64
        );
        port(
            clk    : in  std_logic;
            rst_s  : in  std_logic;
            width  : in  std_logic_vector(5 downto 0);
            enable : in  std_logic;
            data   : in  std_logic_vector(LL_WIDTH - 1 downto 0);
            crc    : out std_logic_vector(31 downto 0)
        );
    end component crc32_64_lut_based;
    --------------------------------------------------------------------------------
    -- Function Declarations:
    --------------------------------------------------------------------------------
    function sr1(
        value : std_logic_vector
    ) return std_logic_vector;

    function crc_calc(
        value : std_logic_vector;
        data  : std_logic_vector;
        width : std_logic_vector
    ) return std_logic_vector;

end crc32_64_pkg;

package body crc32_64_pkg is
    --------------------------------------------------------------------------------
    -- shift right function,  insert zeros from right
    function sr1(
        value : std_logic_vector
    ) return std_logic_vector is

        variable result : std_logic_vector(value'length - 1 downto 0) := (others => '0');

    begin
        -- result(value'length-2 downto 0) := value(value'length-1 downto 1);
        -- Replaced with numeric_std version of shift right logical:
        result := std_logic_vector(shift_right(unsigned(value), 1));
        return result;
    end function sr1;
    --------------------------------------------------------------------------------
    -- CRC calc function, ethernet crc32
    function crc_calc(
        value : std_logic_vector;
        data  : std_logic_vector;
        width : std_logic_vector
    ) return std_logic_vector is

        type crc_array_type is array (value'length - 1 downto 0) of std_logic_vector(31 downto 0);

        variable crc_i           : crc_array_type;
        variable result          : std_logic_vector(31 downto 0) := (others => '0');
        variable x               : std_logic;
        variable bit_width_start : integer range 0 to value'length - 1;

        constant ETHERPOLY : std_logic_vector(31 downto 0) := X"EDB88320";
        -- constant ETHERPOLY                      : std_logic_vector(31 downto 0) := X"04C11DB7";

    begin
        crc_i(0)        := value;
        -- bit_width_start := to_integer(unsigned(width)) * 8 - 1;
        bit_width_start := (to_integer(unsigned(width)) + 1) * 8 - 1;
        for i in 0 to value'length - 1 loop
            x := crc_i(i)(0) xor data(i);
            if (i <= bit_width_start) then
                if (x = '1') then
                    crc_i(i + 1) := sr1(crc_i(i)) xor ETHERPOLY;
                else
                    crc_i(i + 1) := sr1(crc_i(i));
                end if;
            else
                crc_i(i + 1) := crc_i(i);
            end if;
        end loop;
        result          := crc_i(value'length);
        return result;
    end function crc_calc;
    --------------------------------------------------------------------------------
end package body crc32_64_pkg;
