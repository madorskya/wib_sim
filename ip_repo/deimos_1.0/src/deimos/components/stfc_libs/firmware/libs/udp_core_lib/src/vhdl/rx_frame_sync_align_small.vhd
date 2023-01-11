-- <h---------------------------------------------------------------------------
--! @file   rx_frame_sync_align_small.vhd
--! @page rxframesyncalignsmallpage Rx Frame Sync Align Small
--!
--! \includedoc esdg_stfc_image.md
--!
--! ### Brief ###
--! Parses 1GbE MII signals to find a start character then waits for the set
--! number of preamble bytes. Outputs an Axi4s Packet with data starting from
--! after the preamble and finishing on the last '0' MII control flag.
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

entity rx_frame_sync_align_small is
    generic(
        G_UDP_CORE_BYTES    : integer := 1                                              --! Width of Data Bus In Bytes
    );
    port(
        udp_core_clk        : in  std_logic;                                            --! Clk
        udp_core_rst_s_n    : in  std_logic;                                            --! Active Low synchronous Reset
        xgmii_rx_d          : in  std_logic_vector(G_UDP_CORE_BYTES * 8 - 1 downto 0);  --! MII Input Data Byte
        xgmii_rx_c          : in  std_logic_vector(G_UDP_CORE_BYTES - 1 downto 0);      --! MII Input Control Bit
        axi4s_out_miso      : in  t_axi4s_miso := c_axi4s_miso_default;                 --! Axi4s Output Backpressure, Currently Unused
        axi4s_out_mosi      : out t_axi4s_mosi                                          --! Axi4s Data Out
    );
end rx_frame_sync_align_small;

architecture fsm of rx_frame_sync_align_small is

    constant C_WAIT_CYCLES         : integer                                         := (C_PREAMBLE_BYTES / G_UDP_CORE_BYTES);
    constant C_MII_C_ALL_DATA_FLAG : std_logic_vector(G_UDP_CORE_BYTES - 1 downto 0) := (others => '0');

    type state_type is (
        wait_for_mii_start,
        wait_cycles,
        align_mii_data
    );

    signal axi4_out_mosi_int : t_axi4s_mosi;
    signal xgmii_rx_d_prev   : std_logic_vector(G_UDP_CORE_BYTES * 8 - 1 downto 0);
    signal xgmii_rx_c_prev   : std_logic_vector(G_UDP_CORE_BYTES - 1 downto 0);
    signal xgmii_rx_d_curr   : std_logic_vector(G_UDP_CORE_BYTES * 8 - 1 downto 0);
    signal xgmii_rx_c_curr   : std_logic_vector(G_UDP_CORE_BYTES - 1 downto 0);
    signal byte_shift_i      : integer range 0 to G_UDP_CORE_BYTES := 0;
    signal ctrl_bit_i        : integer range 0 to C_PREAMBLE_BYTES := 0;
    signal next_state        : state_type                          := wait_for_mii_start;
    signal start_char        : std_logic_vector(7 downto 0);

begin

    start_char     <= C_START_CHAR_8_10 when G_UDP_CORE_BYTES = 1 else C_START_CHAR_64_66;
    axi4s_out_mosi <= axi4_out_mosi_int;

    fsm_proc : process(udp_core_clk)
        variable wait_cycles_i : integer range 0 to C_WAIT_CYCLES := 0;
    begin
        if (rising_edge(udp_core_clk)) then
            if (udp_core_rst_s_n = '0') then
                byte_shift_i             <= 0;
                ctrl_bit_i               <= 0;
                xgmii_rx_d_prev          <= (others => '1');
                xgmii_rx_c_prev          <= (others => '1');
                xgmii_rx_d_curr          <= (others => '1');
                xgmii_rx_c_curr          <= (others => '1');
                axi4_out_mosi_int.tvalid <= '0';
                next_state               <= wait_for_mii_start;
                wait_cycles_i            := 1;
            else
                xgmii_rx_d_curr <= xgmii_rx_d;
                xgmii_rx_c_curr <= xgmii_rx_c;
                xgmii_rx_d_prev <= xgmii_rx_d_curr;
                xgmii_rx_c_prev <= xgmii_rx_c_curr;

                case next_state is
                    when wait_for_mii_start =>
                        axi4_out_mosi_int.tvalid <= '0';
                        axi4_out_mosi_int.tlast  <= '0';

                        if G_UDP_CORE_BYTES = 1 then
                            if xgmii_rx_d_prev(7 downto 0) = start_char then
                                ctrl_bit_i    <= 0;
                                byte_shift_i  <= 1;
                                next_state    <= wait_cycles;
                                wait_cycles_i := 1;
                            end if;
                        else
                            -- Check for Correct Control on Incoming MII Stream:
                            control_bit_loop : for ctrl_bit in 1 to G_UDP_CORE_BYTES - 1 loop
                                if (unsigned(xgmii_rx_c_prev(G_UDP_CORE_BYTES - 1 downto ctrl_bit)) = 0 and xgmii_rx_c_prev(ctrl_bit - 1) = '1') then
                                    -- The Control Word Indicates the Preamble Word is in this Sub-Word of the Incoming MII Data:
                                    if (xgmii_rx_d_prev((ctrl_bit * 8) - 1 downto (ctrl_bit * 8) - 8) = start_char) then
                                        -- The Corresponding Byte on MII Data is start_char:
                                        byte_shift_i  <= ctrl_bit;
                                        ctrl_bit_i    <= ctrl_bit - 1;
                                        next_state    <= wait_cycles;
                                        wait_cycles_i := 1;
                                    end if;
                                end if;
                            end loop control_bit_loop;
                        end if;

                    when wait_cycles =>
                        if (wait_cycles_i = C_WAIT_CYCLES - 1) then
                            next_state <= align_mii_data;
                        else
                            wait_cycles_i := wait_cycles_i + 1;
                        end if;
                    --if xgmii_rx_d_prev(G_UDP_CORE_BYTES*8-1 downto 0) = X"D5" then		--this was changed as IESG board only received 5 preamble packets
                    --next_state <= align_mii_data;
                    --end if;

                    when align_mii_data =>
                        if ctrl_bit_i = 0 or G_UDP_CORE_BYTES = 1 then
                            -- Data Doesn't Need aligning if the Preamble is Detected in the last Sub-Word of Incoming MII Data:
                            axi4_out_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= xgmii_rx_d_prev(G_UDP_CORE_BYTES * 8 - 1 downto 0);
                        else
                            axi4_out_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= xgmii_rx_d_curr((byte_shift_i - 1) * 8 - 1 downto 0) & xgmii_rx_d_prev(G_UDP_CORE_BYTES * 8 - 1 downto (byte_shift_i - 1) * 8);
                        end if;
                        axi4_out_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0) <= (others => '0');
                        axi4_out_mosi_int.tvalid                               <= '1';

                        if xgmii_rx_c_prev /= C_MII_C_ALL_DATA_FLAG or (xgmii_rx_c_curr /= C_MII_C_ALL_DATA_FLAG and G_UDP_CORE_BYTES = 1) then
                            axi4_out_mosi_int.tlast <= '1';
                            for n in (G_UDP_CORE_BYTES - 1) downto 0 loop
                                --Location of last data character
                                if (xgmii_rx_c_prev(n) = '0') then
                                    axi4_out_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0) <= std_logic_vector(to_unsigned(n, G_UDP_CORE_BYTES));
                                    exit;
                                end if;
                            end loop;
                            next_state              <= wait_for_mii_start;
                        end if;

                end case;
            end if;
        end if;
    end process fsm_proc;

end architecture fsm;
