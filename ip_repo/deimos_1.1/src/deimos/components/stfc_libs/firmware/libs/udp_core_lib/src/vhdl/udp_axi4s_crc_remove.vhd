-- <h---------------------------------------------------------------------------
--! @file   udp_axi4s_crc_remove.vhd
--! @page udpaxi4scrcremovepage UDP Axi4s CRC Remove
--!
--! \includedoc esdg_stfc_image.md
--!
--! ### Brief ###
--! This module removes the CRC From The End Of Axi4s Ethernet Packets.
--!
--! ### License ###
--! Copyright(c) 2021 UNITED KINGDOM RESEARCH AND INNOVATION
--! Licensed under the BSD 3-Clause license. See LICENSE file in the project
--! root for details.
-- ---------------------------------------------------------------------------h>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library udp_core_lib;
use udp_core_lib.udp_core_pkg.all;

library axi4_lib;
use axi4_lib.axi4s_pkg.all;

library common_stfc_lib;
use common_stfc_lib.common_stfc_pkg.all;

entity udp_axi4s_crc_remove is
    generic(
        G_UDP_CORE_BYTES    : natural := 8                      --! Width of Data Bus In Bytes
    );
    port(
        clk                 : in  std_logic;                    --! Clk
        rst_s_n             : in  std_logic;                    --! Active Low Reset
        axi4s_in_mosi       : in  t_axi4s_mosi;                 --! Axi4s In With CRC Data
        axi4s_in_miso       : out t_axi4s_miso;                 --! Axi4s In With CRC Backpressure
        axi4s_out_mosi      : out t_axi4s_mosi;                 --! Axi4s Out Removed CRC Data
        axi4s_out_miso      : in  t_axi4s_miso;                 --! Axi4s Out Removed CRC backpressure
        crc                 : out std_logic_vector(31 downto 0) --! The Removed CRC
    );
end entity udp_axi4s_crc_remove;

architecture behavioural of udp_axi4s_crc_remove is

    constant C_DELAYS     : integer := udp_maximum(4 / G_UDP_CORE_BYTES, 1);
    signal delay_int      : t_axi4s_mosi_arr(0 to C_DELAYS);
    signal store_mosi     : t_axi4s_mosi;
    signal stored_data    : std_logic;
    signal in_miso_ready  : std_logic;
    signal out_miso_ready : std_logic;
    signal last_word      : std_logic;
    signal valid_input    : std_logic;

begin
    axi4s_in_miso.tready <= in_miso_ready;
    out_miso_ready       <= axi4s_out_miso.tready;

    valid_input <= (axi4s_in_mosi.tvalid and in_miso_ready) or stored_data;

    fcs_remove_procc : process(clk)
    begin
        if (rising_edge(clk)) then
            if (rst_s_n = '0') then
                stored_data   <= '0';
                in_miso_ready <= '0';
            else

                axi4s_out_mosi.tkeep(G_UDP_CORE_BYTES - 1 downto 0) <= (others => '0');

                --                --Update Delay Registers Logic
                --                if valid_input = '1' and axi4s_in_mosi.tlast = '1' then
                --                    --Ignore CRC In Delay Registers by deactivating valid signals
                --                    delay_int(C_DELAYS - 1).tvalid <= '0';
                --                    if C_DELAYS > 1 then
                --                        for i in 1 to C_DELAYS -1 loop
                --                            delay_int(i).tvalid <= '0';
                --                        end loop;
                --                    end if;

                if out_miso_ready = '1' and stored_data = '0' then
                    in_miso_ready <= '1';
                    if in_miso_ready = '1' and axi4s_in_mosi.tvalid = '1' then
                        delay_int(C_DELAYS - 1) <= axi4s_in_mosi;
                        if C_DELAYS > 1 then
                            for i in 1 to C_DELAYS - 1 loop
                                delay_int(i - 1) <= delay_int(i);
                            end loop;
                        end if;
                    end if;
                elsif out_miso_ready = '1' and stored_data = '1' then
                    stored_data             <= '0';
                    in_miso_ready           <= '1';
                    delay_int(C_DELAYS - 1) <= store_mosi;
                    if C_DELAYS > 1 then
                        for i in 1 to C_DELAYS loop
                            delay_int(i - 1) <= delay_int(i);
                        end loop;
                    end if;
                elsif out_miso_ready = '0' and in_miso_ready = '1' then
                    in_miso_ready <= '0';
                    if axi4s_in_mosi.tvalid = '1' then
                        stored_data <= '1';
                        store_mosi  <= axi4s_in_mosi;
                    end if;
                else
                    in_miso_ready <= '0';
                end if;

                --Output MOSI Logic
                if C_DELAYS = 1 and out_miso_ready = '1' then
                    last_word <= '0';
                    if valid_input = '1' then
                        axi4s_out_mosi <= delay_int(0);
                        if axi4s_in_mosi.tlast = '1' then
                            if tkeep_to_int(axi4s_in_mosi.tkeep(G_UDP_CORE_BYTES - 1 downto 0)) - 4 < 0 then
                                axi4s_out_mosi.tlast                                <= '1';
                                axi4s_out_mosi.tkeep(G_UDP_CORE_BYTES - 1 downto 0) <= int_to_tkeep(tkeep_to_int(axi4s_in_mosi.tkeep(G_UDP_CORE_BYTES - 1 downto 0)) - 4 + G_UDP_CORE_BYTES, G_UDP_CORE_BYTES);
                                delay_int(0).tvalid                                 <= '0';
                            else
                                last_word <= '1';
                            end if;
                        end if;
                    elsif last_word = '1' then
                        axi4s_out_mosi                                      <= delay_int(0);
                        axi4s_out_mosi.tlast                                <= '1';
                        axi4s_out_mosi.tkeep(G_UDP_CORE_BYTES - 1 downto 0) <= int_to_tkeep(tkeep_to_int(delay_int(0).tkeep(G_UDP_CORE_BYTES - 1 downto 0)) - 4, G_UDP_CORE_BYTES);
                        delay_int(0).tvalid                                 <= '0';
                    else
                        axi4s_out_mosi.tvalid <= '0';
                    end if;
                elsif C_DELAYS /= 1 and out_miso_ready = '1' then
                    if valid_input = '1' then
                        axi4s_out_mosi <= delay_int(0);
                        if axi4s_in_mosi.tlast = '1' then
                            axi4s_out_mosi.tlast <= '1';
                            axi4s_out_mosi.tkeep <= axi4s_in_mosi.tkeep;
                            for i in 0 to C_DELAYS - 1 loop
                                delay_int(i).tvalid <= '0';
                                delay_int(i).tlast  <= '0';
                            end loop;
                        end if;
                    else
                        axi4s_out_mosi.tlast  <= '0';
                        axi4s_out_mosi.tvalid <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;

end architecture behavioural;
