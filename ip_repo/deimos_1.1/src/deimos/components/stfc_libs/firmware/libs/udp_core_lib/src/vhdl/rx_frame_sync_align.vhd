-- <h---------------------------------------------------------------------------
--! @file rx_frame_sync_align.vhd
--! @page rxframesyncalignpage Rx Frame Sync Align
--!
--! \includedoc esdg_stfc_image.md
--!
--! ### Brief ###
--! Parses 10GbE XMII data to find a start character then waits for the the
--! set number of bytes of the preamble. Outputs an Axi4s Packet with data
--! starting after the preamble & finishing on the last '0' MII control flag.
--!
--! ### License ###
--! Copyright(c) 2021 UNITED KINGDOM RESEARCH AND INNOVATION
--! Licensed under the BSD 3-Clause license. See LICENSE file in the project
--! root for details.
-- ---------------------------------------------------------------------------h>
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library axi4_lib;
use axi4_lib.axi4s_pkg.all;

library udp_core_lib;
use udp_core_lib.udp_core_pkg.all;

entity rx_frame_sync_align is
    generic(
        G_UDP_CORE_BYTES    : integer := 8                                              --! Width of Data Bus In Bytes
    );
    port(
        udp_core_clk        : in  std_logic;                                            --! Clk
        udp_core_rst_s_n    : in  std_logic;                                            --! Active Low synchronous Reset
        xgmii_rx_d          : in  std_logic_vector(G_UDP_CORE_BYTES * 8 - 1 downto 0);  --! XGMII Input Data Bus
        xgmii_rx_c          : in  std_logic_vector(G_UDP_CORE_BYTES - 1 downto 0);      --! XGMII Input Control Bus
        axi4s_out_miso      : in  t_axi4s_miso := c_axi4s_miso_default;                 --! Axi4s Output Backpressure, currently unused
        axi4s_out_mosi      : out t_axi4s_mosi                                          --! Axi4s Aligned Data Out
    );
end rx_frame_sync_align;

architecture fsm of rx_frame_sync_align is

    constant C_MII_C_ALL_DATA_FLAG : std_logic_vector(G_UDP_CORE_BYTES - 1 downto 0) := (others => '0');

    type state_type is (
        wait_for_mii_start,
        align_mii_data
    );

    function reduce_and(
        vector_in : in std_logic_vector)
    return std_logic is
        variable r_and : std_logic;
    begin
        r_and := '1';
        for i in 0 to vector_in'length - 1 loop
            r_and := r_and and vector_in(i);
        end loop;
        return r_and;
    end;

    signal axi4s_out_mosi_int : t_axi4s_mosi;

    signal xgmii_rx_d_prev : std_logic_vector(G_UDP_CORE_BYTES * 8 - 1 downto 0);
    signal xgmii_rx_c_prev : std_logic_vector(G_UDP_CORE_BYTES - 1 downto 0);
    signal xgmii_rx_d_curr : std_logic_vector(G_UDP_CORE_BYTES * 8 - 1 downto 0);
    signal xgmii_rx_c_curr : std_logic_vector(G_UDP_CORE_BYTES - 1 downto 0);

    signal ctrl_bit_i : integer range 0 to C_PREAMBLE_BYTES := 0;

    signal start_char : std_logic_vector(7 downto 0);
    signal next_state : state_type := wait_for_mii_start;

begin

    axi4s_out_mosi <= axi4s_out_mosi_int;

    start_char <= C_START_CHAR_8_10 when G_UDP_CORE_BYTES = 1 else C_START_CHAR_64_66;

    fsm_proc : process(udp_core_clk)
        variable tmp_ctrl_reg     : std_logic_vector(G_UDP_CORE_BYTES - 1 downto 0);
        variable nxt_tmp_ctrl_reg : std_logic_vector(G_UDP_CORE_BYTES - 1 downto 0);
        variable ctrl_tmp         : integer range 0 to G_UDP_CORE_BYTES - 1;

    begin
        if (rising_edge(udp_core_clk)) then
            if (udp_core_rst_s_n = '0') then
                ctrl_bit_i                <= 0;
                xgmii_rx_d_prev           <= (others => '1');
                xgmii_rx_c_prev           <= (others => '1');
                xgmii_rx_d_curr           <= (others => '1');
                xgmii_rx_c_curr           <= (others => '1');
                axi4s_out_mosi_int.tvalid <= '0';
                next_state                <= wait_for_mii_start;
            else
                --Register Data and Control
                xgmii_rx_d_curr <= xgmii_rx_d;
                xgmii_rx_c_curr <= xgmii_rx_c;
                xgmii_rx_d_prev <= xgmii_rx_d_curr;
                xgmii_rx_c_prev <= xgmii_rx_c_curr;

                --State Machine
                case next_state is
                    when wait_for_mii_start =>
                        axi4s_out_mosi_int.tvalid                               <= '0';
                        axi4s_out_mosi_int.tlast                                <= '0';
                        axi4s_out_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0) <= (others => '0');

                        ctrl_tmp := tkeep_to_int(xgmii_rx_c_prev(G_UDP_CORE_BYTES - 1 downto 0));
                        if xgmii_rx_d_prev((ctrl_tmp + 1) * 8 - 1 downto (ctrl_tmp * 8)) = start_char then
                            ctrl_bit_i <= ctrl_tmp;
                            next_state <= align_mii_data;
                        end if;

                    when align_mii_data =>
                        if ctrl_bit_i = 0 then -- No Aligning Needed
                            axi4s_out_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= xgmii_rx_d_prev(G_UDP_CORE_BYTES * 8 - 1 downto 0);
                        else            -- Preamble wasn't aligned from PHY
                            axi4s_out_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= std_logic_vector(shift_left(unsigned(xgmii_rx_d_curr), (G_UDP_CORE_BYTES - ctrl_bit_i) * 8) or shift_right(unsigned(xgmii_rx_d_prev), ctrl_bit_i * 8));
                        end if;
                        axi4s_out_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0) <= (others => '1');
                        axi4s_out_mosi_int.tvalid                               <= '1';

                        -- Use Variables for Temporary Slipped Control and Data
                        if ctrl_bit_i = 0 then
                            tmp_ctrl_reg     := xgmii_rx_c_prev;
                            nxt_tmp_ctrl_reg := xgmii_rx_c_curr;
                        else
                            tmp_ctrl_reg     := std_logic_vector(shift_left(unsigned(xgmii_rx_c_curr), G_UDP_CORE_BYTES - ctrl_bit_i) or shift_right(unsigned(xgmii_rx_c_prev), ctrl_bit_i));
                            nxt_tmp_ctrl_reg := std_logic_vector(shift_left(unsigned(xgmii_rx_c), G_UDP_CORE_BYTES - ctrl_bit_i) or shift_right(unsigned(xgmii_rx_c_curr), ctrl_bit_i));
                        end if;

                        if tmp_ctrl_reg /= C_MII_C_ALL_DATA_FLAG then
                            axi4s_out_mosi_int.tlast                                <= '1';
                            axi4s_out_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0) <= not tmp_ctrl_reg;
                            next_state                                              <= wait_for_mii_start;
                        elsif tmp_ctrl_reg = C_MII_C_ALL_DATA_FLAG and (reduce_and(nxt_tmp_ctrl_reg)) = '1' then
                            axi4s_out_mosi_int.tlast <= '1';
                            next_state               <= wait_for_mii_start;
                        end if;

                end case;
            end if;
        end if;
    end process fsm_proc;

end architecture fsm;
