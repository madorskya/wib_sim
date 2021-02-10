-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Feb  9 18:06:28 2021
-- Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.8.2003 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_ts_reclock_0_0/design_1_ts_reclock_0_0_sim_netlist.vhdl
-- Design      : design_1_ts_reclock_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ts_reclock_0_0_ts_reclock is
  port (
    tstamp_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ts_valid : out STD_LOGIC;
    cmd_bit_idle : out STD_LOGIC;
    cmd_bit_edge : out STD_LOGIC;
    cmd_bit_sync : out STD_LOGIC;
    cmd_bit_act : out STD_LOGIC;
    cmd_bit_reset : out STD_LOGIC;
    cmd_bit_adc_reset : out STD_LOGIC;
    clk62p5 : in STD_LOGIC;
    fake_time_stamp_en : in STD_LOGIC;
    sync_stb_in : in STD_LOGIC;
    sync_first_in : in STD_LOGIC;
    sync_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cmd_code_idle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_edge : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_sync : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_act : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_reset : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_adc_reset : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fake_time_stamp_init : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tstamp_in : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ts_reclock_0_0_ts_reclock : entity is "ts_reclock";
end design_1_ts_reclock_0_0_ts_reclock;

architecture STRUCTURE of design_1_ts_reclock_0_0_ts_reclock is
  signal cmd_bit_act0 : STD_LOGIC;
  signal cmd_bit_act_i_2_n_0 : STD_LOGIC;
  signal cmd_bit_act_i_3_n_0 : STD_LOGIC;
  signal cmd_bit_act_i_4_n_0 : STD_LOGIC;
  signal cmd_bit_adc_reset0 : STD_LOGIC;
  signal cmd_bit_adc_reset_i_2_n_0 : STD_LOGIC;
  signal cmd_bit_adc_reset_i_3_n_0 : STD_LOGIC;
  signal cmd_bit_adc_reset_i_4_n_0 : STD_LOGIC;
  signal cmd_bit_edge0 : STD_LOGIC;
  signal cmd_bit_edge_i_2_n_0 : STD_LOGIC;
  signal cmd_bit_edge_i_3_n_0 : STD_LOGIC;
  signal cmd_bit_edge_i_4_n_0 : STD_LOGIC;
  signal cmd_bit_idle0 : STD_LOGIC;
  signal cmd_bit_idle_i_1_n_0 : STD_LOGIC;
  signal cmd_bit_idle_i_3_n_0 : STD_LOGIC;
  signal cmd_bit_idle_i_4_n_0 : STD_LOGIC;
  signal cmd_bit_idle_i_5_n_0 : STD_LOGIC;
  signal cmd_bit_reset0 : STD_LOGIC;
  signal cmd_bit_reset_i_2_n_0 : STD_LOGIC;
  signal cmd_bit_reset_i_3_n_0 : STD_LOGIC;
  signal cmd_bit_reset_i_4_n_0 : STD_LOGIC;
  signal cmd_bit_sync0 : STD_LOGIC;
  signal cmd_bit_sync_i_2_n_0 : STD_LOGIC;
  signal cmd_bit_sync_i_3_n_0 : STD_LOGIC;
  signal cmd_bit_sync_i_4_n_0 : STD_LOGIC;
  signal fts_en : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal ts_valid0 : STD_LOGIC;
  signal tstamp_fake : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal tstamp_fake0 : STD_LOGIC_VECTOR ( 63 downto 1 );
  signal \tstamp_fake0_carry__0_n_0\ : STD_LOGIC;
  signal \tstamp_fake0_carry__0_n_1\ : STD_LOGIC;
  signal \tstamp_fake0_carry__0_n_2\ : STD_LOGIC;
  signal \tstamp_fake0_carry__0_n_3\ : STD_LOGIC;
  signal \tstamp_fake0_carry__0_n_4\ : STD_LOGIC;
  signal \tstamp_fake0_carry__0_n_5\ : STD_LOGIC;
  signal \tstamp_fake0_carry__0_n_6\ : STD_LOGIC;
  signal \tstamp_fake0_carry__0_n_7\ : STD_LOGIC;
  signal \tstamp_fake0_carry__1_n_0\ : STD_LOGIC;
  signal \tstamp_fake0_carry__1_n_1\ : STD_LOGIC;
  signal \tstamp_fake0_carry__1_n_2\ : STD_LOGIC;
  signal \tstamp_fake0_carry__1_n_3\ : STD_LOGIC;
  signal \tstamp_fake0_carry__1_n_4\ : STD_LOGIC;
  signal \tstamp_fake0_carry__1_n_5\ : STD_LOGIC;
  signal \tstamp_fake0_carry__1_n_6\ : STD_LOGIC;
  signal \tstamp_fake0_carry__1_n_7\ : STD_LOGIC;
  signal \tstamp_fake0_carry__2_n_0\ : STD_LOGIC;
  signal \tstamp_fake0_carry__2_n_1\ : STD_LOGIC;
  signal \tstamp_fake0_carry__2_n_2\ : STD_LOGIC;
  signal \tstamp_fake0_carry__2_n_3\ : STD_LOGIC;
  signal \tstamp_fake0_carry__2_n_4\ : STD_LOGIC;
  signal \tstamp_fake0_carry__2_n_5\ : STD_LOGIC;
  signal \tstamp_fake0_carry__2_n_6\ : STD_LOGIC;
  signal \tstamp_fake0_carry__2_n_7\ : STD_LOGIC;
  signal \tstamp_fake0_carry__3_n_0\ : STD_LOGIC;
  signal \tstamp_fake0_carry__3_n_1\ : STD_LOGIC;
  signal \tstamp_fake0_carry__3_n_2\ : STD_LOGIC;
  signal \tstamp_fake0_carry__3_n_3\ : STD_LOGIC;
  signal \tstamp_fake0_carry__3_n_4\ : STD_LOGIC;
  signal \tstamp_fake0_carry__3_n_5\ : STD_LOGIC;
  signal \tstamp_fake0_carry__3_n_6\ : STD_LOGIC;
  signal \tstamp_fake0_carry__3_n_7\ : STD_LOGIC;
  signal \tstamp_fake0_carry__4_n_0\ : STD_LOGIC;
  signal \tstamp_fake0_carry__4_n_1\ : STD_LOGIC;
  signal \tstamp_fake0_carry__4_n_2\ : STD_LOGIC;
  signal \tstamp_fake0_carry__4_n_3\ : STD_LOGIC;
  signal \tstamp_fake0_carry__4_n_4\ : STD_LOGIC;
  signal \tstamp_fake0_carry__4_n_5\ : STD_LOGIC;
  signal \tstamp_fake0_carry__4_n_6\ : STD_LOGIC;
  signal \tstamp_fake0_carry__4_n_7\ : STD_LOGIC;
  signal \tstamp_fake0_carry__5_n_0\ : STD_LOGIC;
  signal \tstamp_fake0_carry__5_n_1\ : STD_LOGIC;
  signal \tstamp_fake0_carry__5_n_2\ : STD_LOGIC;
  signal \tstamp_fake0_carry__5_n_3\ : STD_LOGIC;
  signal \tstamp_fake0_carry__5_n_4\ : STD_LOGIC;
  signal \tstamp_fake0_carry__5_n_5\ : STD_LOGIC;
  signal \tstamp_fake0_carry__5_n_6\ : STD_LOGIC;
  signal \tstamp_fake0_carry__5_n_7\ : STD_LOGIC;
  signal \tstamp_fake0_carry__6_n_2\ : STD_LOGIC;
  signal \tstamp_fake0_carry__6_n_3\ : STD_LOGIC;
  signal \tstamp_fake0_carry__6_n_4\ : STD_LOGIC;
  signal \tstamp_fake0_carry__6_n_5\ : STD_LOGIC;
  signal \tstamp_fake0_carry__6_n_6\ : STD_LOGIC;
  signal \tstamp_fake0_carry__6_n_7\ : STD_LOGIC;
  signal tstamp_fake0_carry_n_0 : STD_LOGIC;
  signal tstamp_fake0_carry_n_1 : STD_LOGIC;
  signal tstamp_fake0_carry_n_2 : STD_LOGIC;
  signal tstamp_fake0_carry_n_3 : STD_LOGIC;
  signal tstamp_fake0_carry_n_4 : STD_LOGIC;
  signal tstamp_fake0_carry_n_5 : STD_LOGIC;
  signal tstamp_fake0_carry_n_6 : STD_LOGIC;
  signal tstamp_fake0_carry_n_7 : STD_LOGIC;
  signal \tstamp_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[17]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[18]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[19]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[20]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[21]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[22]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[23]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[24]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[25]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[26]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[27]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[28]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[29]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[30]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[32]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[33]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[34]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[35]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[36]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[37]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[38]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[39]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[40]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[41]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[42]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[43]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[44]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[45]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[46]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[47]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[48]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[49]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[50]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[51]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[52]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[53]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[54]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[55]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[56]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[57]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[58]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[59]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[60]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[61]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[62]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[63]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_tstamp_fake0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_tstamp_fake0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of tstamp_fake0_carry : label is 35;
  attribute ADDER_THRESHOLD of \tstamp_fake0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \tstamp_fake0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \tstamp_fake0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \tstamp_fake0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \tstamp_fake0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \tstamp_fake0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \tstamp_fake0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tstamp_fake[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tstamp_out[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tstamp_out[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \tstamp_out[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \tstamp_out[12]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tstamp_out[13]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tstamp_out[14]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tstamp_out[15]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \tstamp_out[16]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tstamp_out[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tstamp_out[18]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tstamp_out[19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tstamp_out[20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tstamp_out[21]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \tstamp_out[22]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tstamp_out[23]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \tstamp_out[24]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tstamp_out[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tstamp_out[26]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tstamp_out[27]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tstamp_out[28]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tstamp_out[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tstamp_out[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tstamp_out[30]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tstamp_out[31]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tstamp_out[32]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tstamp_out[33]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tstamp_out[34]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tstamp_out[35]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tstamp_out[36]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tstamp_out[37]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tstamp_out[38]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tstamp_out[39]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tstamp_out[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tstamp_out[40]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tstamp_out[41]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tstamp_out[42]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tstamp_out[43]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tstamp_out[44]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tstamp_out[45]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tstamp_out[46]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tstamp_out[47]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tstamp_out[48]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tstamp_out[49]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tstamp_out[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \tstamp_out[50]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tstamp_out[51]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tstamp_out[52]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tstamp_out[53]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tstamp_out[54]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tstamp_out[55]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tstamp_out[56]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tstamp_out[57]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tstamp_out[58]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tstamp_out[59]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tstamp_out[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \tstamp_out[60]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tstamp_out[61]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tstamp_out[62]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tstamp_out[63]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tstamp_out[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \tstamp_out[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \tstamp_out[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \tstamp_out[9]_i_1\ : label is "soft_lutpair28";
begin
cmd_bit_act_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E00000E0"
    )
        port map (
      I0 => cmd_bit_act_i_2_n_0,
      I1 => cmd_bit_act_i_3_n_0,
      I2 => cmd_bit_act_i_4_n_0,
      I3 => sync_in(3),
      I4 => cmd_code_act(3),
      O => cmd_bit_act0
    );
cmd_bit_act_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_act(2),
      I1 => cmd_code_act(3),
      I2 => cmd_code_act(0),
      I3 => cmd_code_act(1),
      O => cmd_bit_act_i_2_n_0
    );
cmd_bit_act_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_act(7),
      I1 => cmd_code_act(6),
      I2 => cmd_code_act(4),
      I3 => cmd_code_act(5),
      O => cmd_bit_act_i_3_n_0
    );
cmd_bit_act_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmd_code_act(0),
      I1 => sync_in(0),
      I2 => sync_in(2),
      I3 => cmd_code_act(2),
      I4 => sync_in(1),
      I5 => cmd_code_act(1),
      O => cmd_bit_act_i_4_n_0
    );
cmd_bit_act_reg: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => cmd_bit_act0,
      Q => cmd_bit_act,
      R => cmd_bit_idle_i_1_n_0
    );
cmd_bit_adc_reset_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E00000E0"
    )
        port map (
      I0 => cmd_bit_adc_reset_i_2_n_0,
      I1 => cmd_bit_adc_reset_i_3_n_0,
      I2 => cmd_bit_adc_reset_i_4_n_0,
      I3 => sync_in(3),
      I4 => cmd_code_adc_reset(3),
      O => cmd_bit_adc_reset0
    );
cmd_bit_adc_reset_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_adc_reset(2),
      I1 => cmd_code_adc_reset(3),
      I2 => cmd_code_adc_reset(0),
      I3 => cmd_code_adc_reset(1),
      O => cmd_bit_adc_reset_i_2_n_0
    );
cmd_bit_adc_reset_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_adc_reset(7),
      I1 => cmd_code_adc_reset(6),
      I2 => cmd_code_adc_reset(4),
      I3 => cmd_code_adc_reset(5),
      O => cmd_bit_adc_reset_i_3_n_0
    );
cmd_bit_adc_reset_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmd_code_adc_reset(0),
      I1 => sync_in(0),
      I2 => sync_in(2),
      I3 => cmd_code_adc_reset(2),
      I4 => sync_in(1),
      I5 => cmd_code_adc_reset(1),
      O => cmd_bit_adc_reset_i_4_n_0
    );
cmd_bit_adc_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => cmd_bit_adc_reset0,
      Q => cmd_bit_adc_reset,
      R => cmd_bit_idle_i_1_n_0
    );
cmd_bit_edge_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E00000E0"
    )
        port map (
      I0 => cmd_bit_edge_i_2_n_0,
      I1 => cmd_bit_edge_i_3_n_0,
      I2 => cmd_bit_edge_i_4_n_0,
      I3 => sync_in(3),
      I4 => cmd_code_edge(3),
      O => cmd_bit_edge0
    );
cmd_bit_edge_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_edge(2),
      I1 => cmd_code_edge(3),
      I2 => cmd_code_edge(0),
      I3 => cmd_code_edge(1),
      O => cmd_bit_edge_i_2_n_0
    );
cmd_bit_edge_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_edge(7),
      I1 => cmd_code_edge(6),
      I2 => cmd_code_edge(4),
      I3 => cmd_code_edge(5),
      O => cmd_bit_edge_i_3_n_0
    );
cmd_bit_edge_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmd_code_edge(0),
      I1 => sync_in(0),
      I2 => sync_in(2),
      I3 => cmd_code_edge(2),
      I4 => sync_in(1),
      I5 => cmd_code_edge(1),
      O => cmd_bit_edge_i_4_n_0
    );
cmd_bit_edge_reg: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => cmd_bit_edge0,
      Q => cmd_bit_edge,
      R => cmd_bit_idle_i_1_n_0
    );
cmd_bit_idle_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync_stb_in,
      O => cmd_bit_idle_i_1_n_0
    );
cmd_bit_idle_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E00000E0"
    )
        port map (
      I0 => cmd_bit_idle_i_3_n_0,
      I1 => cmd_bit_idle_i_4_n_0,
      I2 => cmd_bit_idle_i_5_n_0,
      I3 => sync_in(3),
      I4 => cmd_code_idle(3),
      O => cmd_bit_idle0
    );
cmd_bit_idle_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_idle(2),
      I1 => cmd_code_idle(3),
      I2 => cmd_code_idle(0),
      I3 => cmd_code_idle(1),
      O => cmd_bit_idle_i_3_n_0
    );
cmd_bit_idle_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_idle(7),
      I1 => cmd_code_idle(6),
      I2 => cmd_code_idle(4),
      I3 => cmd_code_idle(5),
      O => cmd_bit_idle_i_4_n_0
    );
cmd_bit_idle_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmd_code_idle(0),
      I1 => sync_in(0),
      I2 => sync_in(2),
      I3 => cmd_code_idle(2),
      I4 => sync_in(1),
      I5 => cmd_code_idle(1),
      O => cmd_bit_idle_i_5_n_0
    );
cmd_bit_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => cmd_bit_idle0,
      Q => cmd_bit_idle,
      R => cmd_bit_idle_i_1_n_0
    );
cmd_bit_reset_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E00000E0"
    )
        port map (
      I0 => cmd_bit_reset_i_2_n_0,
      I1 => cmd_bit_reset_i_3_n_0,
      I2 => cmd_bit_reset_i_4_n_0,
      I3 => sync_in(3),
      I4 => cmd_code_reset(3),
      O => cmd_bit_reset0
    );
cmd_bit_reset_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_reset(2),
      I1 => cmd_code_reset(3),
      I2 => cmd_code_reset(0),
      I3 => cmd_code_reset(1),
      O => cmd_bit_reset_i_2_n_0
    );
cmd_bit_reset_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_reset(7),
      I1 => cmd_code_reset(6),
      I2 => cmd_code_reset(4),
      I3 => cmd_code_reset(5),
      O => cmd_bit_reset_i_3_n_0
    );
cmd_bit_reset_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmd_code_reset(0),
      I1 => sync_in(0),
      I2 => sync_in(2),
      I3 => cmd_code_reset(2),
      I4 => sync_in(1),
      I5 => cmd_code_reset(1),
      O => cmd_bit_reset_i_4_n_0
    );
cmd_bit_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => cmd_bit_reset0,
      Q => cmd_bit_reset,
      R => cmd_bit_idle_i_1_n_0
    );
cmd_bit_sync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E00000E0"
    )
        port map (
      I0 => cmd_bit_sync_i_2_n_0,
      I1 => cmd_bit_sync_i_3_n_0,
      I2 => cmd_bit_sync_i_4_n_0,
      I3 => sync_in(3),
      I4 => cmd_code_sync(3),
      O => cmd_bit_sync0
    );
cmd_bit_sync_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_sync(2),
      I1 => cmd_code_sync(3),
      I2 => cmd_code_sync(0),
      I3 => cmd_code_sync(1),
      O => cmd_bit_sync_i_2_n_0
    );
cmd_bit_sync_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cmd_code_sync(7),
      I1 => cmd_code_sync(6),
      I2 => cmd_code_sync(4),
      I3 => cmd_code_sync(5),
      O => cmd_bit_sync_i_3_n_0
    );
cmd_bit_sync_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmd_code_sync(0),
      I1 => sync_in(0),
      I2 => sync_in(2),
      I3 => cmd_code_sync(2),
      I4 => sync_in(1),
      I5 => cmd_code_sync(1),
      O => cmd_bit_sync_i_4_n_0
    );
cmd_bit_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => cmd_bit_sync0,
      Q => cmd_bit_sync,
      R => cmd_bit_idle_i_1_n_0
    );
\fts_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => fake_time_stamp_en,
      Q => fts_en(0),
      R => '0'
    );
\fts_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => fts_en(0),
      Q => fts_en(1),
      R => '0'
    );
\fts_en_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => fts_en(1),
      Q => fts_en(2),
      R => '0'
    );
ts_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => sync_stb_in,
      I1 => sync_first_in,
      I2 => sync_in(3),
      I3 => sync_in(2),
      I4 => sync_in(0),
      I5 => sync_in(1),
      O => ts_valid0
    );
ts_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => ts_valid0,
      Q => ts_valid,
      R => '0'
    );
tstamp_fake0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => tstamp_fake(0),
      CI_TOP => '0',
      CO(7) => tstamp_fake0_carry_n_0,
      CO(6) => tstamp_fake0_carry_n_1,
      CO(5) => tstamp_fake0_carry_n_2,
      CO(4) => tstamp_fake0_carry_n_3,
      CO(3) => tstamp_fake0_carry_n_4,
      CO(2) => tstamp_fake0_carry_n_5,
      CO(1) => tstamp_fake0_carry_n_6,
      CO(0) => tstamp_fake0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => tstamp_fake0(8 downto 1),
      S(7 downto 0) => tstamp_fake(8 downto 1)
    );
\tstamp_fake0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => tstamp_fake0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \tstamp_fake0_carry__0_n_0\,
      CO(6) => \tstamp_fake0_carry__0_n_1\,
      CO(5) => \tstamp_fake0_carry__0_n_2\,
      CO(4) => \tstamp_fake0_carry__0_n_3\,
      CO(3) => \tstamp_fake0_carry__0_n_4\,
      CO(2) => \tstamp_fake0_carry__0_n_5\,
      CO(1) => \tstamp_fake0_carry__0_n_6\,
      CO(0) => \tstamp_fake0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => tstamp_fake0(16 downto 9),
      S(7 downto 0) => tstamp_fake(16 downto 9)
    );
\tstamp_fake0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_fake0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \tstamp_fake0_carry__1_n_0\,
      CO(6) => \tstamp_fake0_carry__1_n_1\,
      CO(5) => \tstamp_fake0_carry__1_n_2\,
      CO(4) => \tstamp_fake0_carry__1_n_3\,
      CO(3) => \tstamp_fake0_carry__1_n_4\,
      CO(2) => \tstamp_fake0_carry__1_n_5\,
      CO(1) => \tstamp_fake0_carry__1_n_6\,
      CO(0) => \tstamp_fake0_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => tstamp_fake0(24 downto 17),
      S(7 downto 0) => tstamp_fake(24 downto 17)
    );
\tstamp_fake0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_fake0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \tstamp_fake0_carry__2_n_0\,
      CO(6) => \tstamp_fake0_carry__2_n_1\,
      CO(5) => \tstamp_fake0_carry__2_n_2\,
      CO(4) => \tstamp_fake0_carry__2_n_3\,
      CO(3) => \tstamp_fake0_carry__2_n_4\,
      CO(2) => \tstamp_fake0_carry__2_n_5\,
      CO(1) => \tstamp_fake0_carry__2_n_6\,
      CO(0) => \tstamp_fake0_carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => tstamp_fake0(32 downto 25),
      S(7 downto 0) => tstamp_fake(32 downto 25)
    );
\tstamp_fake0_carry__3\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_fake0_carry__2_n_0\,
      CI_TOP => '0',
      CO(7) => \tstamp_fake0_carry__3_n_0\,
      CO(6) => \tstamp_fake0_carry__3_n_1\,
      CO(5) => \tstamp_fake0_carry__3_n_2\,
      CO(4) => \tstamp_fake0_carry__3_n_3\,
      CO(3) => \tstamp_fake0_carry__3_n_4\,
      CO(2) => \tstamp_fake0_carry__3_n_5\,
      CO(1) => \tstamp_fake0_carry__3_n_6\,
      CO(0) => \tstamp_fake0_carry__3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => tstamp_fake0(40 downto 33),
      S(7 downto 0) => tstamp_fake(40 downto 33)
    );
\tstamp_fake0_carry__4\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_fake0_carry__3_n_0\,
      CI_TOP => '0',
      CO(7) => \tstamp_fake0_carry__4_n_0\,
      CO(6) => \tstamp_fake0_carry__4_n_1\,
      CO(5) => \tstamp_fake0_carry__4_n_2\,
      CO(4) => \tstamp_fake0_carry__4_n_3\,
      CO(3) => \tstamp_fake0_carry__4_n_4\,
      CO(2) => \tstamp_fake0_carry__4_n_5\,
      CO(1) => \tstamp_fake0_carry__4_n_6\,
      CO(0) => \tstamp_fake0_carry__4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => tstamp_fake0(48 downto 41),
      S(7 downto 0) => tstamp_fake(48 downto 41)
    );
\tstamp_fake0_carry__5\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_fake0_carry__4_n_0\,
      CI_TOP => '0',
      CO(7) => \tstamp_fake0_carry__5_n_0\,
      CO(6) => \tstamp_fake0_carry__5_n_1\,
      CO(5) => \tstamp_fake0_carry__5_n_2\,
      CO(4) => \tstamp_fake0_carry__5_n_3\,
      CO(3) => \tstamp_fake0_carry__5_n_4\,
      CO(2) => \tstamp_fake0_carry__5_n_5\,
      CO(1) => \tstamp_fake0_carry__5_n_6\,
      CO(0) => \tstamp_fake0_carry__5_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => tstamp_fake0(56 downto 49),
      S(7 downto 0) => tstamp_fake(56 downto 49)
    );
\tstamp_fake0_carry__6\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_fake0_carry__5_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_tstamp_fake0_carry__6_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \tstamp_fake0_carry__6_n_2\,
      CO(4) => \tstamp_fake0_carry__6_n_3\,
      CO(3) => \tstamp_fake0_carry__6_n_4\,
      CO(2) => \tstamp_fake0_carry__6_n_5\,
      CO(1) => \tstamp_fake0_carry__6_n_6\,
      CO(0) => \tstamp_fake0_carry__6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_tstamp_fake0_carry__6_O_UNCONNECTED\(7),
      O(6 downto 0) => tstamp_fake0(63 downto 57),
      S(7) => '0',
      S(6 downto 0) => tstamp_fake(63 downto 57)
    );
\tstamp_fake[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40EF"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(0),
      I2 => fts_en(1),
      I3 => tstamp_fake(0),
      O => p_0_in(0)
    );
\tstamp_fake[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(10),
      I2 => fts_en(1),
      I3 => tstamp_fake0(10),
      O => p_0_in(10)
    );
\tstamp_fake[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(11),
      I2 => fts_en(1),
      I3 => tstamp_fake0(11),
      O => p_0_in(11)
    );
\tstamp_fake[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(12),
      I2 => fts_en(1),
      I3 => tstamp_fake0(12),
      O => p_0_in(12)
    );
\tstamp_fake[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(13),
      I2 => fts_en(1),
      I3 => tstamp_fake0(13),
      O => p_0_in(13)
    );
\tstamp_fake[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(14),
      I2 => fts_en(1),
      I3 => tstamp_fake0(14),
      O => p_0_in(14)
    );
\tstamp_fake[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(15),
      I2 => fts_en(1),
      I3 => tstamp_fake0(15),
      O => p_0_in(15)
    );
\tstamp_fake[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(16),
      I2 => fts_en(1),
      I3 => tstamp_fake0(16),
      O => p_0_in(16)
    );
\tstamp_fake[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(17),
      I2 => fts_en(1),
      I3 => tstamp_fake0(17),
      O => p_0_in(17)
    );
\tstamp_fake[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(18),
      I2 => fts_en(1),
      I3 => tstamp_fake0(18),
      O => p_0_in(18)
    );
\tstamp_fake[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(19),
      I2 => fts_en(1),
      I3 => tstamp_fake0(19),
      O => p_0_in(19)
    );
\tstamp_fake[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(1),
      I2 => fts_en(1),
      I3 => tstamp_fake0(1),
      O => p_0_in(1)
    );
\tstamp_fake[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(20),
      I2 => fts_en(1),
      I3 => tstamp_fake0(20),
      O => p_0_in(20)
    );
\tstamp_fake[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(21),
      I2 => fts_en(1),
      I3 => tstamp_fake0(21),
      O => p_0_in(21)
    );
\tstamp_fake[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(22),
      I2 => fts_en(1),
      I3 => tstamp_fake0(22),
      O => p_0_in(22)
    );
\tstamp_fake[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(23),
      I2 => fts_en(1),
      I3 => tstamp_fake0(23),
      O => p_0_in(23)
    );
\tstamp_fake[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(24),
      I2 => fts_en(1),
      I3 => tstamp_fake0(24),
      O => p_0_in(24)
    );
\tstamp_fake[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(25),
      I2 => fts_en(1),
      I3 => tstamp_fake0(25),
      O => p_0_in(25)
    );
\tstamp_fake[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(26),
      I2 => fts_en(1),
      I3 => tstamp_fake0(26),
      O => p_0_in(26)
    );
\tstamp_fake[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(27),
      I2 => fts_en(1),
      I3 => tstamp_fake0(27),
      O => p_0_in(27)
    );
\tstamp_fake[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(28),
      I2 => fts_en(1),
      I3 => tstamp_fake0(28),
      O => p_0_in(28)
    );
\tstamp_fake[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(29),
      I2 => fts_en(1),
      I3 => tstamp_fake0(29),
      O => p_0_in(29)
    );
\tstamp_fake[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(2),
      I2 => fts_en(1),
      I3 => tstamp_fake0(2),
      O => p_0_in(2)
    );
\tstamp_fake[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(30),
      I2 => fts_en(1),
      I3 => tstamp_fake0(30),
      O => p_0_in(30)
    );
\tstamp_fake[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(31),
      I2 => fts_en(1),
      I3 => tstamp_fake0(31),
      O => p_0_in(31)
    );
\tstamp_fake[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(32),
      I2 => fts_en(1),
      I3 => tstamp_fake0(32),
      O => p_0_in(32)
    );
\tstamp_fake[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(33),
      I2 => fts_en(1),
      I3 => tstamp_fake0(33),
      O => p_0_in(33)
    );
\tstamp_fake[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(34),
      I2 => fts_en(1),
      I3 => tstamp_fake0(34),
      O => p_0_in(34)
    );
\tstamp_fake[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(35),
      I2 => fts_en(1),
      I3 => tstamp_fake0(35),
      O => p_0_in(35)
    );
\tstamp_fake[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(36),
      I2 => fts_en(1),
      I3 => tstamp_fake0(36),
      O => p_0_in(36)
    );
\tstamp_fake[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(37),
      I2 => fts_en(1),
      I3 => tstamp_fake0(37),
      O => p_0_in(37)
    );
\tstamp_fake[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(38),
      I2 => fts_en(1),
      I3 => tstamp_fake0(38),
      O => p_0_in(38)
    );
\tstamp_fake[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(39),
      I2 => fts_en(1),
      I3 => tstamp_fake0(39),
      O => p_0_in(39)
    );
\tstamp_fake[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(3),
      I2 => fts_en(1),
      I3 => tstamp_fake0(3),
      O => p_0_in(3)
    );
\tstamp_fake[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(40),
      I2 => fts_en(1),
      I3 => tstamp_fake0(40),
      O => p_0_in(40)
    );
\tstamp_fake[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(41),
      I2 => fts_en(1),
      I3 => tstamp_fake0(41),
      O => p_0_in(41)
    );
\tstamp_fake[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(42),
      I2 => fts_en(1),
      I3 => tstamp_fake0(42),
      O => p_0_in(42)
    );
\tstamp_fake[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(43),
      I2 => fts_en(1),
      I3 => tstamp_fake0(43),
      O => p_0_in(43)
    );
\tstamp_fake[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(44),
      I2 => fts_en(1),
      I3 => tstamp_fake0(44),
      O => p_0_in(44)
    );
\tstamp_fake[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(45),
      I2 => fts_en(1),
      I3 => tstamp_fake0(45),
      O => p_0_in(45)
    );
\tstamp_fake[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(46),
      I2 => fts_en(1),
      I3 => tstamp_fake0(46),
      O => p_0_in(46)
    );
\tstamp_fake[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(47),
      I2 => fts_en(1),
      I3 => tstamp_fake0(47),
      O => p_0_in(47)
    );
\tstamp_fake[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(48),
      I2 => fts_en(1),
      I3 => tstamp_fake0(48),
      O => p_0_in(48)
    );
\tstamp_fake[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(49),
      I2 => fts_en(1),
      I3 => tstamp_fake0(49),
      O => p_0_in(49)
    );
\tstamp_fake[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(4),
      I2 => fts_en(1),
      I3 => tstamp_fake0(4),
      O => p_0_in(4)
    );
\tstamp_fake[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(50),
      I2 => fts_en(1),
      I3 => tstamp_fake0(50),
      O => p_0_in(50)
    );
\tstamp_fake[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(51),
      I2 => fts_en(1),
      I3 => tstamp_fake0(51),
      O => p_0_in(51)
    );
\tstamp_fake[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(52),
      I2 => fts_en(1),
      I3 => tstamp_fake0(52),
      O => p_0_in(52)
    );
\tstamp_fake[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(53),
      I2 => fts_en(1),
      I3 => tstamp_fake0(53),
      O => p_0_in(53)
    );
\tstamp_fake[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(54),
      I2 => fts_en(1),
      I3 => tstamp_fake0(54),
      O => p_0_in(54)
    );
\tstamp_fake[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(55),
      I2 => fts_en(1),
      I3 => tstamp_fake0(55),
      O => p_0_in(55)
    );
\tstamp_fake[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(56),
      I2 => fts_en(1),
      I3 => tstamp_fake0(56),
      O => p_0_in(56)
    );
\tstamp_fake[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(57),
      I2 => fts_en(1),
      I3 => tstamp_fake0(57),
      O => p_0_in(57)
    );
\tstamp_fake[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(58),
      I2 => fts_en(1),
      I3 => tstamp_fake0(58),
      O => p_0_in(58)
    );
\tstamp_fake[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(59),
      I2 => fts_en(1),
      I3 => tstamp_fake0(59),
      O => p_0_in(59)
    );
\tstamp_fake[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(5),
      I2 => fts_en(1),
      I3 => tstamp_fake0(5),
      O => p_0_in(5)
    );
\tstamp_fake[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(60),
      I2 => fts_en(1),
      I3 => tstamp_fake0(60),
      O => p_0_in(60)
    );
\tstamp_fake[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(61),
      I2 => fts_en(1),
      I3 => tstamp_fake0(61),
      O => p_0_in(61)
    );
\tstamp_fake[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(62),
      I2 => fts_en(1),
      I3 => tstamp_fake0(62),
      O => p_0_in(62)
    );
\tstamp_fake[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(63),
      I2 => fts_en(1),
      I3 => tstamp_fake0(63),
      O => p_0_in(63)
    );
\tstamp_fake[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(6),
      I2 => fts_en(1),
      I3 => tstamp_fake0(6),
      O => p_0_in(6)
    );
\tstamp_fake[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(7),
      I2 => fts_en(1),
      I3 => tstamp_fake0(7),
      O => p_0_in(7)
    );
\tstamp_fake[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(8),
      I2 => fts_en(1),
      I3 => tstamp_fake0(8),
      O => p_0_in(8)
    );
\tstamp_fake[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => fts_en(2),
      I1 => fake_time_stamp_init(9),
      I2 => fts_en(1),
      I3 => tstamp_fake0(9),
      O => p_0_in(9)
    );
\tstamp_fake_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(0),
      Q => tstamp_fake(0),
      R => '0'
    );
\tstamp_fake_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(10),
      Q => tstamp_fake(10),
      R => '0'
    );
\tstamp_fake_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(11),
      Q => tstamp_fake(11),
      R => '0'
    );
\tstamp_fake_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(12),
      Q => tstamp_fake(12),
      R => '0'
    );
\tstamp_fake_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(13),
      Q => tstamp_fake(13),
      R => '0'
    );
\tstamp_fake_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(14),
      Q => tstamp_fake(14),
      R => '0'
    );
\tstamp_fake_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(15),
      Q => tstamp_fake(15),
      R => '0'
    );
\tstamp_fake_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(16),
      Q => tstamp_fake(16),
      R => '0'
    );
\tstamp_fake_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(17),
      Q => tstamp_fake(17),
      R => '0'
    );
\tstamp_fake_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(18),
      Q => tstamp_fake(18),
      R => '0'
    );
\tstamp_fake_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(19),
      Q => tstamp_fake(19),
      R => '0'
    );
\tstamp_fake_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(1),
      Q => tstamp_fake(1),
      R => '0'
    );
\tstamp_fake_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(20),
      Q => tstamp_fake(20),
      R => '0'
    );
\tstamp_fake_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(21),
      Q => tstamp_fake(21),
      R => '0'
    );
\tstamp_fake_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(22),
      Q => tstamp_fake(22),
      R => '0'
    );
\tstamp_fake_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(23),
      Q => tstamp_fake(23),
      R => '0'
    );
\tstamp_fake_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(24),
      Q => tstamp_fake(24),
      R => '0'
    );
\tstamp_fake_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(25),
      Q => tstamp_fake(25),
      R => '0'
    );
\tstamp_fake_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(26),
      Q => tstamp_fake(26),
      R => '0'
    );
\tstamp_fake_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(27),
      Q => tstamp_fake(27),
      R => '0'
    );
\tstamp_fake_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(28),
      Q => tstamp_fake(28),
      R => '0'
    );
\tstamp_fake_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(29),
      Q => tstamp_fake(29),
      R => '0'
    );
\tstamp_fake_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(2),
      Q => tstamp_fake(2),
      R => '0'
    );
\tstamp_fake_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(30),
      Q => tstamp_fake(30),
      R => '0'
    );
\tstamp_fake_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(31),
      Q => tstamp_fake(31),
      R => '0'
    );
\tstamp_fake_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(32),
      Q => tstamp_fake(32),
      R => '0'
    );
\tstamp_fake_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(33),
      Q => tstamp_fake(33),
      R => '0'
    );
\tstamp_fake_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(34),
      Q => tstamp_fake(34),
      R => '0'
    );
\tstamp_fake_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(35),
      Q => tstamp_fake(35),
      R => '0'
    );
\tstamp_fake_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(36),
      Q => tstamp_fake(36),
      R => '0'
    );
\tstamp_fake_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(37),
      Q => tstamp_fake(37),
      R => '0'
    );
\tstamp_fake_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(38),
      Q => tstamp_fake(38),
      R => '0'
    );
\tstamp_fake_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(39),
      Q => tstamp_fake(39),
      R => '0'
    );
\tstamp_fake_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(3),
      Q => tstamp_fake(3),
      R => '0'
    );
\tstamp_fake_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(40),
      Q => tstamp_fake(40),
      R => '0'
    );
\tstamp_fake_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(41),
      Q => tstamp_fake(41),
      R => '0'
    );
\tstamp_fake_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(42),
      Q => tstamp_fake(42),
      R => '0'
    );
\tstamp_fake_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(43),
      Q => tstamp_fake(43),
      R => '0'
    );
\tstamp_fake_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(44),
      Q => tstamp_fake(44),
      R => '0'
    );
\tstamp_fake_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(45),
      Q => tstamp_fake(45),
      R => '0'
    );
\tstamp_fake_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(46),
      Q => tstamp_fake(46),
      R => '0'
    );
\tstamp_fake_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(47),
      Q => tstamp_fake(47),
      R => '0'
    );
\tstamp_fake_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(48),
      Q => tstamp_fake(48),
      R => '0'
    );
\tstamp_fake_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(49),
      Q => tstamp_fake(49),
      R => '0'
    );
\tstamp_fake_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(4),
      Q => tstamp_fake(4),
      R => '0'
    );
\tstamp_fake_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(50),
      Q => tstamp_fake(50),
      R => '0'
    );
\tstamp_fake_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(51),
      Q => tstamp_fake(51),
      R => '0'
    );
\tstamp_fake_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(52),
      Q => tstamp_fake(52),
      R => '0'
    );
\tstamp_fake_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(53),
      Q => tstamp_fake(53),
      R => '0'
    );
\tstamp_fake_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(54),
      Q => tstamp_fake(54),
      R => '0'
    );
\tstamp_fake_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(55),
      Q => tstamp_fake(55),
      R => '0'
    );
\tstamp_fake_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(56),
      Q => tstamp_fake(56),
      R => '0'
    );
\tstamp_fake_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(57),
      Q => tstamp_fake(57),
      R => '0'
    );
\tstamp_fake_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(58),
      Q => tstamp_fake(58),
      R => '0'
    );
\tstamp_fake_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(59),
      Q => tstamp_fake(59),
      R => '0'
    );
\tstamp_fake_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(5),
      Q => tstamp_fake(5),
      R => '0'
    );
\tstamp_fake_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(60),
      Q => tstamp_fake(60),
      R => '0'
    );
\tstamp_fake_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(61),
      Q => tstamp_fake(61),
      R => '0'
    );
\tstamp_fake_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(62),
      Q => tstamp_fake(62),
      R => '0'
    );
\tstamp_fake_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(63),
      Q => tstamp_fake(63),
      R => '0'
    );
\tstamp_fake_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(6),
      Q => tstamp_fake(6),
      R => '0'
    );
\tstamp_fake_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(7),
      Q => tstamp_fake(7),
      R => '0'
    );
\tstamp_fake_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(8),
      Q => tstamp_fake(8),
      R => '0'
    );
\tstamp_fake_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(9),
      Q => tstamp_fake(9),
      R => '0'
    );
\tstamp_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(0),
      I1 => fts_en(2),
      I2 => tstamp_in(0),
      O => \tstamp_out[0]_i_1_n_0\
    );
\tstamp_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(10),
      I1 => fts_en(2),
      I2 => tstamp_in(10),
      O => \tstamp_out[10]_i_1_n_0\
    );
\tstamp_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(11),
      I1 => fts_en(2),
      I2 => tstamp_in(11),
      O => \tstamp_out[11]_i_1_n_0\
    );
\tstamp_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(12),
      I1 => fts_en(2),
      I2 => tstamp_in(12),
      O => \tstamp_out[12]_i_1_n_0\
    );
\tstamp_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(13),
      I1 => fts_en(2),
      I2 => tstamp_in(13),
      O => \tstamp_out[13]_i_1_n_0\
    );
\tstamp_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(14),
      I1 => fts_en(2),
      I2 => tstamp_in(14),
      O => \tstamp_out[14]_i_1_n_0\
    );
\tstamp_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(15),
      I1 => fts_en(2),
      I2 => tstamp_in(15),
      O => \tstamp_out[15]_i_1_n_0\
    );
\tstamp_out[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(16),
      I1 => fts_en(2),
      I2 => tstamp_in(16),
      O => \tstamp_out[16]_i_1_n_0\
    );
\tstamp_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(17),
      I1 => fts_en(2),
      I2 => tstamp_in(17),
      O => \tstamp_out[17]_i_1_n_0\
    );
\tstamp_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(18),
      I1 => fts_en(2),
      I2 => tstamp_in(18),
      O => \tstamp_out[18]_i_1_n_0\
    );
\tstamp_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(19),
      I1 => fts_en(2),
      I2 => tstamp_in(19),
      O => \tstamp_out[19]_i_1_n_0\
    );
\tstamp_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(1),
      I1 => fts_en(2),
      I2 => tstamp_in(1),
      O => \tstamp_out[1]_i_1_n_0\
    );
\tstamp_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(20),
      I1 => fts_en(2),
      I2 => tstamp_in(20),
      O => \tstamp_out[20]_i_1_n_0\
    );
\tstamp_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(21),
      I1 => fts_en(2),
      I2 => tstamp_in(21),
      O => \tstamp_out[21]_i_1_n_0\
    );
\tstamp_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(22),
      I1 => fts_en(2),
      I2 => tstamp_in(22),
      O => \tstamp_out[22]_i_1_n_0\
    );
\tstamp_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(23),
      I1 => fts_en(2),
      I2 => tstamp_in(23),
      O => \tstamp_out[23]_i_1_n_0\
    );
\tstamp_out[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(24),
      I1 => fts_en(2),
      I2 => tstamp_in(24),
      O => \tstamp_out[24]_i_1_n_0\
    );
\tstamp_out[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(25),
      I1 => fts_en(2),
      I2 => tstamp_in(25),
      O => \tstamp_out[25]_i_1_n_0\
    );
\tstamp_out[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(26),
      I1 => fts_en(2),
      I2 => tstamp_in(26),
      O => \tstamp_out[26]_i_1_n_0\
    );
\tstamp_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(27),
      I1 => fts_en(2),
      I2 => tstamp_in(27),
      O => \tstamp_out[27]_i_1_n_0\
    );
\tstamp_out[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(28),
      I1 => fts_en(2),
      I2 => tstamp_in(28),
      O => \tstamp_out[28]_i_1_n_0\
    );
\tstamp_out[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(29),
      I1 => fts_en(2),
      I2 => tstamp_in(29),
      O => \tstamp_out[29]_i_1_n_0\
    );
\tstamp_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(2),
      I1 => fts_en(2),
      I2 => tstamp_in(2),
      O => \tstamp_out[2]_i_1_n_0\
    );
\tstamp_out[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(30),
      I1 => fts_en(2),
      I2 => tstamp_in(30),
      O => \tstamp_out[30]_i_1_n_0\
    );
\tstamp_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(31),
      I1 => fts_en(2),
      I2 => tstamp_in(31),
      O => \tstamp_out[31]_i_1_n_0\
    );
\tstamp_out[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(32),
      I1 => fts_en(2),
      I2 => tstamp_in(32),
      O => \tstamp_out[32]_i_1_n_0\
    );
\tstamp_out[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(33),
      I1 => fts_en(2),
      I2 => tstamp_in(33),
      O => \tstamp_out[33]_i_1_n_0\
    );
\tstamp_out[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(34),
      I1 => fts_en(2),
      I2 => tstamp_in(34),
      O => \tstamp_out[34]_i_1_n_0\
    );
\tstamp_out[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(35),
      I1 => fts_en(2),
      I2 => tstamp_in(35),
      O => \tstamp_out[35]_i_1_n_0\
    );
\tstamp_out[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(36),
      I1 => fts_en(2),
      I2 => tstamp_in(36),
      O => \tstamp_out[36]_i_1_n_0\
    );
\tstamp_out[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(37),
      I1 => fts_en(2),
      I2 => tstamp_in(37),
      O => \tstamp_out[37]_i_1_n_0\
    );
\tstamp_out[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(38),
      I1 => fts_en(2),
      I2 => tstamp_in(38),
      O => \tstamp_out[38]_i_1_n_0\
    );
\tstamp_out[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(39),
      I1 => fts_en(2),
      I2 => tstamp_in(39),
      O => \tstamp_out[39]_i_1_n_0\
    );
\tstamp_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(3),
      I1 => fts_en(2),
      I2 => tstamp_in(3),
      O => \tstamp_out[3]_i_1_n_0\
    );
\tstamp_out[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(40),
      I1 => fts_en(2),
      I2 => tstamp_in(40),
      O => \tstamp_out[40]_i_1_n_0\
    );
\tstamp_out[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(41),
      I1 => fts_en(2),
      I2 => tstamp_in(41),
      O => \tstamp_out[41]_i_1_n_0\
    );
\tstamp_out[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(42),
      I1 => fts_en(2),
      I2 => tstamp_in(42),
      O => \tstamp_out[42]_i_1_n_0\
    );
\tstamp_out[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(43),
      I1 => fts_en(2),
      I2 => tstamp_in(43),
      O => \tstamp_out[43]_i_1_n_0\
    );
\tstamp_out[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(44),
      I1 => fts_en(2),
      I2 => tstamp_in(44),
      O => \tstamp_out[44]_i_1_n_0\
    );
\tstamp_out[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(45),
      I1 => fts_en(2),
      I2 => tstamp_in(45),
      O => \tstamp_out[45]_i_1_n_0\
    );
\tstamp_out[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(46),
      I1 => fts_en(2),
      I2 => tstamp_in(46),
      O => \tstamp_out[46]_i_1_n_0\
    );
\tstamp_out[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(47),
      I1 => fts_en(2),
      I2 => tstamp_in(47),
      O => \tstamp_out[47]_i_1_n_0\
    );
\tstamp_out[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(48),
      I1 => fts_en(2),
      I2 => tstamp_in(48),
      O => \tstamp_out[48]_i_1_n_0\
    );
\tstamp_out[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(49),
      I1 => fts_en(2),
      I2 => tstamp_in(49),
      O => \tstamp_out[49]_i_1_n_0\
    );
\tstamp_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(4),
      I1 => fts_en(2),
      I2 => tstamp_in(4),
      O => \tstamp_out[4]_i_1_n_0\
    );
\tstamp_out[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(50),
      I1 => fts_en(2),
      I2 => tstamp_in(50),
      O => \tstamp_out[50]_i_1_n_0\
    );
\tstamp_out[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(51),
      I1 => fts_en(2),
      I2 => tstamp_in(51),
      O => \tstamp_out[51]_i_1_n_0\
    );
\tstamp_out[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(52),
      I1 => fts_en(2),
      I2 => tstamp_in(52),
      O => \tstamp_out[52]_i_1_n_0\
    );
\tstamp_out[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(53),
      I1 => fts_en(2),
      I2 => tstamp_in(53),
      O => \tstamp_out[53]_i_1_n_0\
    );
\tstamp_out[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(54),
      I1 => fts_en(2),
      I2 => tstamp_in(54),
      O => \tstamp_out[54]_i_1_n_0\
    );
\tstamp_out[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(55),
      I1 => fts_en(2),
      I2 => tstamp_in(55),
      O => \tstamp_out[55]_i_1_n_0\
    );
\tstamp_out[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(56),
      I1 => fts_en(2),
      I2 => tstamp_in(56),
      O => \tstamp_out[56]_i_1_n_0\
    );
\tstamp_out[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(57),
      I1 => fts_en(2),
      I2 => tstamp_in(57),
      O => \tstamp_out[57]_i_1_n_0\
    );
\tstamp_out[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(58),
      I1 => fts_en(2),
      I2 => tstamp_in(58),
      O => \tstamp_out[58]_i_1_n_0\
    );
\tstamp_out[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(59),
      I1 => fts_en(2),
      I2 => tstamp_in(59),
      O => \tstamp_out[59]_i_1_n_0\
    );
\tstamp_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(5),
      I1 => fts_en(2),
      I2 => tstamp_in(5),
      O => \tstamp_out[5]_i_1_n_0\
    );
\tstamp_out[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(60),
      I1 => fts_en(2),
      I2 => tstamp_in(60),
      O => \tstamp_out[60]_i_1_n_0\
    );
\tstamp_out[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(61),
      I1 => fts_en(2),
      I2 => tstamp_in(61),
      O => \tstamp_out[61]_i_1_n_0\
    );
\tstamp_out[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(62),
      I1 => fts_en(2),
      I2 => tstamp_in(62),
      O => \tstamp_out[62]_i_1_n_0\
    );
\tstamp_out[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(63),
      I1 => fts_en(2),
      I2 => tstamp_in(63),
      O => \tstamp_out[63]_i_1_n_0\
    );
\tstamp_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(6),
      I1 => fts_en(2),
      I2 => tstamp_in(6),
      O => \tstamp_out[6]_i_1_n_0\
    );
\tstamp_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(7),
      I1 => fts_en(2),
      I2 => tstamp_in(7),
      O => \tstamp_out[7]_i_1_n_0\
    );
\tstamp_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(8),
      I1 => fts_en(2),
      I2 => tstamp_in(8),
      O => \tstamp_out[8]_i_1_n_0\
    );
\tstamp_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tstamp_fake(9),
      I1 => fts_en(2),
      I2 => tstamp_in(9),
      O => \tstamp_out[9]_i_1_n_0\
    );
\tstamp_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[0]_i_1_n_0\,
      Q => tstamp_out(0),
      R => '0'
    );
\tstamp_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[10]_i_1_n_0\,
      Q => tstamp_out(10),
      R => '0'
    );
\tstamp_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[11]_i_1_n_0\,
      Q => tstamp_out(11),
      R => '0'
    );
\tstamp_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[12]_i_1_n_0\,
      Q => tstamp_out(12),
      R => '0'
    );
\tstamp_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[13]_i_1_n_0\,
      Q => tstamp_out(13),
      R => '0'
    );
\tstamp_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[14]_i_1_n_0\,
      Q => tstamp_out(14),
      R => '0'
    );
\tstamp_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[15]_i_1_n_0\,
      Q => tstamp_out(15),
      R => '0'
    );
\tstamp_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[16]_i_1_n_0\,
      Q => tstamp_out(16),
      R => '0'
    );
\tstamp_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[17]_i_1_n_0\,
      Q => tstamp_out(17),
      R => '0'
    );
\tstamp_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[18]_i_1_n_0\,
      Q => tstamp_out(18),
      R => '0'
    );
\tstamp_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[19]_i_1_n_0\,
      Q => tstamp_out(19),
      R => '0'
    );
\tstamp_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[1]_i_1_n_0\,
      Q => tstamp_out(1),
      R => '0'
    );
\tstamp_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[20]_i_1_n_0\,
      Q => tstamp_out(20),
      R => '0'
    );
\tstamp_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[21]_i_1_n_0\,
      Q => tstamp_out(21),
      R => '0'
    );
\tstamp_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[22]_i_1_n_0\,
      Q => tstamp_out(22),
      R => '0'
    );
\tstamp_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[23]_i_1_n_0\,
      Q => tstamp_out(23),
      R => '0'
    );
\tstamp_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[24]_i_1_n_0\,
      Q => tstamp_out(24),
      R => '0'
    );
\tstamp_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[25]_i_1_n_0\,
      Q => tstamp_out(25),
      R => '0'
    );
\tstamp_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[26]_i_1_n_0\,
      Q => tstamp_out(26),
      R => '0'
    );
\tstamp_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[27]_i_1_n_0\,
      Q => tstamp_out(27),
      R => '0'
    );
\tstamp_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[28]_i_1_n_0\,
      Q => tstamp_out(28),
      R => '0'
    );
\tstamp_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[29]_i_1_n_0\,
      Q => tstamp_out(29),
      R => '0'
    );
\tstamp_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[2]_i_1_n_0\,
      Q => tstamp_out(2),
      R => '0'
    );
\tstamp_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[30]_i_1_n_0\,
      Q => tstamp_out(30),
      R => '0'
    );
\tstamp_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[31]_i_1_n_0\,
      Q => tstamp_out(31),
      R => '0'
    );
\tstamp_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[32]_i_1_n_0\,
      Q => tstamp_out(32),
      R => '0'
    );
\tstamp_out_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[33]_i_1_n_0\,
      Q => tstamp_out(33),
      R => '0'
    );
\tstamp_out_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[34]_i_1_n_0\,
      Q => tstamp_out(34),
      R => '0'
    );
\tstamp_out_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[35]_i_1_n_0\,
      Q => tstamp_out(35),
      R => '0'
    );
\tstamp_out_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[36]_i_1_n_0\,
      Q => tstamp_out(36),
      R => '0'
    );
\tstamp_out_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[37]_i_1_n_0\,
      Q => tstamp_out(37),
      R => '0'
    );
\tstamp_out_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[38]_i_1_n_0\,
      Q => tstamp_out(38),
      R => '0'
    );
\tstamp_out_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[39]_i_1_n_0\,
      Q => tstamp_out(39),
      R => '0'
    );
\tstamp_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[3]_i_1_n_0\,
      Q => tstamp_out(3),
      R => '0'
    );
\tstamp_out_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[40]_i_1_n_0\,
      Q => tstamp_out(40),
      R => '0'
    );
\tstamp_out_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[41]_i_1_n_0\,
      Q => tstamp_out(41),
      R => '0'
    );
\tstamp_out_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[42]_i_1_n_0\,
      Q => tstamp_out(42),
      R => '0'
    );
\tstamp_out_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[43]_i_1_n_0\,
      Q => tstamp_out(43),
      R => '0'
    );
\tstamp_out_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[44]_i_1_n_0\,
      Q => tstamp_out(44),
      R => '0'
    );
\tstamp_out_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[45]_i_1_n_0\,
      Q => tstamp_out(45),
      R => '0'
    );
\tstamp_out_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[46]_i_1_n_0\,
      Q => tstamp_out(46),
      R => '0'
    );
\tstamp_out_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[47]_i_1_n_0\,
      Q => tstamp_out(47),
      R => '0'
    );
\tstamp_out_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[48]_i_1_n_0\,
      Q => tstamp_out(48),
      R => '0'
    );
\tstamp_out_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[49]_i_1_n_0\,
      Q => tstamp_out(49),
      R => '0'
    );
\tstamp_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[4]_i_1_n_0\,
      Q => tstamp_out(4),
      R => '0'
    );
\tstamp_out_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[50]_i_1_n_0\,
      Q => tstamp_out(50),
      R => '0'
    );
\tstamp_out_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[51]_i_1_n_0\,
      Q => tstamp_out(51),
      R => '0'
    );
\tstamp_out_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[52]_i_1_n_0\,
      Q => tstamp_out(52),
      R => '0'
    );
\tstamp_out_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[53]_i_1_n_0\,
      Q => tstamp_out(53),
      R => '0'
    );
\tstamp_out_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[54]_i_1_n_0\,
      Q => tstamp_out(54),
      R => '0'
    );
\tstamp_out_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[55]_i_1_n_0\,
      Q => tstamp_out(55),
      R => '0'
    );
\tstamp_out_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[56]_i_1_n_0\,
      Q => tstamp_out(56),
      R => '0'
    );
\tstamp_out_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[57]_i_1_n_0\,
      Q => tstamp_out(57),
      R => '0'
    );
\tstamp_out_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[58]_i_1_n_0\,
      Q => tstamp_out(58),
      R => '0'
    );
\tstamp_out_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[59]_i_1_n_0\,
      Q => tstamp_out(59),
      R => '0'
    );
\tstamp_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[5]_i_1_n_0\,
      Q => tstamp_out(5),
      R => '0'
    );
\tstamp_out_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[60]_i_1_n_0\,
      Q => tstamp_out(60),
      R => '0'
    );
\tstamp_out_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[61]_i_1_n_0\,
      Q => tstamp_out(61),
      R => '0'
    );
\tstamp_out_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[62]_i_1_n_0\,
      Q => tstamp_out(62),
      R => '0'
    );
\tstamp_out_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[63]_i_1_n_0\,
      Q => tstamp_out(63),
      R => '0'
    );
\tstamp_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[6]_i_1_n_0\,
      Q => tstamp_out(6),
      R => '0'
    );
\tstamp_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[7]_i_1_n_0\,
      Q => tstamp_out(7),
      R => '0'
    );
\tstamp_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[8]_i_1_n_0\,
      Q => tstamp_out(8),
      R => '0'
    );
\tstamp_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \tstamp_out[9]_i_1_n_0\,
      Q => tstamp_out(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ts_reclock_0_0 is
  port (
    stat_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_in : in STD_LOGIC;
    rdy_in : in STD_LOGIC;
    sync_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sync_stb_in : in STD_LOGIC;
    sync_first_in : in STD_LOGIC;
    tstamp_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    stat_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_out : out STD_LOGIC;
    rdy_out : out STD_LOGIC;
    sync_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sync_stb_out : out STD_LOGIC;
    sync_first_out : out STD_LOGIC;
    tstamp_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ts_valid : out STD_LOGIC;
    clk62p5 : in STD_LOGIC;
    fifo_rst : in STD_LOGIC;
    fifo_valid : out STD_LOGIC;
    cmd_code_idle : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_edge : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_sync : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_act : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_reset : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_code_adc_reset : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cmd_bit_idle : out STD_LOGIC;
    cmd_bit_edge : out STD_LOGIC;
    cmd_bit_sync : out STD_LOGIC;
    cmd_bit_act : out STD_LOGIC;
    cmd_bit_reset : out STD_LOGIC;
    cmd_bit_adc_reset : out STD_LOGIC;
    fake_time_stamp_en : in STD_LOGIC;
    fake_time_stamp_init : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ts_reclock_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ts_reclock_0_0 : entity is "design_1_ts_reclock_0_0,ts_reclock,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ts_reclock_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ts_reclock_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ts_reclock_0_0 : entity is "ts_reclock,Vivado 2020.1";
end design_1_ts_reclock_0_0;

architecture STRUCTURE of design_1_ts_reclock_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^rdy_in\ : STD_LOGIC;
  signal \^rst_in\ : STD_LOGIC;
  signal \^stat_in\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^sync_first_in\ : STD_LOGIC;
  signal \^sync_in\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^sync_stb_in\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of cmd_bit_adc_reset : signal is "xilinx.com:signal:reset:1.0 cmd_bit_adc_reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of cmd_bit_adc_reset : signal is "XIL_INTERFACENAME cmd_bit_adc_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of cmd_bit_reset : signal is "xilinx.com:signal:reset:1.0 cmd_bit_reset RST";
  attribute X_INTERFACE_PARAMETER of cmd_bit_reset : signal is "XIL_INTERFACENAME cmd_bit_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fifo_rst : signal is "xilinx.com:signal:reset:1.0 fifo_rst RST";
  attribute X_INTERFACE_PARAMETER of fifo_rst : signal is "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of cmd_code_adc_reset : signal is "xilinx.com:signal:reset:1.0 cmd_code_adc_reset RST";
  attribute X_INTERFACE_PARAMETER of cmd_code_adc_reset : signal is "XIL_INTERFACENAME cmd_code_adc_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of cmd_code_reset : signal is "xilinx.com:signal:reset:1.0 cmd_code_reset RST";
  attribute X_INTERFACE_PARAMETER of cmd_code_reset : signal is "XIL_INTERFACENAME cmd_code_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^rdy_in\ <= rdy_in;
  \^rst_in\ <= rst_in;
  \^stat_in\(3 downto 0) <= stat_in(3 downto 0);
  \^sync_first_in\ <= sync_first_in;
  \^sync_in\(3 downto 0) <= sync_in(3 downto 0);
  \^sync_stb_in\ <= sync_stb_in;
  fifo_valid <= \<const1>\;
  rdy_out <= \^rdy_in\;
  rst_out <= \^rst_in\;
  stat_out(3 downto 0) <= \^stat_in\(3 downto 0);
  sync_first_out <= \^sync_first_in\;
  sync_out(3 downto 0) <= \^sync_in\(3 downto 0);
  sync_stb_out <= \^sync_stb_in\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_ts_reclock_0_0_ts_reclock
     port map (
      clk62p5 => clk62p5,
      cmd_bit_act => cmd_bit_act,
      cmd_bit_adc_reset => cmd_bit_adc_reset,
      cmd_bit_edge => cmd_bit_edge,
      cmd_bit_idle => cmd_bit_idle,
      cmd_bit_reset => cmd_bit_reset,
      cmd_bit_sync => cmd_bit_sync,
      cmd_code_act(7 downto 0) => cmd_code_act(7 downto 0),
      cmd_code_adc_reset(7 downto 0) => cmd_code_adc_reset(7 downto 0),
      cmd_code_edge(7 downto 0) => cmd_code_edge(7 downto 0),
      cmd_code_idle(7 downto 0) => cmd_code_idle(7 downto 0),
      cmd_code_reset(7 downto 0) => cmd_code_reset(7 downto 0),
      cmd_code_sync(7 downto 0) => cmd_code_sync(7 downto 0),
      fake_time_stamp_en => fake_time_stamp_en,
      fake_time_stamp_init(63 downto 0) => fake_time_stamp_init(63 downto 0),
      sync_first_in => \^sync_first_in\,
      sync_in(3 downto 0) => \^sync_in\(3 downto 0),
      sync_stb_in => \^sync_stb_in\,
      ts_valid => ts_valid,
      tstamp_in(63 downto 0) => tstamp_in(63 downto 0),
      tstamp_out(63 downto 0) => tstamp_out(63 downto 0)
    );
end STRUCTURE;
