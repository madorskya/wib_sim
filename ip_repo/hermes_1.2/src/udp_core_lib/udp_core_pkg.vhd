-- <h---------------------------------------------------------------------------
--! @file   udp_core_pkg.vhd
--! @page udpcorepackagepage UDP Core Package File
--!
--! \includedoc esdg_stfc_image.md
--!
--! ### Brief ###
--! General Package For UDP Core
--!
--! ### License ###
--! Copyright(c) 2021 UNITED KINGDOM RESEARCH AND INNOVATION
--! Licensed under the BSD 3-Clause license. See LICENSE file in the project
--! root for details.
-- ---------------------------------------------------------------------------h>
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package udp_core_pkg is
     --------------------------------------------------------------------------------
     -- Constant Declarations:
     --------------------------------------------------------------------------------
     constant C_START_CHAR_8_10           : std_logic_vector(7 downto 0)                    := X"FB";
     constant C_START_CHAR_64_66          : std_logic_vector(7 downto 0)                    := X"FB";
     constant C_IDLE_CHAR_8_10            : std_logic_vector(7 downto 0)                    := X"BC";
     constant C_IDLE_CHAR_64_66           : std_logic_vector(7 downto 0)                    := X"07";
     constant C_CARRIER_EXTEND_8_10       : std_logic_vector(7 downto 0)                    := X"F7";
     constant C_TERMINATE_CHAR            : std_logic_vector(7 downto 0)                    := X"FD";
     constant C_PREAMBLE_BYTES            : integer                                         := 8; -- 1x 0xD5, 6x 0x55 + 1xFB (C_START_CHAR)
     constant C_PREAMBLE_CTRL_WORD        : std_logic_vector(C_PREAMBLE_BYTES - 1 downto 0) := X"01";
     constant C_MID_PREAMBLE_CTRL_WORD    : std_logic_vector(C_PREAMBLE_BYTES - 1 downto 0) := X"01";
     constant C_TOTAL_HEADER_LENGTH_BYTES : integer                                         := 42;
     constant C_FCS_BYTES                 : integer                                         := 4;

     --------------------------------------------------------------------------------
     -- Type Declarations:
     --------------------------------------------------------------------------------
     constant C_MAX_MII_BYTES : integer := 64;

     type t_mii_record is record
          data : std_logic_vector((C_MAX_MII_BYTES * 8) - 1 downto 0);
          ctrl : std_logic_vector(C_MAX_MII_BYTES - 1 downto 0);
     end record;

     type t_xgmii_record is record
          xgmii_d : std_logic_vector(C_MAX_MII_BYTES * 8 - 1 downto 0);
          xgmii_c : std_logic_vector(C_MAX_MII_BYTES - 1 downto 0);
          keep    : std_logic_vector(C_MAX_MII_BYTES - 1 downto 0);
          sof     : std_logic;
          eof     : std_logic;
          valid   : std_logic;
     end record;

     constant C_XGMII_RECORD_RST : t_xgmii_record := (
          xgmii_d => (others => '0'),
          xgmii_c => (others => '0'),
          keep => (others => '0'),
          sof   => '0',
          eof   => '0',
          valid => '0'
     );

     -- farm mode lut
     type t_farm_mode_lut_in is record
          farm_mode_lut_lower_mac_addr_clk  : std_logic;
          farm_mode_lut_lower_mac_addr_en   : std_logic;
          farm_mode_lut_lower_mac_addr_we   : std_logic;
          farm_mode_lut_lower_mac_addr_add  : std_logic_vector(7 downto 0);
          farm_mode_lut_lower_mac_addr_wdat : std_logic_vector(31 downto 0);
          farm_mode_lut_upper_mac_addr_clk  : std_logic;
          farm_mode_lut_upper_mac_addr_en   : std_logic;
          farm_mode_lut_upper_mac_addr_we   : std_logic;
          farm_mode_lut_upper_mac_addr_add  : std_logic_vector(7 downto 0);
          farm_mode_lut_upper_mac_addr_wdat : std_logic_vector(31 downto 0);
          farm_mode_lut_ip_addr_clk         : std_logic;
          farm_mode_lut_ip_addr_en          : std_logic;
          farm_mode_lut_ip_addr_we          : std_logic;
          farm_mode_lut_ip_addr_add         : std_logic_vector(7 downto 0);
          farm_mode_lut_ip_addr_wdat        : std_logic_vector(31 downto 0);
          farm_mode_lut_dst_port_clk        : std_logic;
          farm_mode_lut_dst_port_en         : std_logic;
          farm_mode_lut_dst_port_we         : std_logic;
          farm_mode_lut_dst_port_add        : std_logic_vector(7 downto 0);
          farm_mode_lut_dst_port_wdat       : std_logic_vector(31 downto 0);

     end record;

     type t_farm_mode_lut_out is record
          farm_mode_lut_lower_mac_addr_rdat : std_logic_vector(31 downto 0);
          farm_mode_lut_upper_mac_addr_rdat : std_logic_vector(31 downto 0);
          farm_mode_lut_ip_addr_rdat        : std_logic_vector(31 downto 0);
          farm_mode_lut_dst_port_rdat       : std_logic_vector(31 downto 0);
     end record;

     -- udp core settings axi data type copies
     type t_udp_core_settings_control is record
          fixed_pkt_size    : std_logic;
          udp_checksum_zero : std_logic;
          lut_mode          : std_logic;
          tuser_dst_prt     : std_logic;
          tuser_src_prt     : std_logic;
          reset_n           : std_logic;
          udp_length        : std_logic_vector(15 downto 0);
     end record;

     type t_udp_core_settings_filter_control is record
          broadcast_en       : std_logic;
          arp_en             : std_logic;
          ping_en            : std_logic;
          pass_uns_ethtype   : std_logic;
          pass_uns_ipv4      : std_logic;
          dst_mac_chk_en     : std_logic;
          src_mac_chk_en     : std_logic;
          dst_ip_chk_en      : std_logic;
          src_ip_chk_en      : std_logic;
          dst_port_chk_en    : std_logic;
          src_port_chk_en    : std_logic;
          packet_count_rst_n : std_logic;
          strip_uns_pro      : std_logic;
          strip_uns_eth      : std_logic;
          chk_ip_length      : std_logic;
     end record;

     type t_udp_core_settings_udp_ports is record
          src_port : std_logic_vector(15 downto 0);
          dst_port : std_logic_vector(15 downto 0);
     end record;

     type t_udp_core_settings_ipv4_header_2 is record
          ip_ttl          : std_logic_vector(7 downto 0);
          ip_protocol     : std_logic_vector(7 downto 0);
          header_checksum : std_logic_vector(15 downto 0);
     end record;

     type t_udp_core_settings_ipv4_header_1 is record
          ip_count    : std_logic_vector(15 downto 0);
          ip_fragment : std_logic_vector(15 downto 0);
     end record;

     type t_udp_core_settings_ipv4_header_0 is record
          ip_ver_hdr_len   : std_logic_vector(7 downto 0);
          ip_service       : std_logic_vector(7 downto 0);
          ip_packet_length : std_logic_vector(15 downto 0);
     end record;

     type t_udp_core_settings is record
          src_mac_addr_lower : std_logic_vector(31 downto 0);
          src_mac_addr_upper : std_logic_vector(15 downto 0);
          dst_mac_addr_lower : std_logic_vector(31 downto 0);
          dst_mac_addr_upper : std_logic_vector(15 downto 0);
          ethertype          : std_logic_vector(15 downto 0);
          ipv4_header_0      : t_udp_core_settings_ipv4_header_0;
          ipv4_header_1      : t_udp_core_settings_ipv4_header_1;
          ipv4_header_2      : t_udp_core_settings_ipv4_header_2;
          dst_ip_addr        : std_logic_vector(31 downto 0);
          src_ip_addr        : std_logic_vector(31 downto 0);
          udp_ports          : t_udp_core_settings_udp_ports;
          udp_length         : std_logic_vector(15 downto 0);
          filter_control     : t_udp_core_settings_filter_control;
          ifg                : std_logic_vector(15 downto 0);
          control            : t_udp_core_settings_control;
          udp_count          : std_logic_vector(31 downto 0);
          ping_count         : std_logic_vector(31 downto 0);
          arp_count          : std_logic_vector(31 downto 0);
          uns_etype_count    : std_logic_vector(31 downto 0);
          uns_pro_count      : std_logic_vector(31 downto 0);
          dropped_mac_count  : std_logic_vector(31 downto 0);
          dropped_ip_count   : std_logic_vector(31 downto 0);
          dropped_port_count : std_logic_vector(31 downto 0);
          ip_id              : std_logic_vector(31 downto 0);
          udp_core_id        : std_logic_vector(31 downto 0);
     end record;

     type t_udp_core_settings_control_decoded is record
          fixed_pkt_size    : std_logic;
          udp_checksum_zero : std_logic;
          lut_mode          : std_logic;
          tuser_dst_prt     : std_logic;
          tuser_src_prt     : std_logic;
          reset_n           : std_logic;
          udp_length        : std_logic;
     end record;

     type t_udp_core_settings_filter_control_decoded is record
          broadcast_en       : std_logic;
          arp_en             : std_logic;
          ping_en            : std_logic;
          pass_uns_ethtype   : std_logic;
          pass_uns_ipv4      : std_logic;
          dst_mac_chk_en     : std_logic;
          src_mac_chk_en     : std_logic;
          dst_ip_chk_en      : std_logic;
          src_ip_chk_en      : std_logic;
          dst_port_chk_en    : std_logic;
          src_port_chk_en    : std_logic;
          packet_count_rst_n : std_logic;
          strip_uns_pro      : std_logic;
          strip_uns_eth      : std_logic;
          chk_ip_length      : std_logic;
     end record;

     type t_udp_core_settings_udp_ports_decoded is record
          src_port : std_logic;
          dst_port : std_logic;
     end record;

     type t_udp_core_settings_ipv4_header_2_decoded is record
          ip_ttl          : std_logic;
          ip_protocol     : std_logic;
          header_checksum : std_logic;
     end record;

     type t_udp_core_settings_ipv4_header_1_decoded is record
          ip_count    : std_logic;
          ip_fragment : std_logic;
     end record;

     type t_udp_core_settings_ipv4_header_0_decoded is record
          ip_ver_hdr_len   : std_logic;
          ip_service       : std_logic;
          ip_packet_length : std_logic;
     end record;

     type t_udp_core_settings_decoded is record
          src_mac_addr_lower : std_logic;
          src_mac_addr_upper : std_logic;
          dst_mac_addr_lower : std_logic;
          dst_mac_addr_upper : std_logic;
          ethertype          : std_logic;
          ipv4_header_0      : t_udp_core_settings_ipv4_header_0_decoded;
          ipv4_header_1      : t_udp_core_settings_ipv4_header_1_decoded;
          ipv4_header_2      : t_udp_core_settings_ipv4_header_2_decoded;
          dst_ip_addr        : std_logic;
          src_ip_addr        : std_logic;
          udp_ports          : t_udp_core_settings_udp_ports_decoded;
          udp_length         : std_logic;
          filter_control     : t_udp_core_settings_filter_control_decoded;
          ifg                : std_logic;
          control            : t_udp_core_settings_control_decoded;
          udp_count          : std_logic;
          ping_count         : std_logic;
          arp_count          : std_logic;
          uns_etype_count    : std_logic;
          uns_pro_count      : std_logic;
          dropped_mac_count  : std_logic;
          dropped_ip_count   : std_logic;
          dropped_port_count : std_logic;
          ip_id              : std_logic;
          udp_core_id        : std_logic;
     end record;

     -- arp mode control
     type t_arp_mode_control_arp_mode_entry_status is record
          active          : std_logic;
          timed_out       : std_logic;
          seen_response   : std_logic;
          request_sent    : std_logic;
          request_timeout : std_logic_vector(11 downto 0);
          refresh_timeout : std_logic_vector(15 downto 0);
     end record;

     type t_arp_mode_control_arp_mode_entry is array (0 to 256 - 1) of t_arp_mode_control_arp_mode_entry_status;

     type t_arp_mode_control_arp_timeout_lengths is record
          request_timeout : std_logic_vector(11 downto 0);
          refresh_timeout : std_logic_vector(15 downto 0);
     end record;

     type t_arp_mode_control_positions_active is array (0 to 8 - 1) of std_logic_vector(31 downto 0);

     type t_arp_mode_control_arp_control is record
          arp_active       : std_logic;
          reset_status_reg : std_logic;
     end record;

     type t_arp_mode_control is record
          arp_control         : t_arp_mode_control_arp_control;
          positions_active    : t_arp_mode_control_positions_active;
          arp_timeout_lengths : t_arp_mode_control_arp_timeout_lengths;
          arp_mode_entry      : t_arp_mode_control_arp_mode_entry;
     end record;

     type t_arp_mode_control_arp_mode_entry_status_decoded is record
          active          : std_logic;
          timed_out       : std_logic;
          seen_response   : std_logic;
          request_sent    : std_logic;
          request_timeout : std_logic;
          refresh_timeout : std_logic;
     end record;

     type t_arp_mode_control_arp_mode_entry_decoded is array (0 to 256 - 1) of t_arp_mode_control_arp_mode_entry_status_decoded;

     type t_arp_mode_control_arp_timeout_lengths_decoded is record
          request_timeout : std_logic;
          refresh_timeout : std_logic;
     end record;

     type t_arp_mode_control_positions_active_decoded is array (0 to 8 - 1) of std_logic;

     type t_arp_mode_control_arp_control_decoded is record
          arp_active       : std_logic;
          reset_status_reg : std_logic;
     end record;

     type t_arp_mode_control_decoded is record
          arp_control         : t_arp_mode_control_arp_control_decoded;
          positions_active    : t_arp_mode_control_positions_active_decoded;
          arp_timeout_lengths : t_arp_mode_control_arp_timeout_lengths_decoded;
          arp_mode_entry      : t_arp_mode_control_arp_mode_entry_decoded;
     end record;
     --------------------------------------------------------------------------------
     -- Function Declarations:
     --------------------------------------------------------------------------------
     function mii_idle(
          constant NUM_BYTES : in integer
     ) return std_logic_vector;

     function return_preamble(
          constant WIDTH_BYTES : in integer
     ) return std_logic_vector;

     function zeropad(constant SIZE : in integer) return std_logic_vector;

     function eth_header_trailer_total_bytes(
          complete_words : in natural;
          partial_words  : in natural;
          mii_bytes      : in natural
     ) return natural;

     function header_words(
          header     : in natural;
          core_width : in natural
     ) return natural;

     function wider_preamble_packer(
          udp_core_nof_bytes_w : in natural
     ) return t_xgmii_record;

     function log_of_width(
          udp_core_width : in natural
     ) return integer;

     function ones_comp_add_16bit(
          signal input_1 : in std_logic_vector(15 downto 0);
          signal input_2 : in std_logic_vector(15 downto 0)
     ) return std_logic_vector;

     function udp_maximum(
          input_1 : in integer;
          input_2 : in integer
     ) return integer;

     function udp_minimum(
          input_1 : in integer;
          input_2 : in integer
     ) return integer;

     function tkeep_to_int(
          tkeep : in std_logic_vector
     ) return integer;

     function int_to_tkeep(
          last_byte : in integer;
          size      : in integer
     ) return std_logic_vector;

     function tkeep_to_byte_count(
          tkeep : in std_logic_vector
     ) return integer;

end package udp_core_pkg;

package body udp_core_pkg is
     --------------------------------------------------------------------------------
     function mii_idle(
          constant NUM_BYTES : in integer
     ) return std_logic_vector is

          variable idle_vector : std_logic_vector((NUM_BYTES * 8) - 1 downto 0);
          variable idle_char   : std_logic_vector(7 downto 0);

     begin
          if NUM_BYTES = 1 then
               idle_char := C_IDLE_CHAR_8_10;
          else
               idle_char := C_IDLE_CHAR_64_66;
          end if;

          for i in 0 to (NUM_BYTES - 1) loop
               idle_vector((i + 1) * 8 - 1 downto i * 8) := idle_char;
          end loop;
          return idle_vector;
     end function mii_idle;
     --------------------------------------------------------------------------------
     function return_preamble(
          constant WIDTH_BYTES : in integer
     ) return std_logic_vector is

          variable preamble_data_word : std_logic_vector(C_PREAMBLE_BYTES * 8 - 1 downto 0);

     begin
          if WIDTH_BYTES = 1 then
               preamble_data_word := X"D5555555555555" & C_START_CHAR_8_10;
          else
               preamble_data_word := X"D5555555555555" & C_START_CHAR_64_66;
          end if;

          return preamble_data_word;
     end function;

     --------------------------------------------------------------------------------
     function zeropad(constant SIZE : in integer) return std_logic_vector is
          variable zero_vector           : std_logic_vector(SIZE - 1 downto 0) := (others => '0');
     begin
          return zero_vector;
     end function zeropad;

     --------------------------------------------------------------------------------
     function eth_header_trailer_total_bytes(
          complete_words : in natural;
          partial_words  : in natural;
          mii_bytes      : in natural
     ) return natural is

          variable total_bytes : natural := 0;

     begin
          if partial_words = 0 then
               total_bytes := complete_words * mii_bytes;
          else
               total_bytes := (complete_words + 1) * mii_bytes;
          end if;
          return total_bytes;
     end function eth_header_trailer_total_bytes;
     --------------------------------------------------------------------------------
     function header_words(
          header     : in natural;
          core_width : in natural
     ) return natural is
          variable hdr_words : natural := 0;

     begin
          if (header mod core_width) = 0 then
               hdr_words := header / core_width - 1;
          else
               hdr_words := header / core_width;
          end if;

          return hdr_words;
     end function;

     --------------------------------------------------------------------------------
     function wider_preamble_packer(
          udp_core_nof_bytes_w : in natural
     ) return t_xgmii_record is

          variable xgmii_preamble : t_xgmii_record := C_XGMII_RECORD_RST;

     begin

          --xgmii_preamble.xgmii_d(udp_core_nof_bytes_w * 8 - 1 downto (udp_core_nof_bytes_w - C_PREAMBLE_BYTES) * 8) := return_preamble(udp_core_nof_bytes_w); --udp_core_nof_bytes_w
          --xgmii_preamble.xgmii_d((udp_core_nof_bytes_w - C_PREAMBLE_BYTES) * 8 - 1 downto 0)                        := mii_idle(udp_core_nof_bytes_w - C_PREAMBLE_BYTES);
          --xgmii_preamble.xgmii_c(udp_core_nof_bytes_w - 1 downto udp_core_nof_bytes_w - C_PREAMBLE_BYTES)           := (others => '1');
          --xgmii_preamble.xgmii_c(udp_core_nof_bytes_w - C_PREAMBLE_BYTES - 1 downto 0)                              := (others => '0');

          xgmii_preamble.xgmii_d(udp_core_nof_bytes_w * 8 - 1 downto C_PREAMBLE_BYTES * 8) := mii_idle(udp_core_nof_bytes_w - C_PREAMBLE_BYTES);
          xgmii_preamble.xgmii_d(C_PREAMBLE_BYTES * 8 - 1 downto 0)                        := return_preamble(C_PREAMBLE_BYTES); --udp_core_nof_bytes_w
          xgmii_preamble.xgmii_c(udp_core_nof_bytes_w - 1 downto C_PREAMBLE_BYTES)         := (others => '1');
          xgmii_preamble.xgmii_c(C_PREAMBLE_BYTES - 1 downto 0)                            := (others => '0');

          return xgmii_preamble;

     end function wider_preamble_packer;

     --------------------------------------------------------------------------------
     function ones_comp_add_16bit(
          signal input_1 : in std_logic_vector(15 downto 0);
          signal input_2 : in std_logic_vector(15 downto 0)
     ) return std_logic_vector is
          variable sum1  : unsigned(16 downto 0);
          variable carry : unsigned(15 downto 0);
          variable sum2  : std_logic_vector(15 downto 0);
     begin
          sum1  := unsigned('0' & input_1) + unsigned('0' & input_2);
          carry := "000000000000000" & sum1(16);
          sum2  := std_logic_vector(carry + unsigned(sum1(15 downto 0)));

          return sum2;
     end function ones_comp_add_16bit;

     --------------------------------------------------------------------------------
     function log_of_width(
          udp_core_width : in natural
     ) return integer is
     begin
          case udp_core_width is
               when 64 =>
                    return 6;
               when 32 =>
                    return 5;
               when 16 =>
                    return 4;
               when 8 =>
                    return 3;
               when 4 =>
                    return 2;
               when 2 =>
                    return 1;
               when others =>
                    return 0;
          end case;

     end function log_of_width;

     --------------------------------------------------------------------------------
     function udp_maximum(
          input_1 : in integer;
          input_2 : in integer
     ) return integer is
     begin
          if input_1 > input_2 then
               return input_1;
          else
               return input_2;
          end if;
     end function udp_maximum;

     --------------------------------------------------------------------------------
     function udp_minimum(
          input_1 : in integer;
          input_2 : in integer
     ) return integer is
     begin
          if input_1 < input_2 then
               return input_1;
          else
               return input_2;
          end if;
     end function udp_minimum;

     --------------------------------------------------------------------------------
     function tkeep_to_int(tkeep : in std_logic_vector) return integer is
          variable int_tmp            : integer range 0 to tkeep'left;
     begin
          int_tmp := 0;
          for i in tkeep'left downto 0 loop
               if tkeep(i) = '1' then
                    int_tmp := i;
                    exit;
               end if;
          end loop;
          return int_tmp;
     end function;

     --------------------------------------------------------------------------------
     function int_to_tkeep(last_byte : in integer;
          size                            : in integer
     ) return std_logic_vector is
          variable tmp_vec : std_logic_vector(size - 1 downto 0);
     begin
          for i in 0 to size - 1 loop
               if last_byte >= i then
                    tmp_vec(i) := '1';
               else
                    tmp_vec(i) := '0';
               end if;
          end loop;
          return tmp_vec;
     end function;

     function tkeep_to_byte_count(tkeep : in std_logic_vector) return integer is
          variable int_tmp  : integer range 0 to tkeep'left;
     begin
          int_tmp := 0;
          for i in tkeep'left downto 0 loop
               if tkeep(i) = '1' then
                    int_tmp := int_tmp + 1;
               end if;
          end loop;
          return int_tmp;
     end function;

end package body udp_core_pkg;
