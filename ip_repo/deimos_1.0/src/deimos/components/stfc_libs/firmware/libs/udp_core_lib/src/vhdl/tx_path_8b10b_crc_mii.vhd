-- <h---------------------------------------------------------------------------
--! @file tx_path_8b10b_crc_mii.vhd
--! @page txpath8b10bcrcmiipage Tx Path 8b10b CRC Mii
--!
--! \includedoc esdg_stfc_image.md
--!
--! ### Brief ###
--! Converts 1B Axi4s to 1GbE MII; adds the necessary preamble, calculates and
--! inserts a CRC32 field, handles start, end & idle characters and even/odd
--! packet sizes for 8b/10b transmission
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

entity tx_path_8b10b_crc_mii is
    port(
        clk             : in  std_logic;                    --! Clk
        rst_s_n         : in  std_logic;                    --! Active Low synchronous Reset
        axi4s_s_mosi    : in  t_axi4s_mosi;                 --! Axi4s ethernet Packets In
        data_out        : out std_logic_vector(7 downto 0); --! Data Bus Out
        ctrl_out        : out std_logic;                    --! Control character out
        last_out        : out std_logic;                    --! Last out, unused
        valid_out       : out std_logic                     --! Valid out, unused
    );
end entity tx_path_8b10b_crc_mii;

architecture behavioural of tx_path_8b10b_crc_mii is
    --------------------------------------------------------------------------------
    -- Constants for Calculating Boundary Positions and to construct and index "trailer" Words:
    --------------------------------------------------------------------------------
    constant C_8B10B_WIDTH   : integer                       := 1;
    constant C_PIPE_LENGTH   : integer                       := 9; --Needs to be a minimum of 3 to allow for delay in CRC calc, but can be higher with smaller widths
    constant C_CRC_INIT_WORD : std_logic_vector(31 downto 0) := X"FFFFFFFF";
    --constant C_MIN_IFG                              : integer := 12;

    constant C_PREAMBLE_DATA_WORD : std_logic_vector(C_PREAMBLE_BYTES * 8 - 1 downto 0) := return_preamble(C_8B10B_WIDTH);
    constant C_IDLE_1             : std_logic_vector(7 downto 0)                        := X"BC";
    constant C_IDLE_2             : std_logic_vector(7 downto 0)                        := X"50";
    constant C_CORRECTING_IDLE    : std_logic_vector(7 downto 0)                        := X"C5";

    --------------------------------------------------------------------------------
    -- State Machine Declarations:
    --------------------------------------------------------------------------------
    type t_crc_mii_next_state is (
        idle,
        idle2,
        insert,
        trailer_insert,
        corr_idle,
        corr_idle2
    );

    --------------------------------------------------------------------------------
    -- Vendor Specific Attributes:
    --------------------------------------------------------------------------------
    attribute enum_encoding : string;
    attribute fsm_encoding  : string;
    -- Altera Attributes:
    attribute enum_encoding of t_crc_mii_next_state : type is "one-hot";

    -- Xilinx Attributes:
    attribute fsm_encoding of t_crc_mii_next_state : type is "one_hot";

    signal crc_mii_next_state : t_crc_mii_next_state := idle;
    signal odd_bytes          : boolean;
    signal pipe_length        : integer range 0 to 9;

    --------------------------------------------------------------------------------
    -- Signals:
    --------------------------------------------------------------------------------

    --Pipeline for storing data, needed to delay to fit in preamble, and allow for delay in CRC calc
    signal pipeline_reg     : std_logic_vector((C_PIPE_LENGTH + 1) * 8 - 1 downto 0);
    signal pipeline_eof     : std_logic_vector(C_PIPE_LENGTH downto 0);
    signal pipeline_src_rdy : std_logic_vector(C_PIPE_LENGTH downto 0);
    signal pipeline_control : std_logic_vector(C_PIPE_LENGTH downto 0);

    signal crc_out_int               : std_logic_vector(4 * 8 - 1 downto 0);
    signal clear_fcs_n               : std_logic;
    signal reset_en                  : std_logic;
    signal trailer_idx_i             : integer range 0 to 7;
    signal complete_trailer_data_int : std_logic_vector(7 * 8 - 1 downto 0);
    signal complete_trailer_ctrl_int : std_logic_vector(7 - 1 downto 0);

begin

    data_out(C_8B10B_WIDTH * 8 - 1 downto 0) <= pipeline_reg(C_8B10B_WIDTH * 8 - 1 downto 0);
    ctrl_out                                 <= pipeline_control(0);
    valid_out                                <= pipeline_src_rdy(0);
    last_out                                 <= pipeline_eof(0);

    crc_mii_fsm : process(clk)
    begin
        if (rising_edge(clk)) then
            if (rst_s_n = '0') then
                pipeline_reg        <= X"00" & C_PREAMBLE_DATA_WORD & C_IDLE_2;
                pipeline_src_rdy(0) <= '0';
                pipeline_eof(0)     <= '0';
                pipeline_control    <= (others => '1');
                crc_mii_next_state  <= idle;
                reset_en            <= '0';
                clear_fcs_n         <= '1';
            else
                case crc_mii_next_state is
                    when idle =>
                        pipe_length         <= C_PIPE_LENGTH - 1;
                        pipeline_reg        <= X"00" & C_PREAMBLE_DATA_WORD & C_IDLE_1;
                        pipeline_src_rdy(0) <= '0';
                        pipeline_eof(0)     <= '0';
                        pipeline_control    <= "0000000011";
                        crc_mii_next_state  <= idle2;
                        reset_en            <= '0';
                        clear_fcs_n         <= '1';
                        if axi4s_s_mosi.tvalid = '1' then
                            odd_bytes                                      <= true;
                            pipeline_reg((C_PIPE_LENGTH) * 8 - 1 downto 0) <= axi4s_s_mosi.tdata(7 downto 0) & pipeline_reg(C_PIPE_LENGTH * 8 - 1 downto 8);
                            pipeline_eof(C_PIPE_LENGTH - 1 downto 0)       <= axi4s_s_mosi.tlast & pipeline_eof(C_PIPE_LENGTH - 1 downto 1);
                            pipeline_src_rdy(C_PIPE_LENGTH - 1 downto 0)   <= axi4s_s_mosi.tvalid & pipeline_src_rdy(C_PIPE_LENGTH - 1 downto 1);
                            pipeline_control(C_PIPE_LENGTH - 1 downto 0)   <= '0' & pipeline_control(C_PIPE_LENGTH - 1 downto 1);
                            crc_mii_next_state                             <= insert;
                        end if;

                    when idle2 =>
                        pipe_length         <= C_PIPE_LENGTH;
                        pipeline_reg        <= X"00" & C_PREAMBLE_DATA_WORD & C_IDLE_2;
                        pipeline_src_rdy(0) <= '0';
                        pipeline_eof(0)     <= '0';
                        crc_mii_next_state  <= idle;
                        pipeline_control    <= "0000000010";
                        if axi4s_s_mosi.tvalid = '1' then
                            odd_bytes                                          <= true;
                            pipeline_reg((C_PIPE_LENGTH + 1) * 8 - 1 downto 0) <= axi4s_s_mosi.tdata(7 downto 0) & pipeline_reg(C_PIPE_LENGTH * 8 - 1 downto 8) & C_IDLE_2;
                            pipeline_control(0)                                <= '0';
                            pipeline_eof(C_PIPE_LENGTH downto 0)               <= axi4s_s_mosi.tlast & pipeline_eof(C_PIPE_LENGTH downto 1);
                            pipeline_src_rdy(C_PIPE_LENGTH downto 0)           <= axi4s_s_mosi.tvalid & pipeline_src_rdy(C_PIPE_LENGTH downto 1);
                            crc_mii_next_state                                 <= insert;
                        end if;

                    when insert =>
                        if axi4s_s_mosi.tvalid = '1' then
                            odd_bytes <= not odd_bytes;
                        end if;

                        if pipe_length = 9 then
                            pipeline_reg((pipe_length + 1) * 8 - 1 downto 0) <= axi4s_s_mosi.tdata(7 downto 0) & pipeline_reg(79 downto 8);
                            pipeline_eof(pipe_length downto 0)               <= (axi4s_s_mosi.tvalid and axi4s_s_mosi.tlast) & pipeline_eof(9 downto 1);
                            pipeline_src_rdy(pipe_length downto 0)           <= axi4s_s_mosi.tvalid & pipeline_src_rdy(9 downto 1);
                            pipeline_control(9 downto 0)                     <= '0' & pipeline_control(9 downto 1);
                        else
                            pipeline_reg((pipe_length + 1) * 8 - 1 downto 0) <= axi4s_s_mosi.tdata(7 downto 0) & pipeline_reg(71 downto 8);
                            pipeline_eof(pipe_length downto 0)               <= (axi4s_s_mosi.tvalid and axi4s_s_mosi.tlast) & pipeline_eof(8 downto 1);
                            pipeline_src_rdy(pipe_length downto 0)           <= axi4s_s_mosi.tvalid & pipeline_src_rdy(8 downto 1);
                            pipeline_control(8 downto 0)                     <= '0' & pipeline_control(8 downto 1);
                        end if;

                        if (pipeline_eof(pipe_length - 1) = '1') then
                            --This Keeps CRC Calculator On Long enough to output CRC
                            clear_fcs_n <= '1';
                            reset_en    <= '1';
                        elsif (pipeline_eof(pipe_length - 2) = '1') then
                            --Add CRC and extension to Trailer Register
                            complete_trailer_data_int(7 * 8 - 1 downto 0) <= C_CARRIER_EXTEND_8_10 & C_CARRIER_EXTEND_8_10 & C_TERMINATE_CHAR & crc_out_int;
                            if odd_bytes then
                                --If odd number of bytes extra 0xF7 byte is needed
                                complete_trailer_ctrl_int(7 - 1 downto 0) <= "1110000";
                            else
                                complete_trailer_ctrl_int(6 - 1 downto 0) <= "110000";
                            end if;

                            --Reset CRC Calculator
                            reset_en    <= '0';
                            clear_fcs_n <= '0';
                        else
                            --De-assert CRC Reset Signal
                            reset_en    <= '0';
                            clear_fcs_n <= '1';
                        end if;

                        if (pipeline_eof(1) = '1') then
                            trailer_idx_i      <= 1;
                            crc_mii_next_state <= trailer_insert;
                            pipeline_eof       <= (others => '0');
                        end if;

                    when trailer_insert =>
                        pipeline_src_rdy(0)      <= '1';
                        pipeline_eof(0)          <= '0';
                        pipeline_reg(7 downto 0) <= complete_trailer_data_int((8 * trailer_idx_i) - 1 downto 8 * (trailer_idx_i - 1));
                        pipeline_control(0)      <= complete_trailer_ctrl_int(trailer_idx_i - 1);
                        if (not odd_bytes and trailer_idx_i = 6) or (odd_bytes and trailer_idx_i = 7) then
                            crc_mii_next_state <= corr_idle;
                            --ifg_idx_i := 0;
                            pipeline_eof(0)    <= '1';
                        else
                            trailer_idx_i <= trailer_idx_i + 1;
                        end if;

                    when corr_idle =>
                        pipeline_eof(0)          <= '0';
                        pipeline_reg(7 downto 0) <= C_IDLE_1;
                        pipeline_control(0)      <= '1';
                        crc_mii_next_state       <= corr_idle2;

                    when corr_idle2 =>
                        pipeline_reg(7 downto 0) <= C_CORRECTING_IDLE;
                        pipeline_control(0)      <= '0';
                        crc_mii_next_state       <= idle;

                end case;
            end if;
        end if;
    end process;

    crc_1byte_inst : entity crc_lib.crc32_8_wrapper
        generic map(
            INIT     => C_CRC_INIT_WORD,
            LL_WIDTH => 8
        )
        port map(
            clk     => clk,
            rst_s_n => clear_fcs_n,
            enable  => axi4s_s_mosi.tvalid or reset_en,
            data    => axi4s_s_mosi.tdata(8 - 1 downto 0),
            crc     => crc_out_int
        );

end architecture behavioural;
