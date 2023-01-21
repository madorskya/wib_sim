-- <h---------------------------------------------------------------------------
--! @file tx_path_crc_mii.vhd
--! @page txpathcrcmiipage Tx Path CRC Mii
--!
--! \includedoc esdg_stfc_image.md
--!
--! ### Brief ###
--! Converts 8B Axi4s to XGMII, adds the necessary preamble, calculates and
--! inserts a CRC32 field, and handles start, end and idle characters for 64/66b
--! transmission. The output is a pseudo Axi4s record; data is on tdata and
--! ctrl is on tkeep, all other signals can be ignored.
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

library crc_lib;
use crc_lib.crc32_64_pkg.all;

entity tx_path_crc_mii is
    generic(
        G_UDP_CORE_BYTES    : natural := 8;             --! Width of Data Bus In Bytes
        G_CRC_TYPE          : string  := "soft_crc_lut" --! Set CRC Type
    );
    port(
        clk                 : in  std_logic;            --! Clk
        rst_s_n             : in  std_logic;            --! Active Low Reset
        axi4s_s_mosi        : in  t_axi4s_mosi;         --! Axi4s Ethernet Packets In
        axi4s_m_mosi        : out t_axi4s_mosi          --! XGMII Ethernet Packets Out

    );
end entity tx_path_crc_mii;

architecture behavioural of tx_path_crc_mii is
    --------------------------------------------------------------------------------
    -- Constants for Calculating Boundary Positions and to construct and index "trailer" Words:
    --------------------------------------------------------------------------------
    constant C_PREAMBLE_RATIO     : integer                                             := (C_PREAMBLE_BYTES / G_UDP_CORE_BYTES);
    constant C_PIPE_LENGTH        : integer                                             := udp_maximum(C_PREAMBLE_RATIO, 2); --Needs to be a minimum of 3 to allow for delay in CRC calc, but can be higher with smaller widths
    constant C_FCS_INSERT_INDEX   : integer                                             := (C_PIPE_LENGTH - 2) * G_UDP_CORE_BYTES;
    constant C_MIN_TRAILER_BYTES  : integer                                             := G_UDP_CORE_BYTES + C_FCS_BYTES + C_MIN_IFG_BYTES; --Longest possible trailer
    constant C_TRAILER_WORDS      : integer                                             := header_words(C_MIN_TRAILER_BYTES, G_UDP_CORE_BYTES) + 1; --Resulting number of trailer words rounded up
    constant C_TRAILER_BYTES      : integer                                             := C_TRAILER_WORDS * G_UDP_CORE_BYTES;
    constant C_CRC_INIT_WORD      : std_logic_vector(31 downto 0)                       := X"FFFFFFFF";
    constant C_ONES               : std_logic_vector(C_TRAILER_BYTES - 1 downto 0)      := (others => '1');
    constant C_PREAMBLE_DATA_WORD : std_logic_vector(C_PREAMBLE_BYTES * 8 - 1 downto 0) := return_preamble(G_UDP_CORE_BYTES);

    --------------------------------------------------------------------------------
    -- State Machine Declarations:
    --------------------------------------------------------------------------------
    type t_crc_mii_next_state is (
        idle,
        preamble_insert,
        insert,
        trailer_insert
    );

    signal crc_mii_next_state : t_crc_mii_next_state := idle;

    --------------------------------------------------------------------------------
    -- Signals:
    --------------------------------------------------------------------------------
    signal axi4s_m_mosi_int    : t_axi4s_mosi; --:= C_XGMII_RECORD_RST;
    signal preamble_xmgii_word : t_xgmii_record;

    --Pipeline for storing data, needed to delay to fit in preamble, and allow for delay in CRC calc
    signal pipeline_reg    : std_logic_vector(C_PIPE_LENGTH * G_UDP_CORE_BYTES * 8 - 1 downto 0);
    signal pipeline_tlast  : std_logic_vector(C_PIPE_LENGTH - 1 downto 0);
    signal pipeline_tvalid : std_logic_vector(C_PIPE_LENGTH - 1 downto 0);

    signal last_char      : integer range 0 to G_UDP_CORE_BYTES - 1;
    signal trailer_length : integer range 0 to C_TRAILER_BYTES;
    signal crc_out_int    : std_logic_vector(4 * 8 - 1 downto 0);
    signal src_rdy        : std_logic;

    signal clear_fcs_n  : std_logic;
    signal reset_en     : std_logic;
    signal eof_fcs      : std_logic;
    signal finish_early : std_logic;
    signal finish_late  : std_logic;
    signal crc_width    : std_logic_vector(5 downto 0);
    signal crc_enable   : std_logic;

begin

    --Ensure correct timing of preamble depending on pipeline lengths
    src_rdy <= axi4s_s_mosi.tvalid when G_UDP_CORE_BYTES <= 4 else pipeline_tvalid(1);
    eof_fcs <= pipeline_tlast(C_PIPE_LENGTH - 2);

    axi4s_m_mosi <= axi4s_m_mosi_int;

    preamble_gen : if (G_UDP_CORE_BYTES > C_PREAMBLE_BYTES) generate
        preamble_xmgii_word <= wider_preamble_packer(G_UDP_CORE_BYTES);
    end generate preamble_gen;

    crc_width <= std_logic_vector(to_unsigned(tkeep_to_int(axi4s_s_mosi.tkeep(G_UDP_CORE_BYTES - 1 downto 0)), 6));

    pipeline_update : process(clk)
    begin
        if (rising_edge(clk)) then
            if (rst_s_n = '0') then
                pipeline_reg    <= (others => '0');
                pipeline_tlast  <= (others => '0');
                pipeline_tvalid <= (others => '0');
            else
                pipeline_reg    <= axi4s_s_mosi.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) & pipeline_reg(C_PIPE_LENGTH * G_UDP_CORE_BYTES * 8 - 1 downto G_UDP_CORE_BYTES * 8);
                pipeline_tlast  <= (axi4s_s_mosi.tvalid and axi4s_s_mosi.tlast) & pipeline_tlast(C_PIPE_LENGTH - 1 downto 1);
                pipeline_tvalid <= axi4s_s_mosi.tvalid & pipeline_tvalid(C_PIPE_LENGTH - 1 downto 1);

                if axi4s_s_mosi.tlast = '1' then
                    last_char <= tkeep_to_int(axi4s_s_mosi.tkeep(G_UDP_CORE_BYTES - 1 downto 0));
                end if;

                --CRC Calculates are finished now, populate trailer
                if pipeline_tlast(C_PIPE_LENGTH - 1) = '1' then
                    trailer_length <= last_char + 1 + 16;
                    clear_fcs_n    <= '1';
                    reset_en       <= '1';
                elsif (pipeline_tlast(C_PIPE_LENGTH - 2) = '1') then
                    reset_en    <= '0';
                    clear_fcs_n <= '0';
                else
                    reset_en    <= '0';
                    clear_fcs_n <= '1';
                end if;
            end if;
        end if;
    end process;

    crc_mii_fsm : process(clk)
        variable preamble_idx_i                                        : integer range 0 to C_PREAMBLE_BYTES := 0;
        variable trailer_idx_i                                         : integer range 0 to 31               := 0;
        variable complete_trailer_data_int, complete_trailer_data_int2 : std_logic_vector(C_TRAILER_BYTES * 8 - 1 downto 0);
        variable complete_trailer_ctrl_int                             : std_logic_vector(C_TRAILER_BYTES - 1 downto 0);
    begin
        if (rising_edge(clk)) then
            if (rst_s_n = '0') then
                axi4s_m_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= mii_idle(G_UDP_CORE_BYTES);
                axi4s_m_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0)     <= (others => '1');
                axi4s_m_mosi_int.tvalid                                   <= '0';
                axi4s_m_mosi_int.tlast                                    <= '0';
                preamble_idx_i                                            := 0;
                crc_mii_next_state                                        <= idle;

            else
                case crc_mii_next_state is
                    when idle =>
                        finish_late                                               <= '0';
                        finish_early                                              <= '0';
                        axi4s_m_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= mii_idle(G_UDP_CORE_BYTES);
                        axi4s_m_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0)     <= (others => '1');
                        axi4s_m_mosi_int.tvalid                                   <= '0';
                        axi4s_m_mosi_int.tlast                                    <= '0';

                        if src_rdy = '1' then --The source of these change depending on the length of the pipeline
                            axi4s_m_mosi_int.tvalid <= '1';
                            preamble_idx_i          := 0;
                            if (C_PREAMBLE_RATIO > 1) then
                                -- Media Independent Interface Width Less Than the Pre-Amble Word Width:
                                axi4s_m_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= C_PREAMBLE_DATA_WORD(((preamble_idx_i + 1) * G_UDP_CORE_BYTES * 8) - 1 downto (preamble_idx_i * G_UDP_CORE_BYTES * 8));
                                axi4s_m_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0)     <= C_PREAMBLE_CTRL_WORD(((preamble_idx_i + 1) * G_UDP_CORE_BYTES) - 1 downto (preamble_idx_i * G_UDP_CORE_BYTES));
                                preamble_idx_i                                            := preamble_idx_i + 1;
                                crc_mii_next_state                                        <= preamble_insert;
                            elsif (C_PREAMBLE_RATIO = 1) then
                                -- Media Independent Interface Width Matches the Pre-Amble Word Width:
                                axi4s_m_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= C_PREAMBLE_DATA_WORD;
                                axi4s_m_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0)     <= C_PREAMBLE_CTRL_WORD;
                                crc_mii_next_state                                        <= insert;
                            elsif (C_PREAMBLE_RATIO < 1) then
                                -- Media Independent Interface Width Greater Than the Pre-Amble Word Width:
                                axi4s_m_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= preamble_xmgii_word.xgmii_d(G_UDP_CORE_BYTES * 8 - 1 downto 0);
                                axi4s_m_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0)     <= preamble_xmgii_word.xgmii_c(G_UDP_CORE_BYTES - 1 downto 0);
                                crc_mii_next_state                                        <= insert;
                            end if;
                        end if;

                    when preamble_insert =>
                        axi4s_m_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= C_PREAMBLE_DATA_WORD(((preamble_idx_i + 1) * G_UDP_CORE_BYTES * 8) - 1 downto (preamble_idx_i * G_UDP_CORE_BYTES * 8));
                        axi4s_m_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0)     <= C_PREAMBLE_CTRL_WORD(((preamble_idx_i + 1) * G_UDP_CORE_BYTES) - 1 downto (preamble_idx_i * G_UDP_CORE_BYTES));
                        axi4s_m_mosi_int.tvalid                                   <= '1';

                        if (preamble_idx_i + 1 < C_PREAMBLE_RATIO) then
                            preamble_idx_i := preamble_idx_i + 1;
                        else
                            crc_mii_next_state <= insert;
                        end if;

                    when insert =>
                        axi4s_m_mosi_int.tvalid <= '1';
                        if (eof_fcs = '1') then
                            --complete_trailer_data_int2((last_char+1)*8-1 downto 0) := pipeline_reg((C_FCS_INSERT_INDEX+last_char+1)*8-1 downto C_FCS_INSERT_INDEX*8);
                            --complete_trailer_data_int2((last_char+5)*8-1 downto (last_char+1)*8) := crc_out_int;
                            --complete_trailer_data_int2((last_char+6)*8-1 downto (last_char+5)*8) := C_TERMINATE_CHAR;
                            complete_trailer_data_int := std_logic_vector(shift_left(unsigned(mii_idle(C_TRAILER_BYTES)), (last_char + 6) * 8)) or std_logic_vector(shift_left(unsigned(resize(unsigned(C_TERMINATE_CHAR), complete_trailer_data_int'length)), (last_char + 5) * 8)) or std_logic_vector(shift_left(unsigned(resize(unsigned(crc_out_int), complete_trailer_data_int'length)), (last_char + 1) * 8));
                            for i in 0 to C_TRAILER_BYTES - 1 loop
                                if i <= last_char then
                                    complete_trailer_data_int((i + 1) * 8 - 1 downto i * 8) := pipeline_reg((C_FCS_INSERT_INDEX + i + 1) * 8 - 1 downto (C_FCS_INSERT_INDEX + i) * 8);
                                end if;
                            end loop;
                            complete_trailer_ctrl_int := std_logic_vector(shift_left(unsigned(C_ONES), last_char + 5));
                        end if;

                        if (pipeline_tlast(0) = '0') then
                            axi4s_m_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= pipeline_reg(G_UDP_CORE_BYTES * 8 - 1 downto 0);
                            axi4s_m_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0)     <= (others => '0');

                        elsif (pipeline_tlast(0) = '1') then
                            trailer_idx_i := 1;

                            if (trailer_idx_i * G_UDP_CORE_BYTES >= trailer_length) then
                                --If complete trailer fits on 1 word send to crc inserter and return to idle
                                axi4s_m_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= complete_trailer_data_int(G_UDP_CORE_BYTES * 8 - 1 downto 0);
                                axi4s_m_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0)     <= complete_trailer_ctrl_int(G_UDP_CORE_BYTES - 1 downto 0);
                                crc_mii_next_state                                        <= idle;
                            else
                                --If the complete trailer takes more than one cycle
                                axi4s_m_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= complete_trailer_data_int(G_UDP_CORE_BYTES * 8 - 1 downto 0);
                                axi4s_m_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0)     <= complete_trailer_ctrl_int(G_UDP_CORE_BYTES - 1 downto 0);
                                trailer_idx_i                                             := trailer_idx_i + 1;
                                crc_mii_next_state                                        <= trailer_insert;
                            end if;
                        end if;

                    when trailer_insert =>
                        axi4s_m_mosi_int.tvalid                                   <= '1';
                        axi4s_m_mosi_int.tlast                                    <= '0';
                        finish_early                                              <= '0';
                        axi4s_m_mosi_int.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0) <= complete_trailer_data_int((G_UDP_CORE_BYTES * 8 * trailer_idx_i) - 1 downto G_UDP_CORE_BYTES * 8 * (trailer_idx_i - 1));
                        axi4s_m_mosi_int.tkeep(G_UDP_CORE_BYTES - 1 downto 0)     <= complete_trailer_ctrl_int(G_UDP_CORE_BYTES * trailer_idx_i - 1 downto G_UDP_CORE_BYTES * (trailer_idx_i - 1));
                        if (trailer_idx_i = C_TRAILER_WORDS - 5) then
                            finish_late <= '1';
                        else
                            finish_late <= '0';
                        end if;

                        if (trailer_idx_i * G_UDP_CORE_BYTES >= trailer_length) then
                            crc_mii_next_state     <= idle;
                            axi4s_m_mosi_int.tlast <= '1';
                            finish_late            <= '0';
                        else
                            trailer_idx_i := trailer_idx_i + 1;
                        end if;
                end case;
            end if;
        end if;
    end process;

    soft_crc_gen : if (G_CRC_TYPE = "soft_crc") generate
    begin
        -- Soft CRC64  instantiation
        crc2 : entity crc_lib.crc32_64
            generic map(
                INIT     => C_CRC_INIT_WORD,
                LL_WIDTH => G_UDP_CORE_BYTES * 8
            )
            port map(
                clk     => clk,
                rst_s_n => clear_fcs_n,
                width   => crc_width,
                enable  => crc_enable,
                data    => axi4s_s_mosi.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0),
                crc     => crc_out_int
            );
    end generate soft_crc_gen;

    crc_lut_gen : if (G_CRC_TYPE = "soft_crc_lut") generate
    begin
        crc3_inst : entity crc_lib.crc32_n_lut_based
            generic map(
                INIT     => C_CRC_INIT_WORD,
                LL_WIDTH => G_UDP_CORE_BYTES * 8
            )
            port map(
                clk     => clk,
                rst_s_n => clear_fcs_n,
                width   => crc_width,
                enable  => crc_enable,
                data    => axi4s_s_mosi.tdata(G_UDP_CORE_BYTES * 8 - 1 downto 0),
                crc     => crc_out_int
            );
    end generate crc_lut_gen;

    crc_enable <= axi4s_s_mosi.tvalid or reset_en;

end architecture behavioural;
