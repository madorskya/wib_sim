-- Copyright(c) 2022 UNITED KINGDOM RESEARCH AND INNOVATION
-- Electronic System Design Group, Technology Department,
-- Science and Technology Facilities Council
-- Licensed under the BSD 3-Clause license. See LICENSE file in the project root for details.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library crc_lib;
use crc_lib.crc32_64_pkg.all;

entity crc32_8_wrapper is
    generic(
        INIT     : std_logic_vector(31 downto 0) := X"FFFFFFFF";
        LL_WIDTH : integer                       := 8
    );
    port(
        clk     : in  std_logic;
        rst_s_n : in  std_logic;
        enable  : in  std_logic;
        data    : in  std_logic_vector(LL_WIDTH - 1 downto 0);
        crc     : out std_logic_vector(31 downto 0)
    );
end entity crc32_8_wrapper;

architecture behavioral of crc32_8_wrapper is
    -- Signal Declarations
    signal data_r    : std_logic_vector(LL_WIDTH - 1 downto 0) := (others => '0');
    signal enable_r  : std_logic                               := '0';
    signal crc_out_r : std_logic_vector(31 downto 0)           := INIT;

    signal lut_data_in : std_logic_vector(LL_WIDTH - 1 downto 0);
    signal lut_crc_out : std_logic_vector(31 downto 0) := INIT;
    signal CRC_out     : std_logic_vector(31 downto 0) := INIT;

begin

    crc_lut_based_8_inst : entity crc_lib.crc32_8_bytewise_lut_python
        generic map(
            G_NOF_LUTS => LL_WIDTH / 8
        )
        port map(
            data_in => lut_data_in,
            crc_out => lut_crc_out
        );

    -- Process to clock inputs and outputs into registers.
    --! @vhdlflow
    update_registers : process(clk)
    begin
        if (rising_edge(clk)) then
            enable_r <= enable;
            data_r   <= data;
            if enable_r = '1' then
                if rst_s_n = '0' then
                    crc_out_r <= INIT;
                else
                    crc_out_r <= CRC_out;
                end if;
            end if;
        end if;
    end process update_registers;

    -- XOR previous CRC into current data, lut_data_in signal fed to LUTs
    lut_data_in <= data_r xor crc_out_r(LL_WIDTH - 1 downto 0);

    -- XOR any remaining bytes of previous CRC into LUT CRC output (i.e. when data width < 3)
    CRC_out <= lut_crc_out xor std_logic_vector(shift_right(unsigned(crc_out_r), 8));

    -- Output CRC
    crc <= (not crc_out_r);

end architecture behavioral;
