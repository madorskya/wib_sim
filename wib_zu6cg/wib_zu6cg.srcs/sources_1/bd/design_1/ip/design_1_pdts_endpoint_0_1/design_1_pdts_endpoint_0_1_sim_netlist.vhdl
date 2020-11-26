-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
-- Date        : Thu Nov 26 03:50:55 2020
-- Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_pdts_endpoint_0_1/design_1_pdts_endpoint_0_1_sim_netlist.vhdl
-- Design      : design_1_pdts_endpoint_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_0_1_outputlogic_crc16 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \lfsr_q_reg[15]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    err_c : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lfsr_q_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    k : in STD_LOGIC;
    \err_reg[0]\ : in STD_LOGIC;
    \lfsr_q_reg[0]_0\ : in STD_LOGIC;
    \err_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_0\ : in STD_LOGIC;
    \lfsr_q_reg[15]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lfsr_q_reg[15]_2\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rec_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_0_1_outputlogic_crc16 : entity is "outputlogic_crc16";
end design_1_pdts_endpoint_0_1_outputlogic_crc16;

architecture STRUCTURE of design_1_pdts_endpoint_0_1_outputlogic_crc16 is
  signal \err[0]_i_3_n_0\ : STD_LOGIC;
  signal \err[0]_i_5_n_0\ : STD_LOGIC;
  signal \err[0]_i_6_n_0\ : STD_LOGIC;
  signal \err[0]_i_7_n_0\ : STD_LOGIC;
  signal \err[0]_i_8_n_0\ : STD_LOGIC;
  signal lfsr_c : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \^lfsr_q_reg[15]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \lfsr_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair0";
begin
  \lfsr_q_reg[15]_0\(9 downto 0) <= \^lfsr_q_reg[15]_0\(9 downto 0);
\err[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBABBBBBBBBB"
    )
        port map (
      I0 => \err_reg[0]\,
      I1 => \err[0]_i_3_n_0\,
      I2 => \lfsr_q_reg[0]_0\,
      I3 => \err_reg[0]_0\,
      I4 => Q(1),
      I5 => Q(0),
      O => \state_reg[1]\(0)
    );
\err[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0075FFFFFF"
    )
        port map (
      I0 => \lfsr_q_reg[0]_0\,
      I1 => \err[0]_i_5_n_0\,
      I2 => \err[0]_i_6_n_0\,
      I3 => \state_reg[0]\,
      I4 => Q(0),
      I5 => Q(1),
      O => \err[0]_i_3_n_0\
    );
\err[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(6),
      I1 => \lfsr_q_reg_n_0_[6]\,
      I2 => \^lfsr_q_reg[15]_0\(9),
      I3 => \^lfsr_q_reg[15]_0\(0),
      I4 => \err[0]_i_7_n_0\,
      O => \err[0]_i_5_n_0\
    );
\err[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[1]\,
      I1 => \lfsr_q_reg_n_0_[2]\,
      I2 => \lfsr_q_reg_n_0_[3]\,
      I3 => \lfsr_q_reg_n_0_[4]\,
      I4 => \err[0]_i_8_n_0\,
      O => \err[0]_i_6_n_0\
    );
\err[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[5]\,
      I1 => \^lfsr_q_reg[15]_0\(5),
      I2 => \^lfsr_q_reg[15]_0\(1),
      I3 => \^lfsr_q_reg[15]_0\(4),
      O => \err[0]_i_7_n_0\
    );
\err[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^lfsr_q_reg[15]_0\(2),
      I1 => \^lfsr_q_reg[15]_0\(3),
      I2 => \^lfsr_q_reg[15]_0\(8),
      I3 => \^lfsr_q_reg[15]_0\(7),
      O => \err[0]_i_8_n_0\
    );
\lfsr_q[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[1]\,
      I1 => \lfsr_q_reg[9]_0\(0),
      I2 => k,
      I3 => \^lfsr_q_reg[15]_0\(9),
      O => lfsr_c(9)
    );
\lfsr_q_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg[15]_2\(0),
      Q => \^lfsr_q_reg[15]_0\(0),
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg_n_0_[2]\,
      Q => \^lfsr_q_reg[15]_0\(4),
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg_n_0_[3]\,
      Q => \^lfsr_q_reg[15]_0\(5),
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg_n_0_[4]\,
      Q => \^lfsr_q_reg[15]_0\(6),
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg_n_0_[5]\,
      Q => \^lfsr_q_reg[15]_0\(7),
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg_n_0_[6]\,
      Q => \^lfsr_q_reg[15]_0\(8),
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg[15]_2\(9),
      Q => \^lfsr_q_reg[15]_0\(9),
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg[15]_2\(1),
      Q => \lfsr_q_reg_n_0_[1]\,
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg[15]_2\(2),
      Q => \lfsr_q_reg_n_0_[2]\,
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg[15]_2\(3),
      Q => \lfsr_q_reg_n_0_[3]\,
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg[15]_2\(4),
      Q => \lfsr_q_reg_n_0_[4]\,
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg[15]_2\(5),
      Q => \lfsr_q_reg_n_0_[5]\,
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg[15]_2\(6),
      Q => \lfsr_q_reg_n_0_[6]\,
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg[15]_2\(7),
      Q => \^lfsr_q_reg[15]_0\(1),
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => \lfsr_q_reg[15]_2\(8),
      Q => \^lfsr_q_reg[15]_0\(2),
      S => \lfsr_q_reg[0]_0\
    );
\lfsr_q_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => \lfsr_q_reg[15]_1\(0),
      D => lfsr_c(9),
      Q => \^lfsr_q_reg[15]_0\(3),
      S => \lfsr_q_reg[0]_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF37FF"
    )
        port map (
      I0 => \state_reg[0]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \err[0]_i_3_n_0\,
      I4 => err_c(0),
      O => D(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3F3F3B3C3C3C08"
    )
        port map (
      I0 => SR(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => err_c(0),
      I4 => \state[1]_i_3_n_0\,
      I5 => \state_reg[0]_0\,
      O => E(0)
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCDCFCFC"
    )
        port map (
      I0 => \state_reg[0]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => err_c(0),
      I4 => \err[0]_i_3_n_0\,
      O => D(1)
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4646064606060606"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \state_reg[0]\,
      I3 => \err[0]_i_6_n_0\,
      I4 => \err[0]_i_5_n_0\,
      I5 => \lfsr_q_reg[0]_0\,
      O => \state[1]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_0_1_pdts_dec8b10b is
  port (
    k_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \q_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[7]_0\ : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    stb_0 : out STD_LOGIC;
    s_match : out STD_LOGIC;
    \q_reg[7]_1\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    stbd_reg : out STD_LOGIC;
    slen : out STD_LOGIC_VECTOR ( 0 to 0 );
    pkt_end_reg : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_0\ : out STD_LOGIC;
    k_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lctr_reg[6]\ : out STD_LOGIC;
    rec_clk : in STD_LOGIC;
    \lfsr_q_reg[8]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \lctr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    lock_reg : in STD_LOGIC_VECTOR ( 5 downto 0 );
    lock_reg_0 : in STD_LOGIC;
    disp_reg_0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    derr_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tgrp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \lfsr_q_reg[15]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pkt_end : in STD_LOGIC;
    \evtctr_i_reg[31]\ : in STD_LOGIC;
    lock : in STD_LOGIC;
    \err_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_0_1_pdts_dec8b10b : entity is "pdts_dec8b10b";
end design_1_pdts_endpoint_0_1_pdts_dec8b10b;

architecture STRUCTURE of design_1_pdts_endpoint_0_1_pdts_dec8b10b is
  signal \^d\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cerr : STD_LOGIC;
  signal cerr_i_10_n_0 : STD_LOGIC;
  signal cerr_i_11_n_0 : STD_LOGIC;
  signal cerr_i_12_n_0 : STD_LOGIC;
  signal cerr_i_13_n_0 : STD_LOGIC;
  signal cerr_i_2_n_0 : STD_LOGIC;
  signal cerr_i_3_n_0 : STD_LOGIC;
  signal cerr_i_4_n_0 : STD_LOGIC;
  signal cerr_i_5_n_0 : STD_LOGIC;
  signal cerr_i_6_n_0 : STD_LOGIC;
  signal cerr_i_7_n_0 : STD_LOGIC;
  signal cerr_i_8_n_0 : STD_LOGIC;
  signal cerr_i_9_n_0 : STD_LOGIC;
  signal codeErr : STD_LOGIC;
  signal dataKOut : STD_LOGIC;
  signal dataOut : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal derr : STD_LOGIC;
  signal derr_i_10_n_0 : STD_LOGIC;
  signal derr_i_11_n_0 : STD_LOGIC;
  signal derr_i_12_n_0 : STD_LOGIC;
  signal derr_i_13_n_0 : STD_LOGIC;
  signal derr_i_14_n_0 : STD_LOGIC;
  signal derr_i_15_n_0 : STD_LOGIC;
  signal derr_i_16_n_0 : STD_LOGIC;
  signal derr_i_17_n_0 : STD_LOGIC;
  signal derr_i_2_n_0 : STD_LOGIC;
  signal derr_i_3_n_0 : STD_LOGIC;
  signal derr_i_4_n_0 : STD_LOGIC;
  signal derr_i_5_n_0 : STD_LOGIC;
  signal derr_i_6_n_0 : STD_LOGIC;
  signal derr_i_7_n_0 : STD_LOGIC;
  signal derr_i_8_n_0 : STD_LOGIC;
  signal derr_i_9_n_0 : STD_LOGIC;
  signal di : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal disp : STD_LOGIC;
  signal dispErr : STD_LOGIC;
  signal disp_i_1_n_0 : STD_LOGIC;
  signal disp_i_2_n_0 : STD_LOGIC;
  signal disp_i_4_n_0 : STD_LOGIC;
  signal disp_i_5_n_0 : STD_LOGIC;
  signal disp_reg_i_3_n_0 : STD_LOGIC;
  signal \err[2]_i_6_n_0\ : STD_LOGIC;
  signal \err[2]_i_7_n_0\ : STD_LOGIC;
  signal \evtctr_i[31]_i_3_n_0\ : STD_LOGIC;
  signal \evtctr_i[31]_i_4_n_0\ : STD_LOGIC;
  signal k_i_2_n_0 : STD_LOGIC;
  signal k_i_3_n_0 : STD_LOGIC;
  signal k_i_4_n_0 : STD_LOGIC;
  signal \^k_reg_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_4_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_5_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_6_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_7_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_3_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_4_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_5_n_0\ : STD_LOGIC;
  signal lock_i_2_n_0 : STD_LOGIC;
  signal lock_i_3_n_0 : STD_LOGIC;
  signal \q[7]_i_1_n_0\ : STD_LOGIC;
  signal \q[7]_i_3_n_0\ : STD_LOGIC;
  signal \q[7]_i_4_n_0\ : STD_LOGIC;
  signal \^q_reg[3]_0\ : STD_LOGIC;
  signal \^q_reg[7]_0\ : STD_LOGIC;
  signal s_match_r_i_2_n_0 : STD_LOGIC;
  signal \^slen\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^stb_0\ : STD_LOGIC;
  signal \sync[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sync[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cerr_i_5 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of derr_i_10 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of derr_i_11 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of derr_i_15 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of derr_i_16 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of disp_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \err[2]_i_6\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \err[2]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \evtctr_i[31]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \evtctr_i[31]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of k_i_3 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lctr[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \lctr[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lctr[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lctr[5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \lctr[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \lctr[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \lfsr_q[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \lfsr_q[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \lfsr_q[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \lfsr_q[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \lfsr_q[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \lfsr_q[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of lock_i_3 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \q[7]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of s_match_r_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sctr[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sr[92]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sr[93]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sr[94]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sr[95]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sync[0]_INST_0_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sync[1]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sync[2]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sync[3]_INST_0\ : label is "soft_lutpair22";
begin
  D(9 downto 0) <= \^d\(9 downto 0);
  Q(0) <= \^q\(0);
  k_reg_0 <= \^k_reg_0\;
  \q_reg[3]_0\ <= \^q_reg[3]_0\;
  \q_reg[7]_0\ <= \^q_reg[7]_0\;
  slen(0) <= \^slen\(0);
  stb_0 <= \^stb_0\;
cerr_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88080018001011F"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(3),
      I3 => disp_reg_0(0),
      I4 => disp_reg_0(1),
      I5 => disp_reg_0(2),
      O => cerr_i_10_n_0
    );
cerr_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8898117D557577F"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(2),
      I2 => disp_reg_0(1),
      I3 => disp_reg_0(0),
      I4 => disp_reg_0(3),
      I5 => disp_reg_0(4),
      O => cerr_i_11_n_0
    );
cerr_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88181179117177F"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(2),
      I3 => disp_reg_0(1),
      I4 => disp_reg_0(0),
      I5 => disp_reg_0(3),
      O => cerr_i_12_n_0
    );
cerr_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E889E989899F"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(3),
      I3 => disp_reg_0(0),
      I4 => disp_reg_0(1),
      I5 => disp_reg_0(2),
      O => cerr_i_13_n_0
    );
cerr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B8BBB8BB"
    )
        port map (
      I0 => cerr_i_4_n_0,
      I1 => disp_reg_0(9),
      I2 => cerr_i_5_n_0,
      I3 => disp_reg_0(7),
      I4 => cerr_i_6_n_0,
      I5 => disp_reg_0(6),
      O => cerr_i_2_n_0
    );
cerr_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => cerr_i_7_n_0,
      I1 => disp_reg_0(6),
      I2 => disp_reg_0(7),
      I3 => cerr_i_5_n_0,
      I4 => disp_reg_0(9),
      I5 => cerr_i_8_n_0,
      O => cerr_i_3_n_0
    );
cerr_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => cerr_i_9_n_0,
      I1 => disp_reg_0(7),
      I2 => cerr_i_10_n_0,
      I3 => disp_reg_0(6),
      I4 => cerr_i_11_n_0,
      O => cerr_i_4_n_0
    );
cerr_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cerr_i_9_n_0,
      I1 => disp_reg_0(6),
      I2 => cerr_i_12_n_0,
      O => cerr_i_5_n_0
    );
cerr_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAFAF7FBFFFFFFF"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(2),
      I3 => disp_reg_0(1),
      I4 => disp_reg_0(0),
      I5 => disp_reg_0(3),
      O => cerr_i_6_n_0
    );
cerr_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFDDFFFEDFDD7"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(3),
      I2 => disp_reg_0(1),
      I3 => disp_reg_0(2),
      I4 => disp_reg_0(0),
      I5 => disp_reg_0(4),
      O => cerr_i_7_n_0
    );
cerr_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => cerr_i_13_n_0,
      I1 => disp_reg_0(7),
      I2 => cerr_i_10_n_0,
      I3 => disp_reg_0(6),
      I4 => cerr_i_12_n_0,
      O => cerr_i_8_n_0
    );
cerr_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E881E881819F"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(3),
      I3 => disp_reg_0(0),
      I4 => disp_reg_0(1),
      I5 => disp_reg_0(2),
      O => cerr_i_9_n_0
    );
cerr_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \q[7]_i_1_n_0\,
      D => codeErr,
      Q => cerr,
      R => '0'
    );
cerr_reg_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => cerr_i_2_n_0,
      I1 => cerr_i_3_n_0,
      O => codeErr,
      S => disp_reg_0(8)
    );
derr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => derr_i_2_n_0,
      I1 => disp_reg_0(8),
      I2 => derr_i_3_n_0,
      I3 => disp_reg_0(9),
      I4 => derr_i_4_n_0,
      O => dispErr
    );
derr_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE9"
    )
        port map (
      I0 => disp_reg_0(3),
      I1 => disp_reg_0(0),
      I2 => disp_reg_0(1),
      I3 => disp_reg_0(2),
      O => derr_i_10_n_0
    );
derr_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E881"
    )
        port map (
      I0 => disp_reg_0(3),
      I1 => disp_reg_0(0),
      I2 => disp_reg_0(2),
      I3 => disp_reg_0(1),
      O => derr_i_11_n_0
    );
derr_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010117011717FF"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(3),
      I3 => disp_reg_0(2),
      I4 => disp_reg_0(1),
      I5 => disp_reg_0(0),
      O => derr_i_12_n_0
    );
derr_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EE9E997E99797FF"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(3),
      I3 => disp_reg_0(2),
      I4 => disp_reg_0(1),
      I5 => disp_reg_0(0),
      O => derr_i_13_n_0
    );
derr_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE8E880E8808000"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(3),
      I2 => disp_reg_0(4),
      I3 => disp_reg_0(1),
      I4 => disp_reg_0(2),
      I5 => disp_reg_0(0),
      O => derr_i_14_n_0
    );
derr_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8117"
    )
        port map (
      I0 => disp_reg_0(3),
      I1 => disp_reg_0(0),
      I2 => disp_reg_0(1),
      I3 => disp_reg_0(2),
      O => derr_i_15_n_0
    );
derr_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"977F"
    )
        port map (
      I0 => disp_reg_0(3),
      I1 => disp_reg_0(2),
      I2 => disp_reg_0(1),
      I3 => disp_reg_0(0),
      O => derr_i_16_n_0
    );
derr_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE9E997E9979770"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(3),
      I3 => disp_reg_0(2),
      I4 => disp_reg_0(1),
      I5 => disp_reg_0(0),
      O => derr_i_17_n_0
    );
derr_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => derr_i_5_n_0,
      I1 => disp_reg_0(7),
      I2 => derr_i_6_n_0,
      I3 => disp_reg_0(6),
      I4 => derr_i_7_n_0,
      O => derr_i_2_n_0
    );
derr_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => derr_i_6_n_0,
      I1 => disp_reg_0(7),
      I2 => derr_i_8_n_0,
      I3 => disp_reg_0(6),
      I4 => derr_i_9_n_0,
      O => derr_i_3_n_0
    );
derr_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8F3B8C0"
    )
        port map (
      I0 => derr_i_5_n_0,
      I1 => disp_reg_0(7),
      I2 => derr_i_9_n_0,
      I3 => disp_reg_0(6),
      I4 => derr_i_7_n_0,
      O => derr_i_4_n_0
    );
derr_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDE8FFFFEDE80000"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => derr_i_10_n_0,
      I2 => disp_reg_0(4),
      I3 => derr_i_11_n_0,
      I4 => disp,
      I5 => derr_i_12_n_0,
      O => derr_i_5_n_0
    );
derr_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDE8FFFFEDE80000"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => derr_i_10_n_0,
      I2 => disp_reg_0(4),
      I3 => derr_i_11_n_0,
      I4 => disp,
      I5 => derr_i_13_n_0,
      O => derr_i_6_n_0
    );
derr_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888BBBB88BB"
    )
        port map (
      I0 => derr_i_14_n_0,
      I1 => disp,
      I2 => derr_i_15_n_0,
      I3 => disp_reg_0(5),
      I4 => derr_i_16_n_0,
      I5 => disp_reg_0(4),
      O => derr_i_7_n_0
    );
derr_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => derr_i_14_n_0,
      I1 => disp,
      I2 => derr_i_12_n_0,
      O => derr_i_8_n_0
    );
derr_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888BBBB88BB"
    )
        port map (
      I0 => derr_i_17_n_0,
      I1 => disp,
      I2 => derr_i_15_n_0,
      I3 => disp_reg_0(5),
      I4 => derr_i_16_n_0,
      I5 => disp_reg_0(4),
      O => derr_i_9_n_0
    );
derr_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \q[7]_i_1_n_0\,
      D => dispErr,
      Q => derr,
      R => '0'
    );
disp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE2E222"
    )
        port map (
      I0 => disp,
      I1 => \^stb_0\,
      I2 => disp_reg_0(9),
      I3 => disp_i_2_n_0,
      I4 => disp_reg_0(8),
      I5 => \lctr_reg[0]\(0),
      O => disp_i_1_n_0
    );
disp_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => disp_reg_0(7),
      I1 => disp_reg_i_3_n_0,
      I2 => disp_reg_0(6),
      O => disp_i_2_n_0
    );
disp_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEAE88228808000"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(0),
      I2 => disp_reg_0(2),
      I3 => disp_reg_0(1),
      I4 => disp_reg_0(3),
      I5 => disp_reg_0(4),
      O => disp_i_4_n_0
    );
disp_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFEFEE8EEE8E888"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(1),
      I3 => disp_reg_0(2),
      I4 => disp_reg_0(0),
      I5 => disp_reg_0(3),
      O => disp_i_5_n_0
    );
disp_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => disp_i_1_n_0,
      Q => disp,
      R => '0'
    );
disp_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => disp_i_4_n_0,
      I1 => disp_i_5_n_0,
      O => disp_reg_i_3_n_0,
      S => disp
    );
\err[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004040404F"
    )
        port map (
      I0 => \err[2]_i_6_n_0\,
      I1 => \sync[0]_INST_0_i_2_n_0\,
      I2 => \^k_reg_0\,
      I3 => di(0),
      I4 => di(1),
      I5 => \err[2]_i_7_n_0\,
      O => \^slen\(0)
    );
\err[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \lfsr_q[15]_i_4_n_0\,
      I1 => \err[2]_i_6_n_0\,
      I2 => \sync[0]_INST_0_i_2_n_0\,
      I3 => \err_reg[2]\,
      I4 => \lfsr_q_reg[15]\(1),
      I5 => \lfsr_q_reg[15]\(0),
      O => \state_reg[1]_0\
    );
\err[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => di(3),
      I1 => di(6),
      I2 => di(2),
      I3 => \^q\(0),
      O => \err[2]_i_6_n_0\
    );
\err[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => di(3),
      I1 => di(2),
      I2 => \^k_reg_0\,
      O => \err[2]_i_7_n_0\
    );
\evtctr_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAAAAAAAAA"
    )
        port map (
      I0 => pkt_end,
      I1 => \^q_reg[7]_0\,
      I2 => \evtctr_i[31]_i_3_n_0\,
      I3 => \evtctr_i[31]_i_4_n_0\,
      I4 => di(3),
      I5 => \evtctr_i_reg[31]\,
      O => pkt_end_reg
    );
\evtctr_i[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^k_reg_0\,
      I1 => di(1),
      O => \evtctr_i[31]_i_3_n_0\
    );
\evtctr_i[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^k_reg_0\,
      I1 => di(2),
      O => \evtctr_i[31]_i_4_n_0\
    );
k_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF80FF03BF80FC00"
    )
        port map (
      I0 => k_i_2_n_0,
      I1 => disp_reg_0(8),
      I2 => disp_reg_0(9),
      I3 => k_i_3_n_0,
      I4 => disp_reg_0(7),
      I5 => k_i_4_n_0,
      O => dataKOut
    );
k_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00000000010106F"
    )
        port map (
      I0 => disp_reg_0(0),
      I1 => disp_reg_0(1),
      I2 => disp_reg_0(5),
      I3 => disp_reg_0(3),
      I4 => disp_reg_0(2),
      I5 => disp_reg_0(4),
      O => k_i_2_n_0
    );
k_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(3),
      I2 => disp_reg_0(2),
      I3 => disp_reg_0(4),
      O => k_i_3_n_0
    );
k_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE00400040000055"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(1),
      I2 => disp_reg_0(0),
      I3 => disp_reg_0(4),
      I4 => disp_reg_0(2),
      I5 => disp_reg_0(3),
      O => k_i_4_n_0
    );
k_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \q[7]_i_1_n_0\,
      D => dataKOut,
      Q => \^k_reg_0\,
      R => '0'
    );
\lctr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \lctr_reg[0]\(0),
      I1 => \^k_reg_0\,
      I2 => lock_reg(0),
      O => \q_reg[0]_0\(0)
    );
\lctr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => \lctr_reg[0]\(0),
      I1 => \^k_reg_0\,
      I2 => lock_reg(0),
      I3 => lock_reg(1),
      O => \q_reg[0]_0\(1)
    );
\lctr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01101010"
    )
        port map (
      I0 => \lctr_reg[0]\(0),
      I1 => \^k_reg_0\,
      I2 => lock_reg(2),
      I3 => lock_reg(1),
      I4 => lock_reg(0),
      O => \q_reg[0]_0\(2)
    );
\lctr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110101010101010"
    )
        port map (
      I0 => \lctr_reg[0]\(0),
      I1 => \^k_reg_0\,
      I2 => lock_reg(3),
      I3 => lock_reg(0),
      I4 => lock_reg(1),
      I5 => lock_reg(2),
      O => \q_reg[0]_0\(3)
    );
\lctr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => E(0),
      I1 => \lctr_reg[0]\(0),
      I2 => \^k_reg_0\,
      O => SR(0)
    );
\lctr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => \lctr_reg[0]\(0),
      I1 => \^k_reg_0\,
      I2 => lock_reg(4),
      I3 => lock_reg_0,
      O => \q_reg[0]_0\(4)
    );
\lctr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01101010"
    )
        port map (
      I0 => \lctr_reg[0]\(0),
      I1 => \^k_reg_0\,
      I2 => lock_reg(5),
      I3 => lock_reg_0,
      I4 => lock_reg(4),
      O => \q_reg[0]_0\(5)
    );
\lfsr_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^d\(5),
      I1 => \lfsr_q[15]_i_6_n_0\,
      I2 => \lfsr_q_reg[8]\(4),
      I3 => \^q_reg[7]_0\,
      I4 => \lfsr_q[15]_i_7_n_0\,
      O => \^d\(0)
    );
\lfsr_q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \sync[0]_INST_0_i_2_n_0\,
      I1 => di(3),
      I2 => di(6),
      I3 => di(2),
      I4 => \^q\(0),
      I5 => \lfsr_q[15]_i_4_n_0\,
      O => \^q_reg[3]_0\
    );
\lfsr_q[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404040"
    )
        port map (
      I0 => \lfsr_q_reg[15]\(1),
      I1 => \lfsr_q_reg[15]\(0),
      I2 => E(0),
      I3 => \lfsr_q[15]_i_5_n_0\,
      I4 => \^k_reg_0\,
      O => \state_reg[1]\(0)
    );
\lfsr_q[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^d\(5),
      I1 => \lfsr_q[15]_i_6_n_0\,
      I2 => \lfsr_q_reg[8]\(4),
      I3 => \^q_reg[7]_0\,
      I4 => \lfsr_q[15]_i_7_n_0\,
      I5 => \lfsr_q_reg[8]\(1),
      O => \^d\(9)
    );
\lfsr_q[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => E(0),
      I1 => \^k_reg_0\,
      O => \lfsr_q[15]_i_4_n_0\
    );
\lfsr_q[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => di(2),
      I2 => di(6),
      I3 => di(3),
      I4 => \sync[0]_INST_0_i_2_n_0\,
      O => \lfsr_q[15]_i_5_n_0\
    );
\lfsr_q[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999699699999669"
    )
        port map (
      I0 => \lfsr_q_reg[8]\(7),
      I1 => \lfsr_q_reg[8]\(8),
      I2 => di(1),
      I3 => di(5),
      I4 => \^k_reg_0\,
      I5 => di(6),
      O => \lfsr_q[15]_i_6_n_0\
    );
\lfsr_q[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC369963CC39669"
    )
        port map (
      I0 => \^q\(0),
      I1 => \lfsr_q_reg[8]\(9),
      I2 => \lfsr_q_reg[8]\(3),
      I3 => \lfsr_q_reg[8]\(2),
      I4 => \^k_reg_0\,
      I5 => di(2),
      O => \lfsr_q[15]_i_7_n_0\
    );
\lfsr_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[15]_i_6_n_0\,
      I1 => \lfsr_q[1]_i_2_n_0\,
      I2 => \lfsr_q_reg[8]\(3),
      I3 => \lfsr_q[1]_i_3_n_0\,
      I4 => \lfsr_q[1]_i_4_n_0\,
      I5 => \lfsr_q[1]_i_5_n_0\,
      O => \^d\(1)
    );
\lfsr_q[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \lfsr_q_reg[8]\(6),
      I1 => \^k_reg_0\,
      I2 => di(4),
      O => \lfsr_q[1]_i_2_n_0\
    );
\lfsr_q[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \lfsr_q_reg[8]\(9),
      I1 => \^k_reg_0\,
      I2 => \^q\(0),
      O => \lfsr_q[1]_i_3_n_0\
    );
\lfsr_q[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \lfsr_q_reg[8]\(5),
      I1 => \^k_reg_0\,
      I2 => di(3),
      O => \lfsr_q[1]_i_4_n_0\
    );
\lfsr_q[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \lfsr_q_reg[8]\(4),
      I1 => di(2),
      I2 => \^k_reg_0\,
      O => \lfsr_q[1]_i_5_n_0\
    );
\lfsr_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96699696"
    )
        port map (
      I0 => \lfsr_q_reg[8]\(2),
      I1 => \lfsr_q_reg[8]\(3),
      I2 => \^q_reg[7]_0\,
      I3 => \^k_reg_0\,
      I4 => di(1),
      O => \^d\(2)
    );
\lfsr_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C693C96"
    )
        port map (
      I0 => di(1),
      I1 => \lfsr_q_reg[8]\(3),
      I2 => \lfsr_q_reg[8]\(4),
      I3 => \^k_reg_0\,
      I4 => di(2),
      O => \^d\(3)
    );
\lfsr_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C3C6996"
    )
        port map (
      I0 => di(3),
      I1 => \lfsr_q_reg[8]\(5),
      I2 => \lfsr_q_reg[8]\(4),
      I3 => di(2),
      I4 => \^k_reg_0\,
      O => \^d\(4)
    );
\lfsr_q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3369CC96"
    )
        port map (
      I0 => di(3),
      I1 => \lfsr_q_reg[8]\(5),
      I2 => di(4),
      I3 => \^k_reg_0\,
      I4 => \lfsr_q_reg[8]\(6),
      O => \^d\(5)
    );
\lfsr_q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3369CC96"
    )
        port map (
      I0 => di(4),
      I1 => \lfsr_q_reg[8]\(6),
      I2 => di(5),
      I3 => \^k_reg_0\,
      I4 => \lfsr_q_reg[8]\(7),
      O => \^d\(6)
    );
\lfsr_q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3369CC96"
    )
        port map (
      I0 => di(6),
      I1 => \lfsr_q_reg[8]\(8),
      I2 => di(5),
      I3 => \^k_reg_0\,
      I4 => \lfsr_q_reg[8]\(7),
      O => \^d\(7)
    );
\lfsr_q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C396C3693C693C96"
    )
        port map (
      I0 => \^q\(0),
      I1 => \lfsr_q_reg[8]\(9),
      I2 => \lfsr_q_reg[8]\(8),
      I3 => \^k_reg_0\,
      I4 => di(6),
      I5 => \lfsr_q_reg[8]\(0),
      O => \^d\(8)
    );
\lock_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007FFFFF007F0000"
    )
        port map (
      I0 => lock_reg(4),
      I1 => lock_reg_0,
      I2 => lock_reg(5),
      I3 => lock_i_2_n_0,
      I4 => E(0),
      I5 => lock,
      O => \lctr_reg[6]\
    );
lock_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEFFFF"
    )
        port map (
      I0 => lock_i_3_n_0,
      I1 => cerr,
      I2 => derr,
      I3 => \lctr_reg[0]\(0),
      I4 => lock,
      I5 => \^k_reg_0\,
      O => lock_i_2_n_0
    );
lock_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAAAAA"
    )
        port map (
      I0 => \^k_reg_0\,
      I1 => di(3),
      I2 => di(6),
      I3 => di(2),
      I4 => \sync[0]_INST_0_i_2_n_0\,
      O => lock_i_3_n_0
    );
\q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75A05F0356936CB1"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(3),
      I3 => disp_reg_0(0),
      I4 => disp_reg_0(1),
      I5 => disp_reg_0(2),
      O => dataOut(0)
    );
\q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"755656FCA90303B1"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(3),
      I3 => disp_reg_0(2),
      I4 => disp_reg_0(0),
      I5 => disp_reg_0(1),
      O => dataOut(1)
    );
\q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F55F5E6CA0139B31"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(1),
      I3 => disp_reg_0(3),
      I4 => disp_reg_0(0),
      I5 => disp_reg_0(2),
      O => dataOut(2)
    );
\q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B8877877787380B"
    )
        port map (
      I0 => disp_reg_0(0),
      I1 => disp_reg_0(5),
      I2 => disp_reg_0(4),
      I3 => disp_reg_0(3),
      I4 => disp_reg_0(1),
      I5 => disp_reg_0(2),
      O => dataOut(3)
    );
\q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCDBCD5B5B3D"
    )
        port map (
      I0 => disp_reg_0(5),
      I1 => disp_reg_0(4),
      I2 => disp_reg_0(3),
      I3 => disp_reg_0(0),
      I4 => disp_reg_0(1),
      I5 => disp_reg_0(2),
      O => dataOut(4)
    );
\q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F5F8F05E8F5E8F0"
    )
        port map (
      I0 => disp_reg_0(8),
      I1 => \q[7]_i_4_n_0\,
      I2 => disp_reg_0(9),
      I3 => disp_reg_0(7),
      I4 => \q[7]_i_3_n_0\,
      I5 => disp_reg_0(6),
      O => dataOut(5)
    );
\q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F5F8F05E8F5E8F0"
    )
        port map (
      I0 => disp_reg_0(8),
      I1 => \q[7]_i_3_n_0\,
      I2 => disp_reg_0(9),
      I3 => disp_reg_0(7),
      I4 => \q[7]_i_4_n_0\,
      I5 => disp_reg_0(6),
      O => dataOut(6)
    );
\q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => derr_reg_0(3),
      I1 => derr_reg_0(2),
      I2 => derr_reg_0(1),
      I3 => derr_reg_0(0),
      I4 => \lctr_reg[0]\(0),
      O => \q[7]_i_1_n_0\
    );
\q[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33CCFC8830BB33CC"
    )
        port map (
      I0 => \q[7]_i_3_n_0\,
      I1 => disp_reg_0(8),
      I2 => \q[7]_i_4_n_0\,
      I3 => disp_reg_0(9),
      I4 => disp_reg_0(6),
      I5 => disp_reg_0(7),
      O => dataOut(7)
    );
\q[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => disp_reg_0(4),
      I1 => disp_reg_0(3),
      I2 => disp_reg_0(2),
      I3 => disp_reg_0(5),
      O => \q[7]_i_3_n_0\
    );
\q[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => disp_reg_0(4),
      I1 => disp_reg_0(2),
      I2 => disp_reg_0(3),
      I3 => disp_reg_0(5),
      O => \q[7]_i_4_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \q[7]_i_1_n_0\,
      D => dataOut(0),
      Q => di(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \q[7]_i_1_n_0\,
      D => dataOut(1),
      Q => di(1),
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \q[7]_i_1_n_0\,
      D => dataOut(2),
      Q => di(2),
      R => '0'
    );
\q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \q[7]_i_1_n_0\,
      D => dataOut(3),
      Q => di(3),
      R => '0'
    );
\q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \q[7]_i_1_n_0\,
      D => dataOut(4),
      Q => di(4),
      R => '0'
    );
\q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \q[7]_i_1_n_0\,
      D => dataOut(5),
      Q => di(5),
      R => '0'
    );
\q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \q[7]_i_1_n_0\,
      D => dataOut(6),
      Q => di(6),
      R => '0'
    );
\q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \q[7]_i_1_n_0\,
      D => dataOut(7),
      Q => \^q\(0),
      R => '0'
    );
s_match_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04050400"
    )
        port map (
      I0 => tgrp(1),
      I1 => di(5),
      I2 => \^k_reg_0\,
      I3 => tgrp(0),
      I4 => di(4),
      I5 => s_match_r_i_2_n_0,
      O => s_match
    );
s_match_r_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B080000"
    )
        port map (
      I0 => \^q\(0),
      I1 => tgrp(0),
      I2 => \^k_reg_0\,
      I3 => di(6),
      I4 => tgrp(1),
      O => s_match_r_i_2_n_0
    );
\sctr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \lfsr_q[15]_i_5_n_0\,
      I1 => \^k_reg_0\,
      I2 => E(0),
      O => k_reg_1(0)
    );
\sr[92]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => di(4),
      I1 => \^k_reg_0\,
      O => \q_reg[7]_1\(3)
    );
\sr[93]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => di(5),
      I1 => \^k_reg_0\,
      O => \q_reg[7]_1\(4)
    );
\sr[94]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => di(6),
      I1 => \^k_reg_0\,
      O => \q_reg[7]_1\(5)
    );
\sr[95]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^k_reg_0\,
      O => \q_reg[7]_1\(6)
    );
\state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AFFFF888A0000"
    )
        port map (
      I0 => E(0),
      I1 => \state_reg[0]\,
      I2 => \state_reg[0]_0\,
      I3 => \^slen\(0),
      I4 => \lfsr_q_reg[15]\(1),
      I5 => \^q_reg[3]_0\,
      O => stbd_reg
    );
stbd_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => derr_reg_0(0),
      I1 => derr_reg_0(1),
      I2 => derr_reg_0(2),
      I3 => derr_reg_0(3),
      O => \^stb_0\
    );
\sync[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFF7FF0000"
    )
        port map (
      I0 => \^q\(0),
      I1 => di(2),
      I2 => \sync[0]_INST_0_i_1_n_0\,
      I3 => \sync[0]_INST_0_i_2_n_0\,
      I4 => \^k_reg_0\,
      I5 => di(0),
      O => \^q_reg[7]_0\
    );
\sync[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => di(6),
      I1 => di(3),
      O => \sync[0]_INST_0_i_1_n_0\
    );
\sync[0]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => di(1),
      I1 => di(4),
      I2 => di(5),
      I3 => di(0),
      O => \sync[0]_INST_0_i_2_n_0\
    );
\sync[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => di(1),
      I1 => \^k_reg_0\,
      O => \q_reg[7]_1\(0)
    );
\sync[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => di(2),
      I1 => \^k_reg_0\,
      O => \q_reg[7]_1\(1)
    );
\sync[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => di(3),
      I1 => \^k_reg_0\,
      O => \q_reg[7]_1\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_0_1_pdts_synchro is
  port (
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    rec_clk : in STD_LOGIC;
    sclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_0_1_pdts_synchro : entity is "pdts_synchro";
end design_1_pdts_endpoint_0_1_pdts_synchro;

architecture STRUCTURE of design_1_pdts_endpoint_0_1_pdts_synchro is
  signal da : STD_LOGIC;
  signal db : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
  signal \q_reg_n_0_[0]\ : STD_LOGIC;
  attribute async_reg of \q_reg_n_0_[0]\ : signal is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \db_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \db_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \db_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \q_reg[0]\ : label is std.standard.true;
  attribute KEEP of \q_reg[0]\ : label is "yes";
begin
\da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => Q(0),
      Q => da,
      R => '0'
    );
\db_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => da,
      Q => db,
      R => '0'
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db,
      Q => \q_reg_n_0_[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_state_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[3]\ : in STD_LOGIC;
    \FSM_onehot_state[9]_i_3_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state[9]_i_3_1\ : in STD_LOGIC;
    \da_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rec_clk : in STD_LOGIC;
    sclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized0\ : entity is "pdts_synchro";
end \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized0\;

architecture STRUCTURE of \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized0\ is
  signal \FSM_onehot_state[9]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_6_n_0\ : STD_LOGIC;
  signal da : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal db : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
  signal p_0_in : STD_LOGIC;
  attribute async_reg of p_0_in : signal is "yes";
  signal rdy_i : STD_LOGIC;
  attribute async_reg of rdy_i : signal is "yes";
  signal rx_err_i : STD_LOGIC;
  attribute async_reg of rx_err_i : signal is "yes";
  signal rxphy_locked_i : STD_LOGIC;
  attribute async_reg of rxphy_locked_i : signal is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \db_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \db_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \db_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \db_reg[1]\ : label is std.standard.true;
  attribute KEEP of \db_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \db_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \db_reg[2]\ : label is std.standard.true;
  attribute KEEP of \db_reg[2]\ : label is "yes";
  attribute SHREG_EXTRACT of \db_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \db_reg[3]\ : label is std.standard.true;
  attribute KEEP of \db_reg[3]\ : label is "yes";
  attribute SHREG_EXTRACT of \db_reg[3]\ : label is "no";
  attribute ASYNC_REG_boolean of \q_reg[0]\ : label is std.standard.true;
  attribute KEEP of \q_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \q_reg[1]\ : label is std.standard.true;
  attribute KEEP of \q_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \q_reg[2]\ : label is std.standard.true;
  attribute KEEP of \q_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \q_reg[3]\ : label is std.standard.true;
  attribute KEEP of \q_reg[3]\ : label is "yes";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => Q(3),
      I1 => \FSM_onehot_state_reg[0]_0\,
      I2 => rxphy_locked_i,
      I3 => rx_err_i,
      O => D(0)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => rxphy_locked_i,
      I1 => \FSM_onehot_state_reg[0]_0\,
      I2 => Q(3),
      I3 => Q(0),
      I4 => \FSM_onehot_state_reg[3]\,
      I5 => Q(6),
      O => D(1)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]\,
      I1 => Q(0),
      I2 => Q(3),
      I3 => rx_err_i,
      I4 => \FSM_onehot_state_reg[0]_0\,
      I5 => rxphy_locked_i,
      O => D(2)
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_onehot_state_reg[0]_0\,
      I2 => rxphy_locked_i,
      I3 => rx_err_i,
      O => D(3)
    );
\FSM_onehot_state[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF5FFF4FFF5F5F5"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]\,
      I1 => rx_err_i,
      I2 => \FSM_onehot_state[9]_i_3_n_0\,
      I3 => Q(4),
      I4 => \FSM_onehot_state_reg[0]_0\,
      I5 => rxphy_locked_i,
      O => E(0)
    );
\FSM_onehot_state[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFF0FFFFFFE0"
    )
        port map (
      I0 => p_0_in,
      I1 => \FSM_onehot_state_reg[0]_1\(0),
      I2 => Q(2),
      I3 => \FSM_onehot_state[9]_i_5_n_0\,
      I4 => Q(6),
      I5 => \FSM_onehot_state_reg[0]_2\(0),
      O => \FSM_onehot_state[9]_i_3_n_0\
    );
\FSM_onehot_state[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \FSM_onehot_state[9]_i_3_0\(0),
      I1 => \FSM_onehot_state[9]_i_3_1\,
      I2 => \FSM_onehot_state[9]_i_3_0\(1),
      I3 => Q(1),
      I4 => \FSM_onehot_state[9]_i_6_n_0\,
      O => \FSM_onehot_state[9]_i_5_n_0\
    );
\FSM_onehot_state[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => Q(7),
      I1 => Q(5),
      I2 => Q(0),
      I3 => rdy_i,
      I4 => Q(3),
      O => \FSM_onehot_state[9]_i_6_n_0\
    );
\da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \da_reg[3]_0\(0),
      Q => da(0),
      R => '0'
    );
\da_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \da_reg[3]_0\(1),
      Q => da(1),
      R => '0'
    );
\da_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \da_reg[3]_0\(2),
      Q => da(2),
      R => '0'
    );
\da_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \da_reg[3]_0\(3),
      Q => da(3),
      R => '0'
    );
\db_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => da(0),
      Q => db(0),
      R => '0'
    );
\db_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => da(1),
      Q => db(1),
      R => '0'
    );
\db_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => da(2),
      Q => db(2),
      R => '0'
    );
\db_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => da(3),
      Q => db(3),
      R => '0'
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(0),
      Q => p_0_in,
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(1),
      Q => rxphy_locked_i,
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(2),
      Q => rx_err_i,
      R => '0'
    );
\q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(3),
      Q => rdy_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized1\ is
  port (
    \out\ : out STD_LOGIC;
    sclk : in STD_LOGIC;
    rec_d_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized1\ : entity is "pdts_synchro";
end \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized1\;

architecture STRUCTURE of \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized1\ is
  signal da : STD_LOGIC;
  signal db : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
  signal rec_rst_i : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \db_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \db_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \db_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \q_reg[0]\ : label is std.standard.true;
  attribute KEEP of \q_reg[0]\ : label is "yes";
begin
\da[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      O => rec_rst_i
    );
\da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => rec_rst_i,
      Q => da,
      R => '0'
    );
\db_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_d_clk,
      CE => '1',
      D => da,
      Q => db,
      R => '0'
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_d_clk,
      CE => '1',
      D => db,
      Q => \out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized2\ is
  port (
    \q_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    sclk : in STD_LOGIC;
    rec_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized2\ : entity is "pdts_synchro";
end \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized2\;

architecture STRUCTURE of \design_1_pdts_endpoint_0_1_pdts_synchro__parameterized2\ is
  signal da : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal db : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
  signal p_1_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_3_in : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \db_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \db_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \db_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \db_reg[1]\ : label is std.standard.true;
  attribute KEEP of \db_reg[1]\ : label is "yes";
  attribute SHREG_EXTRACT of \db_reg[1]\ : label is "no";
  attribute ASYNC_REG_boolean of \q_reg[0]\ : label is std.standard.true;
  attribute KEEP of \q_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \q_reg[1]\ : label is std.standard.true;
  attribute KEEP of \q_reg[1]\ : label is "yes";
begin
\da[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(4),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(5),
      O => p_3_in
    );
\da[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(4),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(1),
      O => p_1_out(1)
    );
\da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => p_3_in,
      Q => da(0),
      R => '0'
    );
\da_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => p_1_out(1),
      Q => da(1),
      R => '0'
    );
\db_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => da(0),
      Q => db(0),
      R => '0'
    );
\db_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => da(1),
      Q => db(1),
      R => '0'
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => db(0),
      Q => \q_reg[1]_0\(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => db(1),
      Q => \q_reg[1]_0\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_0_1_pdts_tstamp is
  port (
    pkt_end : out STD_LOGIC;
    evtctr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 63 downto 0 );
    lock_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    rec_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \evtctr_i_reg[31]_0\ : in STD_LOGIC;
    \sr_reg[9]_0\ : in STD_LOGIC;
    slen : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sr_reg[9]_1\ : in STD_LOGIC;
    sync_v : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_0_1_pdts_tstamp : entity is "pdts_tstamp";
end design_1_pdts_endpoint_0_1_pdts_tstamp;

architecture STRUCTURE of design_1_pdts_endpoint_0_1_pdts_tstamp is
  signal \^q\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal ctr0 : STD_LOGIC;
  signal ctr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^evtctr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \evtctr_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \evtctr_i[15]_i_3_n_0\ : STD_LOGIC;
  signal \evtctr_i[15]_i_4_n_0\ : STD_LOGIC;
  signal \evtctr_i[15]_i_5_n_0\ : STD_LOGIC;
  signal \evtctr_i[15]_i_6_n_0\ : STD_LOGIC;
  signal \evtctr_i[15]_i_7_n_0\ : STD_LOGIC;
  signal \evtctr_i[15]_i_8_n_0\ : STD_LOGIC;
  signal \evtctr_i[15]_i_9_n_0\ : STD_LOGIC;
  signal \evtctr_i[23]_i_2_n_0\ : STD_LOGIC;
  signal \evtctr_i[23]_i_3_n_0\ : STD_LOGIC;
  signal \evtctr_i[23]_i_4_n_0\ : STD_LOGIC;
  signal \evtctr_i[23]_i_5_n_0\ : STD_LOGIC;
  signal \evtctr_i[23]_i_6_n_0\ : STD_LOGIC;
  signal \evtctr_i[23]_i_7_n_0\ : STD_LOGIC;
  signal \evtctr_i[23]_i_8_n_0\ : STD_LOGIC;
  signal \evtctr_i[23]_i_9_n_0\ : STD_LOGIC;
  signal \evtctr_i[31]_i_10_n_0\ : STD_LOGIC;
  signal \evtctr_i[31]_i_11_n_0\ : STD_LOGIC;
  signal \evtctr_i[31]_i_12_n_0\ : STD_LOGIC;
  signal \evtctr_i[31]_i_13_n_0\ : STD_LOGIC;
  signal \evtctr_i[31]_i_6_n_0\ : STD_LOGIC;
  signal \evtctr_i[31]_i_7_n_0\ : STD_LOGIC;
  signal \evtctr_i[31]_i_8_n_0\ : STD_LOGIC;
  signal \evtctr_i[31]_i_9_n_0\ : STD_LOGIC;
  signal \evtctr_i[7]_i_10_n_0\ : STD_LOGIC;
  signal \evtctr_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \evtctr_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \evtctr_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \evtctr_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \evtctr_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \evtctr_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \evtctr_i[7]_i_8_n_0\ : STD_LOGIC;
  signal \evtctr_i[7]_i_9_n_0\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \evtctr_i_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \evtctr_i_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_10\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_11\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_12\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_13\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_14\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_15\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_8\ : STD_LOGIC;
  signal \evtctr_i_reg[31]_i_2_n_9\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \evtctr_i_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal init : STD_LOGIC;
  signal init_i_1_n_0 : STD_LOGIC;
  signal lock1 : STD_LOGIC;
  signal \lock1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \lock1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \lock1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \lock1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \lock1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \lock1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \lock1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \lock1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \lock1_carry__0_n_0\ : STD_LOGIC;
  signal \lock1_carry__0_n_1\ : STD_LOGIC;
  signal \lock1_carry__0_n_2\ : STD_LOGIC;
  signal \lock1_carry__0_n_3\ : STD_LOGIC;
  signal \lock1_carry__0_n_4\ : STD_LOGIC;
  signal \lock1_carry__0_n_5\ : STD_LOGIC;
  signal \lock1_carry__0_n_6\ : STD_LOGIC;
  signal \lock1_carry__0_n_7\ : STD_LOGIC;
  signal \lock1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \lock1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \lock1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \lock1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \lock1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \lock1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \lock1_carry__1_n_3\ : STD_LOGIC;
  signal \lock1_carry__1_n_4\ : STD_LOGIC;
  signal \lock1_carry__1_n_5\ : STD_LOGIC;
  signal \lock1_carry__1_n_6\ : STD_LOGIC;
  signal \lock1_carry__1_n_7\ : STD_LOGIC;
  signal lock1_carry_i_1_n_0 : STD_LOGIC;
  signal lock1_carry_i_2_n_0 : STD_LOGIC;
  signal lock1_carry_i_3_n_0 : STD_LOGIC;
  signal lock1_carry_i_4_n_0 : STD_LOGIC;
  signal lock1_carry_i_5_n_0 : STD_LOGIC;
  signal lock1_carry_i_6_n_0 : STD_LOGIC;
  signal lock1_carry_i_7_n_0 : STD_LOGIC;
  signal lock1_carry_i_8_n_0 : STD_LOGIC;
  signal lock1_carry_n_0 : STD_LOGIC;
  signal lock1_carry_n_1 : STD_LOGIC;
  signal lock1_carry_n_2 : STD_LOGIC;
  signal lock1_carry_n_3 : STD_LOGIC;
  signal lock1_carry_n_4 : STD_LOGIC;
  signal lock1_carry_n_5 : STD_LOGIC;
  signal lock1_carry_n_6 : STD_LOGIC;
  signal lock1_carry_n_7 : STD_LOGIC;
  signal lock_i_1_n_0 : STD_LOGIC;
  signal \^lock_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 63 downto 1 );
  signal \^pkt_end\ : STD_LOGIC;
  signal pkt_end_d : STD_LOGIC;
  signal pkt_end_i_1_n_0 : STD_LOGIC;
  signal pkt_end_i_2_n_0 : STD_LOGIC;
  signal \plusOp__7\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_8\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_9\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_8\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_9\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_8\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_9\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_8\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_9\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_8\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_9\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_8\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_9\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_9\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_10\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_11\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_12\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_13\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_14\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_15\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_8\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_9\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC;
  signal \sr[95]_i_4_n_0\ : STD_LOGIC;
  signal \sr[95]_i_5_n_0\ : STD_LOGIC;
  signal \sr[95]_i_6_n_0\ : STD_LOGIC;
  signal \sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \sr_reg_n_0_[19]\ : STD_LOGIC;
  signal \sr_reg_n_0_[20]\ : STD_LOGIC;
  signal \sr_reg_n_0_[21]\ : STD_LOGIC;
  signal \sr_reg_n_0_[22]\ : STD_LOGIC;
  signal \sr_reg_n_0_[23]\ : STD_LOGIC;
  signal \sr_reg_n_0_[24]\ : STD_LOGIC;
  signal \sr_reg_n_0_[25]\ : STD_LOGIC;
  signal \sr_reg_n_0_[26]\ : STD_LOGIC;
  signal \sr_reg_n_0_[27]\ : STD_LOGIC;
  signal \sr_reg_n_0_[28]\ : STD_LOGIC;
  signal \sr_reg_n_0_[29]\ : STD_LOGIC;
  signal \sr_reg_n_0_[30]\ : STD_LOGIC;
  signal \sr_reg_n_0_[31]\ : STD_LOGIC;
  signal \sr_reg_n_0_[32]\ : STD_LOGIC;
  signal \sr_reg_n_0_[33]\ : STD_LOGIC;
  signal \sr_reg_n_0_[34]\ : STD_LOGIC;
  signal \sr_reg_n_0_[35]\ : STD_LOGIC;
  signal \sr_reg_n_0_[36]\ : STD_LOGIC;
  signal \sr_reg_n_0_[37]\ : STD_LOGIC;
  signal \sr_reg_n_0_[38]\ : STD_LOGIC;
  signal \sr_reg_n_0_[39]\ : STD_LOGIC;
  signal \sr_reg_n_0_[40]\ : STD_LOGIC;
  signal \sr_reg_n_0_[41]\ : STD_LOGIC;
  signal \sr_reg_n_0_[42]\ : STD_LOGIC;
  signal \sr_reg_n_0_[43]\ : STD_LOGIC;
  signal \sr_reg_n_0_[44]\ : STD_LOGIC;
  signal \sr_reg_n_0_[45]\ : STD_LOGIC;
  signal \sr_reg_n_0_[46]\ : STD_LOGIC;
  signal \sr_reg_n_0_[47]\ : STD_LOGIC;
  signal \sr_reg_n_0_[48]\ : STD_LOGIC;
  signal \sr_reg_n_0_[49]\ : STD_LOGIC;
  signal \sr_reg_n_0_[50]\ : STD_LOGIC;
  signal \sr_reg_n_0_[51]\ : STD_LOGIC;
  signal \sr_reg_n_0_[52]\ : STD_LOGIC;
  signal \sr_reg_n_0_[53]\ : STD_LOGIC;
  signal \sr_reg_n_0_[54]\ : STD_LOGIC;
  signal \sr_reg_n_0_[55]\ : STD_LOGIC;
  signal \sr_reg_n_0_[56]\ : STD_LOGIC;
  signal \sr_reg_n_0_[57]\ : STD_LOGIC;
  signal \sr_reg_n_0_[58]\ : STD_LOGIC;
  signal \sr_reg_n_0_[59]\ : STD_LOGIC;
  signal \sr_reg_n_0_[60]\ : STD_LOGIC;
  signal \sr_reg_n_0_[61]\ : STD_LOGIC;
  signal \sr_reg_n_0_[62]\ : STD_LOGIC;
  signal \sr_reg_n_0_[63]\ : STD_LOGIC;
  signal \sr_reg_n_0_[9]\ : STD_LOGIC;
  signal \tstamp_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i[63]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_evtctr_i_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_lock1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_lock1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_lock1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_lock1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctr[1]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \ctr[2]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ctr[3]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ctr[4]_i_1__0\ : label is "soft_lutpair51";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \evtctr_i_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \evtctr_i_reg[23]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \evtctr_i_reg[31]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \evtctr_i_reg[7]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of init_i_1 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of lock_i_1 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of pkt_end_i_2 : label is "soft_lutpair58";
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \sr[95]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \tstamp_i[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \tstamp_i[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \tstamp_i[2]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \tstamp_i[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \tstamp_i[4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \tstamp_i[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \tstamp_i[6]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \tstamp_i[8]_i_2\ : label is "soft_lutpair54";
begin
  Q(63 downto 0) <= \^q\(63 downto 0);
  evtctr(31 downto 0) <= \^evtctr\(31 downto 0);
  lock_reg_0(0) <= \^lock_reg_0\(0);
  pkt_end <= \^pkt_end\;
\ctr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg(0),
      O => \plusOp__7\(0)
    );
\ctr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ctr_reg(0),
      I1 => ctr_reg(1),
      O => \plusOp__7\(1)
    );
\ctr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => ctr_reg(2),
      I1 => ctr_reg(1),
      I2 => ctr_reg(0),
      O => \plusOp__7\(2)
    );
\ctr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => ctr_reg(3),
      I1 => ctr_reg(0),
      I2 => ctr_reg(1),
      I3 => ctr_reg(2),
      O => \plusOp__7\(3)
    );
\ctr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => ctr_reg(4),
      I1 => ctr_reg(2),
      I2 => ctr_reg(1),
      I3 => ctr_reg(0),
      I4 => ctr_reg(3),
      O => \plusOp__7\(4)
    );
\ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => ctr_reg(5),
      I1 => ctr_reg(3),
      I2 => ctr_reg(4),
      I3 => ctr_reg(2),
      I4 => ctr_reg(1),
      I5 => ctr_reg(0),
      O => \plusOp__7\(5)
    );
\ctr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => ctr_reg(6),
      I1 => pkt_end_i_2_n_0,
      I2 => ctr_reg(4),
      I3 => ctr_reg(3),
      I4 => ctr_reg(5),
      O => \plusOp__7\(6)
    );
\ctr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => \sr[95]_i_4_n_0\,
      I1 => ctr_reg(5),
      I2 => ctr_reg(7),
      I3 => ctr_reg(6),
      I4 => slen(0),
      I5 => sync_v,
      O => ctr0
    );
\ctr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => ctr_reg(7),
      I1 => ctr_reg(5),
      I2 => ctr_reg(3),
      I3 => ctr_reg(4),
      I4 => pkt_end_i_2_n_0,
      I5 => ctr_reg(6),
      O => \plusOp__7\(7)
    );
\ctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__7\(0),
      Q => ctr_reg(0),
      R => SR(0)
    );
\ctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__7\(1),
      Q => ctr_reg(1),
      R => SR(0)
    );
\ctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__7\(2),
      Q => ctr_reg(2),
      R => SR(0)
    );
\ctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__7\(3),
      Q => ctr_reg(3),
      R => SR(0)
    );
\ctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__7\(4),
      Q => ctr_reg(4),
      R => SR(0)
    );
\ctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__7\(5),
      Q => ctr_reg(5),
      R => SR(0)
    );
\ctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__7\(6),
      Q => ctr_reg(6),
      R => SR(0)
    );
\ctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__7\(7),
      Q => ctr_reg(7),
      R => SR(0)
    );
\evtctr_i[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(15),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(15),
      O => \evtctr_i[15]_i_2_n_0\
    );
\evtctr_i[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(14),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(14),
      O => \evtctr_i[15]_i_3_n_0\
    );
\evtctr_i[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(13),
      O => \evtctr_i[15]_i_4_n_0\
    );
\evtctr_i[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(12),
      O => \evtctr_i[15]_i_5_n_0\
    );
\evtctr_i[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(11),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(11),
      O => \evtctr_i[15]_i_6_n_0\
    );
\evtctr_i[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(10),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(10),
      O => \evtctr_i[15]_i_7_n_0\
    );
\evtctr_i[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(9),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(9),
      O => \evtctr_i[15]_i_8_n_0\
    );
\evtctr_i[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(8),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(8),
      O => \evtctr_i[15]_i_9_n_0\
    );
\evtctr_i[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(23),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(23),
      O => \evtctr_i[23]_i_2_n_0\
    );
\evtctr_i[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(22),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(22),
      O => \evtctr_i[23]_i_3_n_0\
    );
\evtctr_i[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(21),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(21),
      O => \evtctr_i[23]_i_4_n_0\
    );
\evtctr_i[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(20),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(20),
      O => \evtctr_i[23]_i_5_n_0\
    );
\evtctr_i[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(19),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(19),
      O => \evtctr_i[23]_i_6_n_0\
    );
\evtctr_i[23]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(18),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(18),
      O => \evtctr_i[23]_i_7_n_0\
    );
\evtctr_i[23]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(17),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(17),
      O => \evtctr_i[23]_i_8_n_0\
    );
\evtctr_i[23]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(16),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(16),
      O => \evtctr_i[23]_i_9_n_0\
    );
\evtctr_i[31]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(27),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(27),
      O => \evtctr_i[31]_i_10_n_0\
    );
\evtctr_i[31]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(26),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(26),
      O => \evtctr_i[31]_i_11_n_0\
    );
\evtctr_i[31]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(25),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(25),
      O => \evtctr_i[31]_i_12_n_0\
    );
\evtctr_i[31]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(24),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(24),
      O => \evtctr_i[31]_i_13_n_0\
    );
\evtctr_i[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(31),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(31),
      O => \evtctr_i[31]_i_6_n_0\
    );
\evtctr_i[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(30),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(30),
      O => \evtctr_i[31]_i_7_n_0\
    );
\evtctr_i[31]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(29),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(29),
      O => \evtctr_i[31]_i_8_n_0\
    );
\evtctr_i[31]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(28),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(28),
      O => \evtctr_i[31]_i_9_n_0\
    );
\evtctr_i[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^evtctr\(0),
      I1 => data(0),
      I2 => \^pkt_end\,
      O => \evtctr_i[7]_i_10_n_0\
    );
\evtctr_i[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_end\,
      O => \evtctr_i[7]_i_2_n_0\
    );
\evtctr_i[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(7),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(7),
      O => \evtctr_i[7]_i_3_n_0\
    );
\evtctr_i[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(6),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(6),
      O => \evtctr_i[7]_i_4_n_0\
    );
\evtctr_i[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(5),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(5),
      O => \evtctr_i[7]_i_5_n_0\
    );
\evtctr_i[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(4),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(4),
      O => \evtctr_i[7]_i_6_n_0\
    );
\evtctr_i[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(3),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(3),
      O => \evtctr_i[7]_i_7_n_0\
    );
\evtctr_i[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(2),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(2),
      O => \evtctr_i[7]_i_8_n_0\
    );
\evtctr_i[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(1),
      I1 => \^pkt_end\,
      I2 => \^evtctr\(1),
      O => \evtctr_i[7]_i_9_n_0\
    );
\evtctr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[7]_i_1_n_15\,
      Q => \^evtctr\(0),
      R => SR(0)
    );
\evtctr_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[15]_i_1_n_13\,
      Q => \^evtctr\(10),
      R => SR(0)
    );
\evtctr_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[15]_i_1_n_12\,
      Q => \^evtctr\(11),
      R => SR(0)
    );
\evtctr_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[15]_i_1_n_11\,
      Q => \^evtctr\(12),
      R => SR(0)
    );
\evtctr_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[15]_i_1_n_10\,
      Q => \^evtctr\(13),
      R => SR(0)
    );
\evtctr_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[15]_i_1_n_9\,
      Q => \^evtctr\(14),
      R => SR(0)
    );
\evtctr_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[15]_i_1_n_8\,
      Q => \^evtctr\(15),
      R => SR(0)
    );
\evtctr_i_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \evtctr_i_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \evtctr_i_reg[15]_i_1_n_0\,
      CO(6) => \evtctr_i_reg[15]_i_1_n_1\,
      CO(5) => \evtctr_i_reg[15]_i_1_n_2\,
      CO(4) => \evtctr_i_reg[15]_i_1_n_3\,
      CO(3) => \evtctr_i_reg[15]_i_1_n_4\,
      CO(2) => \evtctr_i_reg[15]_i_1_n_5\,
      CO(1) => \evtctr_i_reg[15]_i_1_n_6\,
      CO(0) => \evtctr_i_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \evtctr_i_reg[15]_i_1_n_8\,
      O(6) => \evtctr_i_reg[15]_i_1_n_9\,
      O(5) => \evtctr_i_reg[15]_i_1_n_10\,
      O(4) => \evtctr_i_reg[15]_i_1_n_11\,
      O(3) => \evtctr_i_reg[15]_i_1_n_12\,
      O(2) => \evtctr_i_reg[15]_i_1_n_13\,
      O(1) => \evtctr_i_reg[15]_i_1_n_14\,
      O(0) => \evtctr_i_reg[15]_i_1_n_15\,
      S(7) => \evtctr_i[15]_i_2_n_0\,
      S(6) => \evtctr_i[15]_i_3_n_0\,
      S(5) => \evtctr_i[15]_i_4_n_0\,
      S(4) => \evtctr_i[15]_i_5_n_0\,
      S(3) => \evtctr_i[15]_i_6_n_0\,
      S(2) => \evtctr_i[15]_i_7_n_0\,
      S(1) => \evtctr_i[15]_i_8_n_0\,
      S(0) => \evtctr_i[15]_i_9_n_0\
    );
\evtctr_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[23]_i_1_n_15\,
      Q => \^evtctr\(16),
      R => SR(0)
    );
\evtctr_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[23]_i_1_n_14\,
      Q => \^evtctr\(17),
      R => SR(0)
    );
\evtctr_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[23]_i_1_n_13\,
      Q => \^evtctr\(18),
      R => SR(0)
    );
\evtctr_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[23]_i_1_n_12\,
      Q => \^evtctr\(19),
      R => SR(0)
    );
\evtctr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[7]_i_1_n_14\,
      Q => \^evtctr\(1),
      R => SR(0)
    );
\evtctr_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[23]_i_1_n_11\,
      Q => \^evtctr\(20),
      R => SR(0)
    );
\evtctr_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[23]_i_1_n_10\,
      Q => \^evtctr\(21),
      R => SR(0)
    );
\evtctr_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[23]_i_1_n_9\,
      Q => \^evtctr\(22),
      R => SR(0)
    );
\evtctr_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[23]_i_1_n_8\,
      Q => \^evtctr\(23),
      R => SR(0)
    );
\evtctr_i_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \evtctr_i_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \evtctr_i_reg[23]_i_1_n_0\,
      CO(6) => \evtctr_i_reg[23]_i_1_n_1\,
      CO(5) => \evtctr_i_reg[23]_i_1_n_2\,
      CO(4) => \evtctr_i_reg[23]_i_1_n_3\,
      CO(3) => \evtctr_i_reg[23]_i_1_n_4\,
      CO(2) => \evtctr_i_reg[23]_i_1_n_5\,
      CO(1) => \evtctr_i_reg[23]_i_1_n_6\,
      CO(0) => \evtctr_i_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \evtctr_i_reg[23]_i_1_n_8\,
      O(6) => \evtctr_i_reg[23]_i_1_n_9\,
      O(5) => \evtctr_i_reg[23]_i_1_n_10\,
      O(4) => \evtctr_i_reg[23]_i_1_n_11\,
      O(3) => \evtctr_i_reg[23]_i_1_n_12\,
      O(2) => \evtctr_i_reg[23]_i_1_n_13\,
      O(1) => \evtctr_i_reg[23]_i_1_n_14\,
      O(0) => \evtctr_i_reg[23]_i_1_n_15\,
      S(7) => \evtctr_i[23]_i_2_n_0\,
      S(6) => \evtctr_i[23]_i_3_n_0\,
      S(5) => \evtctr_i[23]_i_4_n_0\,
      S(4) => \evtctr_i[23]_i_5_n_0\,
      S(3) => \evtctr_i[23]_i_6_n_0\,
      S(2) => \evtctr_i[23]_i_7_n_0\,
      S(1) => \evtctr_i[23]_i_8_n_0\,
      S(0) => \evtctr_i[23]_i_9_n_0\
    );
\evtctr_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[31]_i_2_n_15\,
      Q => \^evtctr\(24),
      R => SR(0)
    );
\evtctr_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[31]_i_2_n_14\,
      Q => \^evtctr\(25),
      R => SR(0)
    );
\evtctr_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[31]_i_2_n_13\,
      Q => \^evtctr\(26),
      R => SR(0)
    );
\evtctr_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[31]_i_2_n_12\,
      Q => \^evtctr\(27),
      R => SR(0)
    );
\evtctr_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[31]_i_2_n_11\,
      Q => \^evtctr\(28),
      R => SR(0)
    );
\evtctr_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[31]_i_2_n_10\,
      Q => \^evtctr\(29),
      R => SR(0)
    );
\evtctr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[7]_i_1_n_13\,
      Q => \^evtctr\(2),
      R => SR(0)
    );
\evtctr_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[31]_i_2_n_9\,
      Q => \^evtctr\(30),
      R => SR(0)
    );
\evtctr_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[31]_i_2_n_8\,
      Q => \^evtctr\(31),
      R => SR(0)
    );
\evtctr_i_reg[31]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \evtctr_i_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_evtctr_i_reg[31]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \evtctr_i_reg[31]_i_2_n_1\,
      CO(5) => \evtctr_i_reg[31]_i_2_n_2\,
      CO(4) => \evtctr_i_reg[31]_i_2_n_3\,
      CO(3) => \evtctr_i_reg[31]_i_2_n_4\,
      CO(2) => \evtctr_i_reg[31]_i_2_n_5\,
      CO(1) => \evtctr_i_reg[31]_i_2_n_6\,
      CO(0) => \evtctr_i_reg[31]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \evtctr_i_reg[31]_i_2_n_8\,
      O(6) => \evtctr_i_reg[31]_i_2_n_9\,
      O(5) => \evtctr_i_reg[31]_i_2_n_10\,
      O(4) => \evtctr_i_reg[31]_i_2_n_11\,
      O(3) => \evtctr_i_reg[31]_i_2_n_12\,
      O(2) => \evtctr_i_reg[31]_i_2_n_13\,
      O(1) => \evtctr_i_reg[31]_i_2_n_14\,
      O(0) => \evtctr_i_reg[31]_i_2_n_15\,
      S(7) => \evtctr_i[31]_i_6_n_0\,
      S(6) => \evtctr_i[31]_i_7_n_0\,
      S(5) => \evtctr_i[31]_i_8_n_0\,
      S(4) => \evtctr_i[31]_i_9_n_0\,
      S(3) => \evtctr_i[31]_i_10_n_0\,
      S(2) => \evtctr_i[31]_i_11_n_0\,
      S(1) => \evtctr_i[31]_i_12_n_0\,
      S(0) => \evtctr_i[31]_i_13_n_0\
    );
\evtctr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[7]_i_1_n_12\,
      Q => \^evtctr\(3),
      R => SR(0)
    );
\evtctr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[7]_i_1_n_11\,
      Q => \^evtctr\(4),
      R => SR(0)
    );
\evtctr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[7]_i_1_n_10\,
      Q => \^evtctr\(5),
      R => SR(0)
    );
\evtctr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[7]_i_1_n_9\,
      Q => \^evtctr\(6),
      R => SR(0)
    );
\evtctr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[7]_i_1_n_8\,
      Q => \^evtctr\(7),
      R => SR(0)
    );
\evtctr_i_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \evtctr_i_reg[7]_i_1_n_0\,
      CO(6) => \evtctr_i_reg[7]_i_1_n_1\,
      CO(5) => \evtctr_i_reg[7]_i_1_n_2\,
      CO(4) => \evtctr_i_reg[7]_i_1_n_3\,
      CO(3) => \evtctr_i_reg[7]_i_1_n_4\,
      CO(2) => \evtctr_i_reg[7]_i_1_n_5\,
      CO(1) => \evtctr_i_reg[7]_i_1_n_6\,
      CO(0) => \evtctr_i_reg[7]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \evtctr_i[7]_i_2_n_0\,
      O(7) => \evtctr_i_reg[7]_i_1_n_8\,
      O(6) => \evtctr_i_reg[7]_i_1_n_9\,
      O(5) => \evtctr_i_reg[7]_i_1_n_10\,
      O(4) => \evtctr_i_reg[7]_i_1_n_11\,
      O(3) => \evtctr_i_reg[7]_i_1_n_12\,
      O(2) => \evtctr_i_reg[7]_i_1_n_13\,
      O(1) => \evtctr_i_reg[7]_i_1_n_14\,
      O(0) => \evtctr_i_reg[7]_i_1_n_15\,
      S(7) => \evtctr_i[7]_i_3_n_0\,
      S(6) => \evtctr_i[7]_i_4_n_0\,
      S(5) => \evtctr_i[7]_i_5_n_0\,
      S(4) => \evtctr_i[7]_i_6_n_0\,
      S(3) => \evtctr_i[7]_i_7_n_0\,
      S(2) => \evtctr_i[7]_i_8_n_0\,
      S(1) => \evtctr_i[7]_i_9_n_0\,
      S(0) => \evtctr_i[7]_i_10_n_0\
    );
\evtctr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[15]_i_1_n_15\,
      Q => \^evtctr\(8),
      R => SR(0)
    );
\evtctr_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \evtctr_i_reg[31]_0\,
      D => \evtctr_i_reg[15]_i_1_n_14\,
      Q => \^evtctr\(9),
      R => SR(0)
    );
init_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \^pkt_end\,
      I1 => \^lock_reg_0\(0),
      I2 => init,
      O => init_i_1_n_0
    );
init_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => init_i_1_n_0,
      Q => init,
      R => SR(0)
    );
lock1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => lock1_carry_n_0,
      CO(6) => lock1_carry_n_1,
      CO(5) => lock1_carry_n_2,
      CO(4) => lock1_carry_n_3,
      CO(3) => lock1_carry_n_4,
      CO(2) => lock1_carry_n_5,
      CO(1) => lock1_carry_n_6,
      CO(0) => lock1_carry_n_7,
      DI(7 downto 0) => B"11111111",
      O(7 downto 0) => NLW_lock1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => lock1_carry_i_1_n_0,
      S(6) => lock1_carry_i_2_n_0,
      S(5) => lock1_carry_i_3_n_0,
      S(4) => lock1_carry_i_4_n_0,
      S(3) => lock1_carry_i_5_n_0,
      S(2) => lock1_carry_i_6_n_0,
      S(1) => lock1_carry_i_7_n_0,
      S(0) => lock1_carry_i_8_n_0
    );
\lock1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => lock1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \lock1_carry__0_n_0\,
      CO(6) => \lock1_carry__0_n_1\,
      CO(5) => \lock1_carry__0_n_2\,
      CO(4) => \lock1_carry__0_n_3\,
      CO(3) => \lock1_carry__0_n_4\,
      CO(2) => \lock1_carry__0_n_5\,
      CO(1) => \lock1_carry__0_n_6\,
      CO(0) => \lock1_carry__0_n_7\,
      DI(7 downto 0) => B"11111111",
      O(7 downto 0) => \NLW_lock1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \lock1_carry__0_i_1_n_0\,
      S(6) => \lock1_carry__0_i_2_n_0\,
      S(5) => \lock1_carry__0_i_3_n_0\,
      S(4) => \lock1_carry__0_i_4_n_0\,
      S(3) => \lock1_carry__0_i_5_n_0\,
      S(2) => \lock1_carry__0_i_6_n_0\,
      S(1) => \lock1_carry__0_i_7_n_0\,
      S(0) => \lock1_carry__0_i_8_n_0\
    );
\lock1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(45),
      I1 => \sr_reg_n_0_[45]\,
      I2 => \^q\(46),
      I3 => \sr_reg_n_0_[46]\,
      I4 => \sr_reg_n_0_[47]\,
      I5 => \^q\(47),
      O => \lock1_carry__0_i_1_n_0\
    );
\lock1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(42),
      I1 => \sr_reg_n_0_[42]\,
      I2 => \^q\(43),
      I3 => \sr_reg_n_0_[43]\,
      I4 => \sr_reg_n_0_[44]\,
      I5 => \^q\(44),
      O => \lock1_carry__0_i_2_n_0\
    );
\lock1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(40),
      I1 => \sr_reg_n_0_[40]\,
      I2 => \^q\(39),
      I3 => \sr_reg_n_0_[39]\,
      I4 => \sr_reg_n_0_[41]\,
      I5 => \^q\(41),
      O => \lock1_carry__0_i_3_n_0\
    );
\lock1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(36),
      I1 => \sr_reg_n_0_[36]\,
      I2 => \^q\(37),
      I3 => \sr_reg_n_0_[37]\,
      I4 => \sr_reg_n_0_[38]\,
      I5 => \^q\(38),
      O => \lock1_carry__0_i_4_n_0\
    );
\lock1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(33),
      I1 => \sr_reg_n_0_[33]\,
      I2 => \^q\(34),
      I3 => \sr_reg_n_0_[34]\,
      I4 => \sr_reg_n_0_[35]\,
      I5 => \^q\(35),
      O => \lock1_carry__0_i_5_n_0\
    );
\lock1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(30),
      I1 => \sr_reg_n_0_[30]\,
      I2 => \^q\(31),
      I3 => \sr_reg_n_0_[31]\,
      I4 => \sr_reg_n_0_[32]\,
      I5 => \^q\(32),
      O => \lock1_carry__0_i_6_n_0\
    );
\lock1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(27),
      I1 => \sr_reg_n_0_[27]\,
      I2 => \^q\(28),
      I3 => \sr_reg_n_0_[28]\,
      I4 => \sr_reg_n_0_[29]\,
      I5 => \^q\(29),
      O => \lock1_carry__0_i_7_n_0\
    );
\lock1_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(26),
      I1 => \sr_reg_n_0_[26]\,
      I2 => \^q\(24),
      I3 => \sr_reg_n_0_[24]\,
      I4 => \sr_reg_n_0_[25]\,
      I5 => \^q\(25),
      O => \lock1_carry__0_i_8_n_0\
    );
\lock1_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \lock1_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_lock1_carry__1_CO_UNCONNECTED\(7 downto 6),
      CO(5) => lock1,
      CO(4) => \lock1_carry__1_n_3\,
      CO(3) => \lock1_carry__1_n_4\,
      CO(2) => \lock1_carry__1_n_5\,
      CO(1) => \lock1_carry__1_n_6\,
      CO(0) => \lock1_carry__1_n_7\,
      DI(7 downto 0) => B"00111111",
      O(7 downto 0) => \NLW_lock1_carry__1_O_UNCONNECTED\(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => \lock1_carry__1_i_1_n_0\,
      S(4) => \lock1_carry__1_i_2_n_0\,
      S(3) => \lock1_carry__1_i_3_n_0\,
      S(2) => \lock1_carry__1_i_4_n_0\,
      S(1) => \lock1_carry__1_i_5_n_0\,
      S(0) => \lock1_carry__1_i_6_n_0\
    );
\lock1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sr_reg_n_0_[63]\,
      I1 => \^q\(63),
      O => \lock1_carry__1_i_1_n_0\
    );
\lock1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(60),
      I1 => \sr_reg_n_0_[60]\,
      I2 => \^q\(61),
      I3 => \sr_reg_n_0_[61]\,
      I4 => \sr_reg_n_0_[62]\,
      I5 => \^q\(62),
      O => \lock1_carry__1_i_2_n_0\
    );
\lock1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(57),
      I1 => \sr_reg_n_0_[57]\,
      I2 => \^q\(58),
      I3 => \sr_reg_n_0_[58]\,
      I4 => \sr_reg_n_0_[59]\,
      I5 => \^q\(59),
      O => \lock1_carry__1_i_3_n_0\
    );
\lock1_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(54),
      I1 => \sr_reg_n_0_[54]\,
      I2 => \^q\(55),
      I3 => \sr_reg_n_0_[55]\,
      I4 => \sr_reg_n_0_[56]\,
      I5 => \^q\(56),
      O => \lock1_carry__1_i_4_n_0\
    );
\lock1_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(51),
      I1 => \sr_reg_n_0_[51]\,
      I2 => \^q\(52),
      I3 => \sr_reg_n_0_[52]\,
      I4 => \sr_reg_n_0_[53]\,
      I5 => \^q\(53),
      O => \lock1_carry__1_i_5_n_0\
    );
\lock1_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(48),
      I1 => \sr_reg_n_0_[48]\,
      I2 => \^q\(49),
      I3 => \sr_reg_n_0_[49]\,
      I4 => \sr_reg_n_0_[50]\,
      I5 => \^q\(50),
      O => \lock1_carry__1_i_6_n_0\
    );
lock1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(22),
      I1 => \sr_reg_n_0_[22]\,
      I2 => \^q\(21),
      I3 => \sr_reg_n_0_[21]\,
      I4 => \sr_reg_n_0_[23]\,
      I5 => \^q\(23),
      O => lock1_carry_i_1_n_0
    );
lock1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(18),
      I1 => \sr_reg_n_0_[18]\,
      I2 => \^q\(19),
      I3 => \sr_reg_n_0_[19]\,
      I4 => \sr_reg_n_0_[20]\,
      I5 => \^q\(20),
      O => lock1_carry_i_2_n_0
    );
lock1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(15),
      I1 => \sr_reg_n_0_[15]\,
      I2 => \^q\(16),
      I3 => \sr_reg_n_0_[16]\,
      I4 => \sr_reg_n_0_[17]\,
      I5 => \^q\(17),
      O => lock1_carry_i_3_n_0
    );
lock1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(12),
      I1 => \sr_reg_n_0_[12]\,
      I2 => \^q\(13),
      I3 => \sr_reg_n_0_[13]\,
      I4 => \sr_reg_n_0_[14]\,
      I5 => \^q\(14),
      O => lock1_carry_i_4_n_0
    );
lock1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \sr_reg_n_0_[9]\,
      I2 => \^q\(10),
      I3 => \sr_reg_n_0_[10]\,
      I4 => \sr_reg_n_0_[11]\,
      I5 => \^q\(11),
      O => lock1_carry_i_5_n_0
    );
lock1_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      I2 => \^q\(6),
      O => lock1_carry_i_6_n_0
    );
lock1_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(3),
      O => lock1_carry_i_7_n_0
    );
lock1_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => lock1_carry_i_8_n_0
    );
lock_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02F2F2F2"
    )
        port map (
      I0 => \^pkt_end\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => lock1,
      I4 => pkt_end_d,
      O => lock_i_1_n_0
    );
lock_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => lock_i_1_n_0,
      Q => \^lock_reg_0\(0),
      R => SR(0)
    );
pkt_end_d_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \^pkt_end\,
      Q => pkt_end_d,
      R => '0'
    );
pkt_end_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ctr_reg(7),
      I1 => ctr_reg(5),
      I2 => ctr_reg(3),
      I3 => ctr_reg(4),
      I4 => pkt_end_i_2_n_0,
      I5 => ctr_reg(6),
      O => pkt_end_i_1_n_0
    );
pkt_end_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctr_reg(2),
      I1 => ctr_reg(1),
      I2 => ctr_reg(0),
      O => pkt_end_i_2_n_0
    );
pkt_end_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => pkt_end_i_1_n_0,
      Q => \^pkt_end\,
      R => '0'
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => \^q\(0),
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__0/i__carry_n_0\,
      CO(6) => \plusOp_inferred__0/i__carry_n_1\,
      CO(5) => \plusOp_inferred__0/i__carry_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \plusOp_inferred__0/i__carry_n_8\,
      O(6) => \plusOp_inferred__0/i__carry_n_9\,
      O(5) => \plusOp_inferred__0/i__carry_n_10\,
      O(4) => \plusOp_inferred__0/i__carry_n_11\,
      O(3) => \plusOp_inferred__0/i__carry_n_12\,
      O(2) => \plusOp_inferred__0/i__carry_n_13\,
      O(1) => \plusOp_inferred__0/i__carry_n_14\,
      O(0) => \plusOp_inferred__0/i__carry_n_15\,
      S(7 downto 0) => \^q\(8 downto 1)
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(6) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(5) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry__0_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \plusOp_inferred__0/i__carry__0_n_8\,
      O(6) => \plusOp_inferred__0/i__carry__0_n_9\,
      O(5) => \plusOp_inferred__0/i__carry__0_n_10\,
      O(4) => \plusOp_inferred__0/i__carry__0_n_11\,
      O(3) => \plusOp_inferred__0/i__carry__0_n_12\,
      O(2) => \plusOp_inferred__0/i__carry__0_n_13\,
      O(1) => \plusOp_inferred__0/i__carry__0_n_14\,
      O(0) => \plusOp_inferred__0/i__carry__0_n_15\,
      S(7 downto 0) => \^q\(16 downto 9)
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(6) => \plusOp_inferred__0/i__carry__1_n_1\,
      CO(5) => \plusOp_inferred__0/i__carry__1_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry__1_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry__1_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry__1_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry__1_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \plusOp_inferred__0/i__carry__1_n_8\,
      O(6) => \plusOp_inferred__0/i__carry__1_n_9\,
      O(5) => \plusOp_inferred__0/i__carry__1_n_10\,
      O(4) => \plusOp_inferred__0/i__carry__1_n_11\,
      O(3) => \plusOp_inferred__0/i__carry__1_n_12\,
      O(2) => \plusOp_inferred__0/i__carry__1_n_13\,
      O(1) => \plusOp_inferred__0/i__carry__1_n_14\,
      O(0) => \plusOp_inferred__0/i__carry__1_n_15\,
      S(7 downto 0) => \^q\(24 downto 17)
    );
\plusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__0/i__carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(6) => \plusOp_inferred__0/i__carry__2_n_1\,
      CO(5) => \plusOp_inferred__0/i__carry__2_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry__2_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry__2_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry__2_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry__2_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \plusOp_inferred__0/i__carry__2_n_8\,
      O(6) => \plusOp_inferred__0/i__carry__2_n_9\,
      O(5) => \plusOp_inferred__0/i__carry__2_n_10\,
      O(4) => \plusOp_inferred__0/i__carry__2_n_11\,
      O(3) => \plusOp_inferred__0/i__carry__2_n_12\,
      O(2) => \plusOp_inferred__0/i__carry__2_n_13\,
      O(1) => \plusOp_inferred__0/i__carry__2_n_14\,
      O(0) => \plusOp_inferred__0/i__carry__2_n_15\,
      S(7 downto 0) => \^q\(32 downto 25)
    );
\plusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__0/i__carry__2_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(6) => \plusOp_inferred__0/i__carry__3_n_1\,
      CO(5) => \plusOp_inferred__0/i__carry__3_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry__3_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry__3_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry__3_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry__3_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry__3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \plusOp_inferred__0/i__carry__3_n_8\,
      O(6) => \plusOp_inferred__0/i__carry__3_n_9\,
      O(5) => \plusOp_inferred__0/i__carry__3_n_10\,
      O(4) => \plusOp_inferred__0/i__carry__3_n_11\,
      O(3) => \plusOp_inferred__0/i__carry__3_n_12\,
      O(2) => \plusOp_inferred__0/i__carry__3_n_13\,
      O(1) => \plusOp_inferred__0/i__carry__3_n_14\,
      O(0) => \plusOp_inferred__0/i__carry__3_n_15\,
      S(7 downto 0) => \^q\(40 downto 33)
    );
\plusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__0/i__carry__3_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__0/i__carry__4_n_0\,
      CO(6) => \plusOp_inferred__0/i__carry__4_n_1\,
      CO(5) => \plusOp_inferred__0/i__carry__4_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry__4_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry__4_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry__4_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry__4_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry__4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \plusOp_inferred__0/i__carry__4_n_8\,
      O(6) => \plusOp_inferred__0/i__carry__4_n_9\,
      O(5) => \plusOp_inferred__0/i__carry__4_n_10\,
      O(4) => \plusOp_inferred__0/i__carry__4_n_11\,
      O(3) => \plusOp_inferred__0/i__carry__4_n_12\,
      O(2) => \plusOp_inferred__0/i__carry__4_n_13\,
      O(1) => \plusOp_inferred__0/i__carry__4_n_14\,
      O(0) => \plusOp_inferred__0/i__carry__4_n_15\,
      S(7 downto 0) => \^q\(48 downto 41)
    );
\plusOp_inferred__0/i__carry__5\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__0/i__carry__4_n_0\,
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__0/i__carry__5_n_0\,
      CO(6) => \plusOp_inferred__0/i__carry__5_n_1\,
      CO(5) => \plusOp_inferred__0/i__carry__5_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry__5_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry__5_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry__5_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry__5_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry__5_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \plusOp_inferred__0/i__carry__5_n_8\,
      O(6) => \plusOp_inferred__0/i__carry__5_n_9\,
      O(5) => \plusOp_inferred__0/i__carry__5_n_10\,
      O(4) => \plusOp_inferred__0/i__carry__5_n_11\,
      O(3) => \plusOp_inferred__0/i__carry__5_n_12\,
      O(2) => \plusOp_inferred__0/i__carry__5_n_13\,
      O(1) => \plusOp_inferred__0/i__carry__5_n_14\,
      O(0) => \plusOp_inferred__0/i__carry__5_n_15\,
      S(7 downto 0) => \^q\(56 downto 49)
    );
\plusOp_inferred__0/i__carry__6\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp_inferred__0/i__carry__5_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \plusOp_inferred__0/i__carry__6_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry__6_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry__6_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry__6_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry__6_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry__6_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED\(7),
      O(6) => \plusOp_inferred__0/i__carry__6_n_9\,
      O(5) => \plusOp_inferred__0/i__carry__6_n_10\,
      O(4) => \plusOp_inferred__0/i__carry__6_n_11\,
      O(3) => \plusOp_inferred__0/i__carry__6_n_12\,
      O(2) => \plusOp_inferred__0/i__carry__6_n_13\,
      O(1) => \plusOp_inferred__0/i__carry__6_n_14\,
      O(0) => \plusOp_inferred__0/i__carry__6_n_15\,
      S(7) => '0',
      S(6 downto 0) => \^q\(63 downto 57)
    );
\sr[95]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F400000000"
    )
        port map (
      I0 => \sr_reg[9]_0\,
      I1 => slen(0),
      I2 => \sr[95]_i_4_n_0\,
      I3 => \sr[95]_i_5_n_0\,
      I4 => \sr[95]_i_6_n_0\,
      I5 => \sr_reg[9]_1\,
      O => \^sr\
    );
\sr[95]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ctr_reg(2),
      I1 => ctr_reg(1),
      I2 => ctr_reg(3),
      I3 => ctr_reg(4),
      I4 => ctr_reg(0),
      O => \sr[95]_i_4_n_0\
    );
\sr[95]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ctr_reg(5),
      I1 => ctr_reg(7),
      I2 => ctr_reg(6),
      O => \sr[95]_i_5_n_0\
    );
\sr[95]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAAAAA"
    )
        port map (
      I0 => SR(0),
      I1 => ctr_reg(1),
      I2 => ctr_reg(2),
      I3 => ctr_reg(3),
      I4 => ctr_reg(4),
      O => \sr[95]_i_6_n_0\
    );
\sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[18]\,
      Q => \sr_reg_n_0_[10]\,
      R => '0'
    );
\sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[19]\,
      Q => \sr_reg_n_0_[11]\,
      R => '0'
    );
\sr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[20]\,
      Q => \sr_reg_n_0_[12]\,
      R => '0'
    );
\sr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[21]\,
      Q => \sr_reg_n_0_[13]\,
      R => '0'
    );
\sr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[22]\,
      Q => \sr_reg_n_0_[14]\,
      R => '0'
    );
\sr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[23]\,
      Q => \sr_reg_n_0_[15]\,
      R => '0'
    );
\sr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[24]\,
      Q => \sr_reg_n_0_[16]\,
      R => '0'
    );
\sr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[25]\,
      Q => \sr_reg_n_0_[17]\,
      R => '0'
    );
\sr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[26]\,
      Q => \sr_reg_n_0_[18]\,
      R => '0'
    );
\sr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[27]\,
      Q => \sr_reg_n_0_[19]\,
      R => '0'
    );
\sr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[28]\,
      Q => \sr_reg_n_0_[20]\,
      R => '0'
    );
\sr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[29]\,
      Q => \sr_reg_n_0_[21]\,
      R => '0'
    );
\sr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[30]\,
      Q => \sr_reg_n_0_[22]\,
      R => '0'
    );
\sr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[31]\,
      Q => \sr_reg_n_0_[23]\,
      R => '0'
    );
\sr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[32]\,
      Q => \sr_reg_n_0_[24]\,
      R => '0'
    );
\sr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[33]\,
      Q => \sr_reg_n_0_[25]\,
      R => '0'
    );
\sr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[34]\,
      Q => \sr_reg_n_0_[26]\,
      R => '0'
    );
\sr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[35]\,
      Q => \sr_reg_n_0_[27]\,
      R => '0'
    );
\sr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[36]\,
      Q => \sr_reg_n_0_[28]\,
      R => '0'
    );
\sr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[37]\,
      Q => \sr_reg_n_0_[29]\,
      R => '0'
    );
\sr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[38]\,
      Q => \sr_reg_n_0_[30]\,
      R => '0'
    );
\sr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[39]\,
      Q => \sr_reg_n_0_[31]\,
      R => '0'
    );
\sr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[40]\,
      Q => \sr_reg_n_0_[32]\,
      R => '0'
    );
\sr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[41]\,
      Q => \sr_reg_n_0_[33]\,
      R => '0'
    );
\sr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[42]\,
      Q => \sr_reg_n_0_[34]\,
      R => '0'
    );
\sr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[43]\,
      Q => \sr_reg_n_0_[35]\,
      R => '0'
    );
\sr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[44]\,
      Q => \sr_reg_n_0_[36]\,
      R => '0'
    );
\sr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[45]\,
      Q => \sr_reg_n_0_[37]\,
      R => '0'
    );
\sr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[46]\,
      Q => \sr_reg_n_0_[38]\,
      R => '0'
    );
\sr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[47]\,
      Q => \sr_reg_n_0_[39]\,
      R => '0'
    );
\sr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[48]\,
      Q => \sr_reg_n_0_[40]\,
      R => '0'
    );
\sr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[49]\,
      Q => \sr_reg_n_0_[41]\,
      R => '0'
    );
\sr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[50]\,
      Q => \sr_reg_n_0_[42]\,
      R => '0'
    );
\sr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[51]\,
      Q => \sr_reg_n_0_[43]\,
      R => '0'
    );
\sr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[52]\,
      Q => \sr_reg_n_0_[44]\,
      R => '0'
    );
\sr_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[53]\,
      Q => \sr_reg_n_0_[45]\,
      R => '0'
    );
\sr_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[54]\,
      Q => \sr_reg_n_0_[46]\,
      R => '0'
    );
\sr_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[55]\,
      Q => \sr_reg_n_0_[47]\,
      R => '0'
    );
\sr_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[56]\,
      Q => \sr_reg_n_0_[48]\,
      R => '0'
    );
\sr_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[57]\,
      Q => \sr_reg_n_0_[49]\,
      R => '0'
    );
\sr_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[58]\,
      Q => \sr_reg_n_0_[50]\,
      R => '0'
    );
\sr_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[59]\,
      Q => \sr_reg_n_0_[51]\,
      R => '0'
    );
\sr_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[60]\,
      Q => \sr_reg_n_0_[52]\,
      R => '0'
    );
\sr_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[61]\,
      Q => \sr_reg_n_0_[53]\,
      R => '0'
    );
\sr_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[62]\,
      Q => \sr_reg_n_0_[54]\,
      R => '0'
    );
\sr_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[63]\,
      Q => \sr_reg_n_0_[55]\,
      R => '0'
    );
\sr_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(0),
      Q => \sr_reg_n_0_[56]\,
      R => '0'
    );
\sr_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(1),
      Q => \sr_reg_n_0_[57]\,
      R => '0'
    );
\sr_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(2),
      Q => \sr_reg_n_0_[58]\,
      R => '0'
    );
\sr_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(3),
      Q => \sr_reg_n_0_[59]\,
      R => '0'
    );
\sr_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(4),
      Q => \sr_reg_n_0_[60]\,
      R => '0'
    );
\sr_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(5),
      Q => \sr_reg_n_0_[61]\,
      R => '0'
    );
\sr_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(6),
      Q => \sr_reg_n_0_[62]\,
      R => '0'
    );
\sr_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(7),
      Q => \sr_reg_n_0_[63]\,
      R => '0'
    );
\sr_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(8),
      Q => data(0),
      R => '0'
    );
\sr_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(9),
      Q => data(1),
      R => '0'
    );
\sr_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(10),
      Q => data(2),
      R => '0'
    );
\sr_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(11),
      Q => data(3),
      R => '0'
    );
\sr_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(12),
      Q => data(4),
      R => '0'
    );
\sr_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(13),
      Q => data(5),
      R => '0'
    );
\sr_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(14),
      Q => data(6),
      R => '0'
    );
\sr_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(15),
      Q => data(7),
      R => '0'
    );
\sr_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(16),
      Q => data(8),
      R => '0'
    );
\sr_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(17),
      Q => data(9),
      R => '0'
    );
\sr_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(18),
      Q => data(10),
      R => '0'
    );
\sr_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(19),
      Q => data(11),
      R => '0'
    );
\sr_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(20),
      Q => data(12),
      R => '0'
    );
\sr_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(21),
      Q => data(13),
      R => '0'
    );
\sr_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(22),
      Q => data(14),
      R => '0'
    );
\sr_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(23),
      Q => data(15),
      R => '0'
    );
\sr_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(24),
      Q => data(16),
      R => '0'
    );
\sr_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(25),
      Q => data(17),
      R => '0'
    );
\sr_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(26),
      Q => data(18),
      R => '0'
    );
\sr_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(27),
      Q => data(19),
      R => '0'
    );
\sr_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(28),
      Q => data(20),
      R => '0'
    );
\sr_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(29),
      Q => data(21),
      R => '0'
    );
\sr_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(30),
      Q => data(22),
      R => '0'
    );
\sr_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => data(31),
      Q => data(23),
      R => '0'
    );
\sr_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => D(0),
      Q => data(24),
      R => '0'
    );
\sr_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => D(1),
      Q => data(25),
      R => '0'
    );
\sr_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => D(2),
      Q => data(26),
      R => '0'
    );
\sr_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => D(3),
      Q => data(27),
      R => '0'
    );
\sr_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => D(4),
      Q => data(28),
      R => '0'
    );
\sr_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => D(5),
      Q => data(29),
      R => '0'
    );
\sr_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => D(6),
      Q => data(30),
      R => '0'
    );
\sr_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => D(7),
      Q => data(31),
      R => '0'
    );
\sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^sr\,
      D => \sr_reg_n_0_[17]\,
      Q => \sr_reg_n_0_[9]\,
      R => '0'
    );
\tstamp_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"555C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^pkt_end\,
      I2 => init,
      I3 => \^lock_reg_0\(0),
      O => \tstamp_i[0]_i_1_n_0\
    );
\tstamp_i[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[10]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__0_n_14\,
      O => p_2_in(10)
    );
\tstamp_i[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[11]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__0_n_13\,
      O => p_2_in(11)
    );
\tstamp_i[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[12]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__0_n_12\,
      O => p_2_in(12)
    );
\tstamp_i[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[13]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__0_n_11\,
      O => p_2_in(13)
    );
\tstamp_i[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[14]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__0_n_10\,
      O => p_2_in(14)
    );
\tstamp_i[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[15]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__0_n_9\,
      O => p_2_in(15)
    );
\tstamp_i[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[16]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__0_n_8\,
      O => p_2_in(16)
    );
\tstamp_i[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[17]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__1_n_15\,
      O => p_2_in(17)
    );
\tstamp_i[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[18]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__1_n_14\,
      O => p_2_in(18)
    );
\tstamp_i[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[19]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__1_n_13\,
      O => p_2_in(19)
    );
\tstamp_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_15\,
      I1 => \^lock_reg_0\(0),
      I2 => init,
      O => p_2_in(1)
    );
\tstamp_i[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[20]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__1_n_12\,
      O => p_2_in(20)
    );
\tstamp_i[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[21]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__1_n_11\,
      O => p_2_in(21)
    );
\tstamp_i[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[22]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__1_n_10\,
      O => p_2_in(22)
    );
\tstamp_i[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[23]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__1_n_9\,
      O => p_2_in(23)
    );
\tstamp_i[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[24]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__1_n_8\,
      O => p_2_in(24)
    );
\tstamp_i[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[25]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__2_n_15\,
      O => p_2_in(25)
    );
\tstamp_i[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[26]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__2_n_14\,
      O => p_2_in(26)
    );
\tstamp_i[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[27]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__2_n_13\,
      O => p_2_in(27)
    );
\tstamp_i[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[28]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__2_n_12\,
      O => p_2_in(28)
    );
\tstamp_i[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[29]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__2_n_11\,
      O => p_2_in(29)
    );
\tstamp_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_14\,
      I1 => \^lock_reg_0\(0),
      I2 => init,
      O => p_2_in(2)
    );
\tstamp_i[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[30]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__2_n_10\,
      O => p_2_in(30)
    );
\tstamp_i[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[31]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__2_n_9\,
      O => p_2_in(31)
    );
\tstamp_i[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[32]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__2_n_8\,
      O => p_2_in(32)
    );
\tstamp_i[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[33]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__3_n_15\,
      O => p_2_in(33)
    );
\tstamp_i[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[34]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__3_n_14\,
      O => p_2_in(34)
    );
\tstamp_i[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[35]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__3_n_13\,
      O => p_2_in(35)
    );
\tstamp_i[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[36]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__3_n_12\,
      O => p_2_in(36)
    );
\tstamp_i[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[37]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__3_n_11\,
      O => p_2_in(37)
    );
\tstamp_i[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[38]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__3_n_10\,
      O => p_2_in(38)
    );
\tstamp_i[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[39]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__3_n_9\,
      O => p_2_in(39)
    );
\tstamp_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_13\,
      I1 => \^lock_reg_0\(0),
      I2 => init,
      O => p_2_in(3)
    );
\tstamp_i[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[40]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__3_n_8\,
      O => p_2_in(40)
    );
\tstamp_i[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[41]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__4_n_15\,
      O => p_2_in(41)
    );
\tstamp_i[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[42]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__4_n_14\,
      O => p_2_in(42)
    );
\tstamp_i[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[43]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__4_n_13\,
      O => p_2_in(43)
    );
\tstamp_i[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[44]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__4_n_12\,
      O => p_2_in(44)
    );
\tstamp_i[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[45]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__4_n_11\,
      O => p_2_in(45)
    );
\tstamp_i[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[46]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__4_n_10\,
      O => p_2_in(46)
    );
\tstamp_i[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[47]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__4_n_9\,
      O => p_2_in(47)
    );
\tstamp_i[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[48]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__4_n_8\,
      O => p_2_in(48)
    );
\tstamp_i[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[49]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__5_n_15\,
      O => p_2_in(49)
    );
\tstamp_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_12\,
      I1 => \^lock_reg_0\(0),
      I2 => init,
      O => p_2_in(4)
    );
\tstamp_i[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[50]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__5_n_14\,
      O => p_2_in(50)
    );
\tstamp_i[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[51]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__5_n_13\,
      O => p_2_in(51)
    );
\tstamp_i[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[52]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__5_n_12\,
      O => p_2_in(52)
    );
\tstamp_i[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[53]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__5_n_11\,
      O => p_2_in(53)
    );
\tstamp_i[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[54]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__5_n_10\,
      O => p_2_in(54)
    );
\tstamp_i[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[55]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__5_n_9\,
      O => p_2_in(55)
    );
\tstamp_i[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[56]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__5_n_8\,
      O => p_2_in(56)
    );
\tstamp_i[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[57]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__6_n_15\,
      O => p_2_in(57)
    );
\tstamp_i[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[58]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__6_n_14\,
      O => p_2_in(58)
    );
\tstamp_i[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[59]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__6_n_13\,
      O => p_2_in(59)
    );
\tstamp_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_11\,
      I1 => \^lock_reg_0\(0),
      I2 => init,
      O => p_2_in(5)
    );
\tstamp_i[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[60]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__6_n_12\,
      O => p_2_in(60)
    );
\tstamp_i[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[61]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__6_n_11\,
      O => p_2_in(61)
    );
\tstamp_i[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[62]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__6_n_10\,
      O => p_2_in(62)
    );
\tstamp_i[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^pkt_end\,
      I1 => \^lock_reg_0\(0),
      I2 => init,
      O => \tstamp_i[63]_i_1_n_0\
    );
\tstamp_i[63]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[63]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__6_n_9\,
      O => p_2_in(63)
    );
\tstamp_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_10\,
      I1 => \^lock_reg_0\(0),
      I2 => init,
      O => p_2_in(6)
    );
\tstamp_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAE"
    )
        port map (
      I0 => SR(0),
      I1 => \^pkt_end\,
      I2 => init,
      I3 => \^lock_reg_0\(0),
      O => \tstamp_i[7]_i_1_n_0\
    );
\tstamp_i[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_9\,
      I1 => \^lock_reg_0\(0),
      I2 => init,
      O => p_2_in(7)
    );
\tstamp_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^pkt_end\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      O => \tstamp_i[8]_i_1_n_0\
    );
\tstamp_i[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \plusOp_inferred__0/i__carry_n_8\,
      I1 => \^pkt_end\,
      I2 => init,
      I3 => \^lock_reg_0\(0),
      O => \tstamp_i[8]_i_2_n_0\
    );
\tstamp_i[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \sr_reg_n_0_[9]\,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      I3 => \plusOp_inferred__0/i__carry__0_n_15\,
      O => p_2_in(9)
    );
\tstamp_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[8]_i_1_n_0\,
      D => \tstamp_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\tstamp_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(10),
      Q => \^q\(10),
      R => SR(0)
    );
\tstamp_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(11),
      Q => \^q\(11),
      R => SR(0)
    );
\tstamp_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(12),
      Q => \^q\(12),
      R => SR(0)
    );
\tstamp_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(13),
      Q => \^q\(13),
      R => SR(0)
    );
\tstamp_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(14),
      Q => \^q\(14),
      R => SR(0)
    );
\tstamp_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(15),
      Q => \^q\(15),
      R => SR(0)
    );
\tstamp_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(16),
      Q => \^q\(16),
      R => SR(0)
    );
\tstamp_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(17),
      Q => \^q\(17),
      R => SR(0)
    );
\tstamp_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(18),
      Q => \^q\(18),
      R => SR(0)
    );
\tstamp_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(19),
      Q => \^q\(19),
      R => SR(0)
    );
\tstamp_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(1),
      Q => \^q\(1),
      R => \tstamp_i[7]_i_1_n_0\
    );
\tstamp_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(20),
      Q => \^q\(20),
      R => SR(0)
    );
\tstamp_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(21),
      Q => \^q\(21),
      R => SR(0)
    );
\tstamp_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(22),
      Q => \^q\(22),
      R => SR(0)
    );
\tstamp_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(23),
      Q => \^q\(23),
      R => SR(0)
    );
\tstamp_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(24),
      Q => \^q\(24),
      R => SR(0)
    );
\tstamp_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(25),
      Q => \^q\(25),
      R => SR(0)
    );
\tstamp_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(26),
      Q => \^q\(26),
      R => SR(0)
    );
\tstamp_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(27),
      Q => \^q\(27),
      R => SR(0)
    );
\tstamp_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(28),
      Q => \^q\(28),
      R => SR(0)
    );
\tstamp_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(29),
      Q => \^q\(29),
      R => SR(0)
    );
\tstamp_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(2),
      Q => \^q\(2),
      R => \tstamp_i[7]_i_1_n_0\
    );
\tstamp_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(30),
      Q => \^q\(30),
      R => SR(0)
    );
\tstamp_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(31),
      Q => \^q\(31),
      R => SR(0)
    );
\tstamp_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(32),
      Q => \^q\(32),
      R => SR(0)
    );
\tstamp_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(33),
      Q => \^q\(33),
      R => SR(0)
    );
\tstamp_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(34),
      Q => \^q\(34),
      R => SR(0)
    );
\tstamp_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(35),
      Q => \^q\(35),
      R => SR(0)
    );
\tstamp_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(36),
      Q => \^q\(36),
      R => SR(0)
    );
\tstamp_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(37),
      Q => \^q\(37),
      R => SR(0)
    );
\tstamp_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(38),
      Q => \^q\(38),
      R => SR(0)
    );
\tstamp_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(39),
      Q => \^q\(39),
      R => SR(0)
    );
\tstamp_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(3),
      Q => \^q\(3),
      R => \tstamp_i[7]_i_1_n_0\
    );
\tstamp_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(40),
      Q => \^q\(40),
      R => SR(0)
    );
\tstamp_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(41),
      Q => \^q\(41),
      R => SR(0)
    );
\tstamp_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(42),
      Q => \^q\(42),
      R => SR(0)
    );
\tstamp_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(43),
      Q => \^q\(43),
      R => SR(0)
    );
\tstamp_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(44),
      Q => \^q\(44),
      R => SR(0)
    );
\tstamp_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(45),
      Q => \^q\(45),
      R => SR(0)
    );
\tstamp_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(46),
      Q => \^q\(46),
      R => SR(0)
    );
\tstamp_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(47),
      Q => \^q\(47),
      R => SR(0)
    );
\tstamp_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(48),
      Q => \^q\(48),
      R => SR(0)
    );
\tstamp_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(49),
      Q => \^q\(49),
      R => SR(0)
    );
\tstamp_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(4),
      Q => \^q\(4),
      R => \tstamp_i[7]_i_1_n_0\
    );
\tstamp_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(50),
      Q => \^q\(50),
      R => SR(0)
    );
\tstamp_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(51),
      Q => \^q\(51),
      R => SR(0)
    );
\tstamp_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(52),
      Q => \^q\(52),
      R => SR(0)
    );
\tstamp_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(53),
      Q => \^q\(53),
      R => SR(0)
    );
\tstamp_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(54),
      Q => \^q\(54),
      R => SR(0)
    );
\tstamp_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(55),
      Q => \^q\(55),
      R => SR(0)
    );
\tstamp_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(56),
      Q => \^q\(56),
      R => SR(0)
    );
\tstamp_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(57),
      Q => \^q\(57),
      R => SR(0)
    );
\tstamp_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(58),
      Q => \^q\(58),
      R => SR(0)
    );
\tstamp_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(59),
      Q => \^q\(59),
      R => SR(0)
    );
\tstamp_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(5),
      Q => \^q\(5),
      R => \tstamp_i[7]_i_1_n_0\
    );
\tstamp_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(60),
      Q => \^q\(60),
      R => SR(0)
    );
\tstamp_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(61),
      Q => \^q\(61),
      R => SR(0)
    );
\tstamp_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(62),
      Q => \^q\(62),
      R => SR(0)
    );
\tstamp_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(63),
      Q => \^q\(63),
      R => SR(0)
    );
\tstamp_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(6),
      Q => \^q\(6),
      R => \tstamp_i[7]_i_1_n_0\
    );
\tstamp_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(7),
      Q => \^q\(7),
      R => \tstamp_i[7]_i_1_n_0\
    );
\tstamp_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[8]_i_1_n_0\,
      D => \tstamp_i[8]_i_2_n_0\,
      Q => \^q\(8),
      R => SR(0)
    );
\tstamp_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => p_2_in(9),
      Q => \^q\(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_0_1_pdts_cksum is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \lfsr_q_reg[15]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    err_c : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lfsr_q_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    k : in STD_LOGIC;
    \err_reg[0]\ : in STD_LOGIC;
    \lfsr_q_reg[0]\ : in STD_LOGIC;
    \err_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_0\ : in STD_LOGIC;
    \lfsr_q_reg[15]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lfsr_q_reg[15]_1\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rec_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_0_1_pdts_cksum : entity is "pdts_cksum";
end design_1_pdts_endpoint_0_1_pdts_cksum;

architecture STRUCTURE of design_1_pdts_endpoint_0_1_pdts_cksum is
begin
crc: entity work.design_1_pdts_endpoint_0_1_outputlogic_crc16
     port map (
      D(1 downto 0) => D(1 downto 0),
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      err_c(0) => err_c(0),
      \err_reg[0]\ => \err_reg[0]\,
      \err_reg[0]_0\ => \err_reg[0]_0\,
      k => k,
      \lfsr_q_reg[0]_0\ => \lfsr_q_reg[0]\,
      \lfsr_q_reg[15]_0\(9 downto 0) => \lfsr_q_reg[15]\(9 downto 0),
      \lfsr_q_reg[15]_1\(0) => \lfsr_q_reg[15]_0\(0),
      \lfsr_q_reg[15]_2\(9 downto 0) => \lfsr_q_reg[15]_1\(9 downto 0),
      \lfsr_q_reg[9]_0\(0) => \lfsr_q_reg[9]\(0),
      rec_clk => rec_clk,
      \state_reg[0]\ => \state_reg[0]\,
      \state_reg[0]_0\ => \state_reg[0]_0\,
      \state_reg[1]\(0) => \state_reg[1]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_0_1_pdts_ep_startup is
  port (
    \out\ : out STD_LOGIC;
    \q_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rec_clk : in STD_LOGIC;
    sclk : in STD_LOGIC;
    rec_d_clk : in STD_LOGIC;
    rx_err_f_reg_0 : in STD_LOGIC;
    sfp_los : in STD_LOGIC;
    srst : in STD_LOGIC;
    cdr_los : in STD_LOGIC;
    cdr_lol : in STD_LOGIC;
    \da_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_0_1_pdts_ep_startup : entity is "pdts_ep_startup";
end design_1_pdts_endpoint_0_1_pdts_ep_startup;

architecture STRUCTURE of design_1_pdts_endpoint_0_1_pdts_ep_startup is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \cdr_ctr[4]_i_1_n_0\ : STD_LOGIC;
  signal \cdr_ctr[7]_i_1_n_0\ : STD_LOGIC;
  signal \cdr_ctr[7]_i_2_n_0\ : STD_LOGIC;
  signal \cdr_ctr[7]_i_4_n_0\ : STD_LOGIC;
  signal cdr_ctr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^q_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rctr_reg : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \rctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \sfp_los_ctr[4]_i_1_n_0\ : STD_LOGIC;
  signal \sfp_los_ctr[7]_i_1_n_0\ : STD_LOGIC;
  signal \sfp_los_ctr[7]_i_2_n_0\ : STD_LOGIC;
  signal \sfp_los_ctr[7]_i_4_n_0\ : STD_LOGIC;
  signal sfp_los_ctr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sync_sclk_n_0 : STD_LOGIC;
  signal sync_sclk_n_1 : STD_LOGIC;
  signal sync_sclk_n_2 : STD_LOGIC;
  signal sync_sclk_n_3 : STD_LOGIC;
  signal sync_sclk_n_4 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FSM_onehot_state[9]_i_2\ : label is "soft_lutpair49";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "w_freq:0010000000,w_align:0000000100,w_cdr:0100000000,w_sfp:0000000010,w_rst:1000000000,run:0000000001,err_t:0000010000,w_rdy:0000100000,err_r:0000001000,w_lock:0001000000";
  attribute SOFT_HLUTNM of \cdr_ctr[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cdr_ctr[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cdr_ctr[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cdr_ctr[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cdr_ctr[6]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cdr_ctr[7]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rctr[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rctr[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rctr[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rctr[4]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sfp_los_ctr[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sfp_los_ctr[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sfp_los_ctr[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sfp_los_ctr[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sfp_los_ctr[6]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \sfp_los_ctr[7]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \stat[0]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \stat[1]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \stat[2]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \stat[3]_INST_0\ : label is "soft_lutpair49";
begin
  D(0) <= \^d\(0);
  \q_reg[1]\(1 downto 0) <= \^q_reg[1]\(1 downto 0);
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEF00"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state[9]_i_2_n_0\,
      I3 => \FSM_onehot_state[9]_i_4_n_0\,
      I4 => \FSM_onehot_state[3]_i_2_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[9]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \FSM_onehot_state[9]_i_4_n_0\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state[9]_i_4_n_0\,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[9]_i_2_n_0\
    );
\FSM_onehot_state[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cdr_ctr[7]_i_2_n_0\,
      I1 => \sfp_los_ctr[7]_i_2_n_0\,
      O => \FSM_onehot_state[9]_i_4_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_0,
      D => sync_sclk_n_4,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => srst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_0,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => p_4_in,
      R => srst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_0,
      D => sync_sclk_n_3,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => srst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_0,
      D => sync_sclk_n_2,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => srst
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_0,
      D => sync_sclk_n_1,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => srst
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_0,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => srst
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_0,
      D => \FSM_onehot_state_reg_n_0_[7]\,
      Q => p_0_in2_in,
      R => srst
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_0,
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => srst
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_0,
      D => p_4_in,
      Q => p_0_in5_in,
      R => srst
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_0,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      S => srst
    );
\cdr_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cdr_ctr_reg(0),
      O => \plusOp__1\(0)
    );
\cdr_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cdr_ctr_reg(0),
      I1 => cdr_ctr_reg(1),
      O => \plusOp__1\(1)
    );
\cdr_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cdr_ctr_reg(2),
      I1 => cdr_ctr_reg(0),
      I2 => cdr_ctr_reg(1),
      O => \plusOp__1\(2)
    );
\cdr_ctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => cdr_ctr_reg(3),
      I1 => cdr_ctr_reg(1),
      I2 => cdr_ctr_reg(0),
      I3 => cdr_ctr_reg(2),
      O => \plusOp__1\(3)
    );
\cdr_ctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => cdr_ctr_reg(4),
      I1 => cdr_ctr_reg(3),
      I2 => cdr_ctr_reg(1),
      I3 => cdr_ctr_reg(0),
      I4 => cdr_ctr_reg(2),
      O => \cdr_ctr[4]_i_1_n_0\
    );
\cdr_ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => cdr_ctr_reg(5),
      I1 => cdr_ctr_reg(3),
      I2 => cdr_ctr_reg(1),
      I3 => cdr_ctr_reg(0),
      I4 => cdr_ctr_reg(2),
      I5 => cdr_ctr_reg(4),
      O => \plusOp__1\(5)
    );
\cdr_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cdr_ctr_reg(6),
      I1 => \cdr_ctr[7]_i_4_n_0\,
      O => \plusOp__1\(6)
    );
\cdr_ctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cdr_los,
      I1 => cdr_lol,
      I2 => srst,
      O => \cdr_ctr[7]_i_1_n_0\
    );
\cdr_ctr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => cdr_ctr_reg(6),
      I1 => \cdr_ctr[7]_i_4_n_0\,
      I2 => cdr_ctr_reg(7),
      O => \cdr_ctr[7]_i_2_n_0\
    );
\cdr_ctr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => cdr_ctr_reg(7),
      I1 => \cdr_ctr[7]_i_4_n_0\,
      I2 => cdr_ctr_reg(6),
      O => \plusOp__1\(7)
    );
\cdr_ctr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cdr_ctr_reg(4),
      I1 => cdr_ctr_reg(2),
      I2 => cdr_ctr_reg(0),
      I3 => cdr_ctr_reg(1),
      I4 => cdr_ctr_reg(3),
      I5 => cdr_ctr_reg(5),
      O => \cdr_ctr[7]_i_4_n_0\
    );
\cdr_ctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \cdr_ctr[7]_i_2_n_0\,
      D => \plusOp__1\(0),
      Q => cdr_ctr_reg(0),
      R => \cdr_ctr[7]_i_1_n_0\
    );
\cdr_ctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \cdr_ctr[7]_i_2_n_0\,
      D => \plusOp__1\(1),
      Q => cdr_ctr_reg(1),
      R => \cdr_ctr[7]_i_1_n_0\
    );
\cdr_ctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \cdr_ctr[7]_i_2_n_0\,
      D => \plusOp__1\(2),
      Q => cdr_ctr_reg(2),
      R => \cdr_ctr[7]_i_1_n_0\
    );
\cdr_ctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \cdr_ctr[7]_i_2_n_0\,
      D => \plusOp__1\(3),
      Q => cdr_ctr_reg(3),
      R => \cdr_ctr[7]_i_1_n_0\
    );
\cdr_ctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \cdr_ctr[7]_i_2_n_0\,
      D => \cdr_ctr[4]_i_1_n_0\,
      Q => cdr_ctr_reg(4),
      R => \cdr_ctr[7]_i_1_n_0\
    );
\cdr_ctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \cdr_ctr[7]_i_2_n_0\,
      D => \plusOp__1\(5),
      Q => cdr_ctr_reg(5),
      R => \cdr_ctr[7]_i_1_n_0\
    );
\cdr_ctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \cdr_ctr[7]_i_2_n_0\,
      D => \plusOp__1\(6),
      Q => cdr_ctr_reg(6),
      R => \cdr_ctr[7]_i_1_n_0\
    );
\cdr_ctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \cdr_ctr[7]_i_2_n_0\,
      D => \plusOp__1\(7),
      Q => cdr_ctr_reg(7),
      R => \cdr_ctr[7]_i_1_n_0\
    );
\rctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rctr_reg_n_0_[0]\,
      O => plusOp(0)
    );
\rctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rctr_reg_n_0_[0]\,
      I1 => \rctr_reg_n_0_[1]\,
      O => plusOp(1)
    );
\rctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \rctr_reg_n_0_[2]\,
      I1 => \rctr_reg_n_0_[1]\,
      I2 => \rctr_reg_n_0_[0]\,
      O => plusOp(2)
    );
\rctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \rctr_reg_n_0_[3]\,
      I1 => \rctr_reg_n_0_[0]\,
      I2 => \rctr_reg_n_0_[1]\,
      I3 => \rctr_reg_n_0_[2]\,
      O => plusOp(3)
    );
\rctr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => rctr_reg(4),
      I1 => \rctr_reg_n_0_[2]\,
      I2 => \rctr_reg_n_0_[1]\,
      I3 => \rctr_reg_n_0_[0]\,
      I4 => \rctr_reg_n_0_[3]\,
      O => plusOp(4)
    );
\rctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => plusOp(0),
      Q => \rctr_reg_n_0_[0]\,
      R => SR(0)
    );
\rctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => plusOp(1),
      Q => \rctr_reg_n_0_[1]\,
      R => SR(0)
    );
\rctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => plusOp(2),
      Q => \rctr_reg_n_0_[2]\,
      R => SR(0)
    );
\rctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => plusOp(3),
      Q => \rctr_reg_n_0_[3]\,
      R => SR(0)
    );
\rctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => plusOp(4),
      Q => rctr_reg(4),
      R => SR(0)
    );
rx_err_f_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => rx_err_f_reg_0,
      Q => \^d\(0),
      R => \^q_reg[1]\(1)
    );
\sfp_los_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sfp_los_ctr_reg(0),
      O => \plusOp__0\(0)
    );
\sfp_los_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sfp_los_ctr_reg(0),
      I1 => sfp_los_ctr_reg(1),
      O => \plusOp__0\(1)
    );
\sfp_los_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => sfp_los_ctr_reg(2),
      I1 => sfp_los_ctr_reg(0),
      I2 => sfp_los_ctr_reg(1),
      O => \plusOp__0\(2)
    );
\sfp_los_ctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => sfp_los_ctr_reg(3),
      I1 => sfp_los_ctr_reg(1),
      I2 => sfp_los_ctr_reg(0),
      I3 => sfp_los_ctr_reg(2),
      O => \plusOp__0\(3)
    );
\sfp_los_ctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => sfp_los_ctr_reg(4),
      I1 => sfp_los_ctr_reg(3),
      I2 => sfp_los_ctr_reg(1),
      I3 => sfp_los_ctr_reg(0),
      I4 => sfp_los_ctr_reg(2),
      O => \sfp_los_ctr[4]_i_1_n_0\
    );
\sfp_los_ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => sfp_los_ctr_reg(5),
      I1 => sfp_los_ctr_reg(3),
      I2 => sfp_los_ctr_reg(1),
      I3 => sfp_los_ctr_reg(0),
      I4 => sfp_los_ctr_reg(2),
      I5 => sfp_los_ctr_reg(4),
      O => \plusOp__0\(5)
    );
\sfp_los_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sfp_los_ctr_reg(6),
      I1 => \sfp_los_ctr[7]_i_4_n_0\,
      O => \plusOp__0\(6)
    );
\sfp_los_ctr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sfp_los,
      I1 => srst,
      O => \sfp_los_ctr[7]_i_1_n_0\
    );
\sfp_los_ctr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => sfp_los_ctr_reg(6),
      I1 => \sfp_los_ctr[7]_i_4_n_0\,
      I2 => sfp_los_ctr_reg(7),
      O => \sfp_los_ctr[7]_i_2_n_0\
    );
\sfp_los_ctr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => sfp_los_ctr_reg(7),
      I1 => \sfp_los_ctr[7]_i_4_n_0\,
      I2 => sfp_los_ctr_reg(6),
      O => \plusOp__0\(7)
    );
\sfp_los_ctr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => sfp_los_ctr_reg(4),
      I1 => sfp_los_ctr_reg(2),
      I2 => sfp_los_ctr_reg(0),
      I3 => sfp_los_ctr_reg(1),
      I4 => sfp_los_ctr_reg(3),
      I5 => sfp_los_ctr_reg(5),
      O => \sfp_los_ctr[7]_i_4_n_0\
    );
\sfp_los_ctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \sfp_los_ctr[7]_i_2_n_0\,
      D => \plusOp__0\(0),
      Q => sfp_los_ctr_reg(0),
      R => \sfp_los_ctr[7]_i_1_n_0\
    );
\sfp_los_ctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \sfp_los_ctr[7]_i_2_n_0\,
      D => \plusOp__0\(1),
      Q => sfp_los_ctr_reg(1),
      R => \sfp_los_ctr[7]_i_1_n_0\
    );
\sfp_los_ctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \sfp_los_ctr[7]_i_2_n_0\,
      D => \plusOp__0\(2),
      Q => sfp_los_ctr_reg(2),
      R => \sfp_los_ctr[7]_i_1_n_0\
    );
\sfp_los_ctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \sfp_los_ctr[7]_i_2_n_0\,
      D => \plusOp__0\(3),
      Q => sfp_los_ctr_reg(3),
      R => \sfp_los_ctr[7]_i_1_n_0\
    );
\sfp_los_ctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \sfp_los_ctr[7]_i_2_n_0\,
      D => \sfp_los_ctr[4]_i_1_n_0\,
      Q => sfp_los_ctr_reg(4),
      R => \sfp_los_ctr[7]_i_1_n_0\
    );
\sfp_los_ctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \sfp_los_ctr[7]_i_2_n_0\,
      D => \plusOp__0\(5),
      Q => sfp_los_ctr_reg(5),
      R => \sfp_los_ctr[7]_i_1_n_0\
    );
\sfp_los_ctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \sfp_los_ctr[7]_i_2_n_0\,
      D => \plusOp__0\(6),
      Q => sfp_los_ctr_reg(6),
      R => \sfp_los_ctr[7]_i_1_n_0\
    );
\sfp_los_ctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \sfp_los_ctr[7]_i_2_n_0\,
      D => \plusOp__0\(7),
      Q => sfp_los_ctr_reg(7),
      R => \sfp_los_ctr[7]_i_1_n_0\
    );
\stat[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => p_4_in,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      O => stat(0)
    );
\stat[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => p_0_in5_in,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => stat(1)
    );
\stat[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => p_0_in2_in,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      O => stat(2)
    );
\stat[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => stat(3)
    );
sync_clk: entity work.\design_1_pdts_endpoint_0_1_pdts_synchro__parameterized2\
     port map (
      Q(5) => \FSM_onehot_state_reg_n_0_[9]\,
      Q(4) => p_0_in5_in,
      Q(3) => \FSM_onehot_state_reg_n_0_[7]\,
      Q(2) => p_0_in2_in,
      Q(1) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(0) => p_4_in,
      \q_reg[1]_0\(1 downto 0) => \^q_reg[1]\(1 downto 0),
      rec_clk => rec_clk,
      sclk => sclk
    );
sync_rec_clk: entity work.\design_1_pdts_endpoint_0_1_pdts_synchro__parameterized1\
     port map (
      Q(3) => \FSM_onehot_state_reg_n_0_[9]\,
      Q(2) => p_0_in5_in,
      Q(1) => \FSM_onehot_state_reg_n_0_[7]\,
      Q(0) => p_4_in,
      \out\ => \out\,
      rec_d_clk => rec_d_clk,
      sclk => sclk
    );
sync_sclk: entity work.\design_1_pdts_endpoint_0_1_pdts_synchro__parameterized0\
     port map (
      D(3) => sync_sclk_n_1,
      D(2) => sync_sclk_n_2,
      D(1) => sync_sclk_n_3,
      D(0) => sync_sclk_n_4,
      E(0) => sync_sclk_n_0,
      \FSM_onehot_state[9]_i_3_0\(1 downto 0) => sfp_los_ctr_reg(7 downto 6),
      \FSM_onehot_state[9]_i_3_1\ => \sfp_los_ctr[7]_i_4_n_0\,
      \FSM_onehot_state_reg[0]\ => \FSM_onehot_state[9]_i_2_n_0\,
      \FSM_onehot_state_reg[0]_0\ => \FSM_onehot_state[9]_i_4_n_0\,
      \FSM_onehot_state_reg[0]_1\(0) => \sfp_los_ctr[7]_i_2_n_0\,
      \FSM_onehot_state_reg[0]_2\(0) => \cdr_ctr[7]_i_2_n_0\,
      \FSM_onehot_state_reg[3]\ => \FSM_onehot_state[3]_i_2_n_0\,
      Q(7) => \FSM_onehot_state_reg_n_0_[9]\,
      Q(6) => p_0_in5_in,
      Q(5) => \FSM_onehot_state_reg_n_0_[7]\,
      Q(4) => p_0_in2_in,
      Q(3) => \FSM_onehot_state_reg_n_0_[5]\,
      Q(2) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(1) => p_4_in,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \da_reg[3]_0\(3) => \da_reg[3]\(2),
      \da_reg[3]_0\(2) => \^d\(0),
      \da_reg[3]_0\(1 downto 0) => \da_reg[3]\(1 downto 0),
      rec_clk => rec_clk,
      sclk => sclk
    );
sync_t: entity work.design_1_pdts_endpoint_0_1_pdts_synchro
     port map (
      Q(0) => rctr_reg(4),
      rec_clk => rec_clk,
      sclk => sclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_0_1_pdts_rx_phy is
  port (
    k : out STD_LOGIC;
    stb : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[3]\ : out STD_LOGIC;
    \q_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rec_clk_reset : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    lock_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_match : out STD_LOGIC;
    stbd_reg_0 : out STD_LOGIC;
    slen : out STD_LOGIC_VECTOR ( 0 to 0 );
    pkt_end_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]\ : out STD_LOGIC;
    k_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    rec_clk : in STD_LOGIC;
    rec_d_clk : in STD_LOGIC;
    \lfsr_q_reg[8]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \lctr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rec_clk_locked : in STD_LOGIC;
    tgrp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[0]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC;
    \lfsr_q_reg[15]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pkt_end : in STD_LOGIC;
    \evtctr_i_reg[31]\ : in STD_LOGIC;
    \err_reg[2]\ : in STD_LOGIC;
    rec_d : in STD_LOGIC;
    sclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_0_1_pdts_rx_phy : entity is "pdts_rx_phy";
end design_1_pdts_endpoint_0_1_pdts_rx_phy;

architecture STRUCTURE of design_1_pdts_endpoint_0_1_pdts_rx_phy is
  signal c : STD_LOGIC;
  signal c0 : STD_LOGIC;
  signal c_i_2_n_0 : STD_LOGIC;
  signal c_i_3_n_0 : STD_LOGIC;
  signal ctr0 : STD_LOGIC;
  signal ctr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dec_n_14 : STD_LOGIC;
  signal dec_n_15 : STD_LOGIC;
  signal dec_n_16 : STD_LOGIC;
  signal dec_n_17 : STD_LOGIC;
  signal dec_n_18 : STD_LOGIC;
  signal dec_n_19 : STD_LOGIC;
  signal dec_n_36 : STD_LOGIC;
  signal f : STD_LOGIC;
  signal \f0__0\ : STD_LOGIC;
  signal fctr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fr : STD_LOGIC;
  signal lctr : STD_LOGIC;
  signal \lctr[7]_i_2_n_0\ : STD_LOGIC;
  signal lctr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal lock : STD_LOGIC;
  signal m : STD_LOGIC;
  signal m0 : STD_LOGIC;
  signal m_i_1_n_0 : STD_LOGIC;
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__4\ : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal rec_clk_reset_INST_0_i_1_n_0 : STD_LOGIC;
  signal \sctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \sctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \sctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \sctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \sctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \^stb\ : STD_LOGIC;
  signal stb_0 : STD_LOGIC;
  signal t : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tr : STD_LOGIC;
  signal w : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wa : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctr[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ctr[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ctr[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ctr[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ctr[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \da[1]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \fctr[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \fctr[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \fctr[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \fctr[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of m_i_3 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rctr[4]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of rec_clk_reset_INST_0 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of rec_clk_reset_INST_0_i_1 : label is "soft_lutpair32";
begin
  stb <= \^stb\;
c_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000000000300"
    )
        port map (
      I0 => c_i_2_n_0,
      I1 => wa(3),
      I2 => wa(5),
      I3 => c_i_3_n_0,
      I4 => wa(2),
      I5 => wa(6),
      O => c0
    );
c_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => wa(4),
      I1 => wa(1),
      I2 => wa(7),
      I3 => wa(9),
      I4 => wa(0),
      I5 => wa(8),
      O => c_i_2_n_0
    );
c_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => wa(4),
      I1 => wa(1),
      I2 => wa(7),
      I3 => wa(9),
      I4 => wa(0),
      I5 => wa(8),
      O => c_i_3_n_0
    );
c_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_d_clk,
      CE => '1',
      D => c0,
      Q => c,
      R => '0'
    );
\ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg(0),
      O => \plusOp__2\(0)
    );
\ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ctr_reg(0),
      I1 => ctr_reg(1),
      O => \plusOp__2\(1)
    );
\ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => ctr_reg(2),
      I1 => ctr_reg(1),
      I2 => ctr_reg(0),
      O => \plusOp__2\(2)
    );
\ctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => ctr_reg(3),
      I1 => ctr_reg(0),
      I2 => ctr_reg(1),
      I3 => ctr_reg(2),
      O => \plusOp__2\(3)
    );
\ctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => ctr_reg(4),
      I1 => ctr_reg(2),
      I2 => ctr_reg(1),
      I3 => ctr_reg(0),
      I4 => ctr_reg(3),
      O => \plusOp__2\(4)
    );
\ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__2\(0),
      Q => ctr_reg(0),
      R => m_i_1_n_0
    );
\ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__2\(1),
      Q => ctr_reg(1),
      R => m_i_1_n_0
    );
\ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__2\(2),
      Q => ctr_reg(2),
      R => m_i_1_n_0
    );
\ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__2\(3),
      Q => ctr_reg(3),
      R => m_i_1_n_0
    );
\ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => ctr0,
      D => \plusOp__2\(4),
      Q => ctr_reg(4),
      R => m_i_1_n_0
    );
\da[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => m,
      I1 => ctr_reg(3),
      I2 => ctr_reg(0),
      I3 => ctr_reg(1),
      I4 => ctr_reg(2),
      I5 => ctr_reg(4),
      O => lock_reg_0(0)
    );
\da[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => lock,
      I1 => rec_clk_reset_INST_0_i_1_n_0,
      I2 => m,
      O => lock_reg_0(1)
    );
dec: entity work.design_1_pdts_endpoint_0_1_pdts_dec8b10b
     port map (
      D(9 downto 0) => D(9 downto 0),
      E(0) => \^stb\,
      Q(0) => Q(0),
      SR(0) => lctr,
      derr_reg_0(3) => \sctr_reg_n_0_[3]\,
      derr_reg_0(2) => \sctr_reg_n_0_[2]\,
      derr_reg_0(1) => \sctr_reg_n_0_[1]\,
      derr_reg_0(0) => \sctr_reg_n_0_[0]\,
      disp_reg_0(9 downto 0) => w(9 downto 0),
      \err_reg[2]\ => \err_reg[2]\,
      \evtctr_i_reg[31]\ => \evtctr_i_reg[31]\,
      k_reg_0 => k,
      k_reg_1(0) => k_reg(0),
      \lctr_reg[0]\(0) => \lctr_reg[0]_0\(0),
      \lctr_reg[6]\ => dec_n_36,
      \lfsr_q_reg[15]\(1 downto 0) => \lfsr_q_reg[15]\(1 downto 0),
      \lfsr_q_reg[8]\(9 downto 0) => \lfsr_q_reg[8]\(9 downto 0),
      lock => lock,
      lock_reg(5 downto 4) => lctr_reg(7 downto 6),
      lock_reg(3 downto 0) => lctr_reg(3 downto 0),
      lock_reg_0 => \lctr[7]_i_2_n_0\,
      pkt_end => pkt_end,
      pkt_end_reg => pkt_end_reg,
      \q_reg[0]_0\(5) => dec_n_14,
      \q_reg[0]_0\(4) => dec_n_15,
      \q_reg[0]_0\(3) => dec_n_16,
      \q_reg[0]_0\(2) => dec_n_17,
      \q_reg[0]_0\(1) => dec_n_18,
      \q_reg[0]_0\(0) => dec_n_19,
      \q_reg[3]_0\ => \q_reg[3]\,
      \q_reg[7]_0\ => \q_reg[7]\(0),
      \q_reg[7]_1\(6 downto 0) => \q_reg[7]\(7 downto 1),
      rec_clk => rec_clk,
      s_match => s_match,
      slen(0) => slen(0),
      \state_reg[0]\ => \state_reg[0]\,
      \state_reg[0]_0\ => \state_reg[0]_0\,
      \state_reg[1]\(0) => E(0),
      \state_reg[1]_0\ => \state_reg[1]\,
      stb_0 => stb_0,
      stbd_reg => stbd_reg_0,
      tgrp(1 downto 0) => tgrp(1 downto 0)
    );
f0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => c,
      I1 => f,
      I2 => \out\,
      O => \f0__0\
    );
f_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_d_clk,
      CE => '1',
      D => \f0__0\,
      Q => f,
      R => '0'
    );
\fctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fctr_reg(0),
      O => \plusOp__3\(0)
    );
\fctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => fctr_reg(0),
      I1 => fctr_reg(1),
      O => \plusOp__3\(1)
    );
\fctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => fctr_reg(2),
      I1 => fctr_reg(1),
      I2 => fctr_reg(0),
      O => \plusOp__3\(2)
    );
\fctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => fctr_reg(3),
      I1 => fctr_reg(0),
      I2 => fctr_reg(1),
      I3 => fctr_reg(2),
      O => \plusOp__3\(3)
    );
\fctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => \plusOp__3\(0),
      Q => fctr_reg(0),
      R => '0'
    );
\fctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => \plusOp__3\(1),
      Q => fctr_reg(1),
      R => '0'
    );
\fctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => \plusOp__3\(2),
      Q => fctr_reg(2),
      R => '0'
    );
\fctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => '1',
      D => \plusOp__3\(3),
      Q => fctr_reg(3),
      R => '0'
    );
fr_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => f,
      Q => fr,
      R => '0'
    );
\lctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => lctr_reg(4),
      I1 => lctr_reg(2),
      I2 => lctr_reg(1),
      I3 => lctr_reg(0),
      I4 => lctr_reg(3),
      O => \plusOp__4\(4)
    );
\lctr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => lctr_reg(5),
      I1 => lctr_reg(3),
      I2 => lctr_reg(0),
      I3 => lctr_reg(1),
      I4 => lctr_reg(2),
      I5 => lctr_reg(4),
      O => \plusOp__4\(5)
    );
\lctr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => lctr_reg(5),
      I1 => lctr_reg(3),
      I2 => lctr_reg(0),
      I3 => lctr_reg(1),
      I4 => lctr_reg(2),
      I5 => lctr_reg(4),
      O => \lctr[7]_i_2_n_0\
    );
\lctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^stb\,
      D => dec_n_19,
      Q => lctr_reg(0),
      R => '0'
    );
\lctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^stb\,
      D => dec_n_18,
      Q => lctr_reg(1),
      R => '0'
    );
\lctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^stb\,
      D => dec_n_17,
      Q => lctr_reg(2),
      R => '0'
    );
\lctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^stb\,
      D => dec_n_16,
      Q => lctr_reg(3),
      R => '0'
    );
\lctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^stb\,
      D => \plusOp__4\(4),
      Q => lctr_reg(4),
      R => lctr
    );
\lctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^stb\,
      D => \plusOp__4\(5),
      Q => lctr_reg(5),
      R => lctr
    );
\lctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^stb\,
      D => dec_n_15,
      Q => lctr_reg(6),
      R => '0'
    );
\lctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \^stb\,
      D => dec_n_14,
      Q => lctr_reg(7),
      R => '0'
    );
lock_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => dec_n_36,
      Q => lock,
      R => '0'
    );
m_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => fr,
      I1 => rec_clk_locked,
      O => m_i_1_n_0
    );
m_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF00000000"
    )
        port map (
      I0 => ctr_reg(3),
      I1 => ctr_reg(0),
      I2 => ctr_reg(1),
      I3 => ctr_reg(2),
      I4 => ctr_reg(4),
      I5 => stb_0,
      O => ctr0
    );
m_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tr,
      I1 => m,
      O => m0
    );
m_reg: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => ctr0,
      D => m0,
      Q => m,
      S => m_i_1_n_0
    );
\rctr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => m,
      I1 => rec_clk_reset_INST_0_i_1_n_0,
      I2 => lock,
      O => SR(0)
    );
rec_clk_reset_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rec_clk_reset_INST_0_i_1_n_0,
      I1 => rec_clk_locked,
      I2 => m,
      O => rec_clk_reset
    );
rec_clk_reset_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => ctr_reg(4),
      I1 => ctr_reg(2),
      I2 => ctr_reg(1),
      I3 => ctr_reg(0),
      I4 => ctr_reg(3),
      O => rec_clk_reset_INST_0_i_1_n_0
    );
\sctr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AEA"
    )
        port map (
      I0 => fctr_reg(0),
      I1 => fr,
      I2 => rec_clk_locked,
      I3 => \sctr_reg_n_0_[0]\,
      O => \sctr[0]_i_1_n_0\
    );
\sctr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888BBBBBBB88888"
    )
        port map (
      I0 => fctr_reg(1),
      I1 => m_i_1_n_0,
      I2 => \sctr_reg_n_0_[3]\,
      I3 => \sctr_reg_n_0_[2]\,
      I4 => \sctr_reg_n_0_[0]\,
      I5 => \sctr_reg_n_0_[1]\,
      O => \sctr[1]_i_1_n_0\
    );
\sctr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AEAEA2AEA2AEA2A"
    )
        port map (
      I0 => fctr_reg(2),
      I1 => fr,
      I2 => rec_clk_locked,
      I3 => \sctr_reg_n_0_[2]\,
      I4 => \sctr_reg_n_0_[0]\,
      I5 => \sctr_reg_n_0_[1]\,
      O => \sctr[2]_i_1_n_0\
    );
\sctr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => fctr_reg(3),
      I1 => m_i_1_n_0,
      I2 => \sctr_reg_n_0_[3]\,
      I3 => \sctr_reg_n_0_[1]\,
      I4 => \sctr_reg_n_0_[0]\,
      I5 => \sctr_reg_n_0_[2]\,
      O => \sctr[3]_i_1_n_0\
    );
\sctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \sctr[0]_i_1_n_0\,
      Q => \sctr_reg_n_0_[0]\,
      R => '0'
    );
\sctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \sctr[1]_i_1_n_0\,
      Q => \sctr_reg_n_0_[1]\,
      R => '0'
    );
\sctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \sctr[2]_i_1_n_0\,
      Q => \sctr_reg_n_0_[2]\,
      R => '0'
    );
\sctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \sctr[3]_i_1_n_0\,
      Q => \sctr_reg_n_0_[3]\,
      R => '0'
    );
stbd_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => stb_0,
      Q => \^stb\,
      R => '0'
    );
\t_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => t(1),
      Q => t(0),
      S => c
    );
\t_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => t(2),
      Q => t(1),
      R => c
    );
\t_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => t(3),
      Q => t(2),
      R => c
    );
\t_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => t(4),
      Q => t(3),
      R => c
    );
\t_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => t(5),
      Q => t(4),
      R => c
    );
\t_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => t(6),
      Q => t(5),
      R => c
    );
\t_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => t(7),
      Q => t(6),
      R => c
    );
\t_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => t(8),
      Q => t(7),
      R => c
    );
\t_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => t(9),
      Q => t(8),
      R => c
    );
\t_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => t(0),
      Q => t(9),
      R => c
    );
tr_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => t(2),
      Q => tr,
      R => '0'
    );
\w_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => '1',
      D => wa(0),
      Q => w(0),
      R => '0'
    );
\w_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => '1',
      D => wa(1),
      Q => w(1),
      R => '0'
    );
\w_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => '1',
      D => wa(2),
      Q => w(2),
      R => '0'
    );
\w_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => '1',
      D => wa(3),
      Q => w(3),
      R => '0'
    );
\w_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => '1',
      D => wa(4),
      Q => w(4),
      R => '0'
    );
\w_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => '1',
      D => wa(5),
      Q => w(5),
      R => '0'
    );
\w_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => '1',
      D => wa(6),
      Q => w(6),
      R => '0'
    );
\w_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => '1',
      D => wa(7),
      Q => w(7),
      R => '0'
    );
\w_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => '1',
      D => wa(8),
      Q => w(8),
      R => '0'
    );
\w_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_clk,
      CE => '1',
      D => wa(9),
      Q => w(9),
      R => '0'
    );
\wa_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => wa(1),
      Q => wa(0),
      R => '0'
    );
\wa_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => wa(2),
      Q => wa(1),
      R => '0'
    );
\wa_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => wa(3),
      Q => wa(2),
      R => '0'
    );
\wa_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => wa(4),
      Q => wa(3),
      R => '0'
    );
\wa_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => wa(5),
      Q => wa(4),
      R => '0'
    );
\wa_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => wa(6),
      Q => wa(5),
      R => '0'
    );
\wa_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => wa(7),
      Q => wa(6),
      R => '0'
    );
\wa_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => wa(8),
      Q => wa(7),
      R => '0'
    );
\wa_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => wa(9),
      Q => wa(8),
      R => '0'
    );
\wa_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rec_d_clk,
      CE => '1',
      D => rec_d,
      Q => wa(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_0_1_pdts_rx is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \lfsr_q_reg[15]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \actr_reg[0]_0\ : out STD_LOGIC;
    sync_v : out STD_LOGIC;
    \sctr_reg[1]_0\ : out STD_LOGIC;
    pend_f_reg_0 : out STD_LOGIC;
    s_match_r_reg_0 : out STD_LOGIC;
    \sctr_reg[2]_0\ : out STD_LOGIC;
    \err_reg[0]_0\ : out STD_LOGIC;
    rec_clk : in STD_LOGIC;
    s_match : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \lfsr_q_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    k : in STD_LOGIC;
    \lfsr_q_reg[0]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_0\ : in STD_LOGIC;
    slen : in STD_LOGIC_VECTOR ( 0 to 0 );
    \err_reg[2]_0\ : in STD_LOGIC;
    stb : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_err_f_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ts_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_0_1_pdts_rx : entity is "pdts_rx";
end design_1_pdts_endpoint_0_1_pdts_rx;

architecture STRUCTURE of design_1_pdts_endpoint_0_1_pdts_rx is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal actr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^actr_reg[0]_0\ : STD_LOGIC;
  signal cksum_n_1 : STD_LOGIC;
  signal cksum_n_13 : STD_LOGIC;
  signal err : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \err[0]_i_2_n_0\ : STD_LOGIC;
  signal \err[1]_i_2_n_0\ : STD_LOGIC;
  signal \err[1]_i_3_n_0\ : STD_LOGIC;
  signal \err[2]_i_2_n_0\ : STD_LOGIC;
  signal \err[2]_i_3_n_0\ : STD_LOGIC;
  signal err_c : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pend : STD_LOGIC;
  signal pend0 : STD_LOGIC;
  signal pend_f : STD_LOGIC;
  signal pend_f0 : STD_LOGIC;
  signal pend_i_2_n_0 : STD_LOGIC;
  signal \plusOp__5\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \plusOp__6\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s_match_r_reg_n_0 : STD_LOGIC;
  signal sctr0 : STD_LOGIC;
  signal \sctr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal sctr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^sctr_reg[1]_0\ : STD_LOGIC;
  signal slen_r : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \slen_r[2]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sync_v_INST_0_i_1_n_0 : STD_LOGIC;
  signal sync_v_INST_0_i_4_n_0 : STD_LOGIC;
  signal ts : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ts[3]_i_1_n_0\ : STD_LOGIC;
  signal \ts[3]_i_2_n_0\ : STD_LOGIC;
  signal \vctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \vctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \vctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \vctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \vctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \vctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \vctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \vctr_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \actr[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \actr[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \actr[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \actr[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \actr[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \err[0]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \err[1]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \err[2]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \err[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sctr[0]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sctr[1]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sctr[2]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sctr[3]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sctr[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sync_v_INST_0_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sync_v_INST_0_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ts[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vctr[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vctr[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vctr[3]_i_1\ : label is "soft_lutpair8";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \actr_reg[0]_0\ <= \^actr_reg[0]_0\;
  \sctr_reg[1]_0\ <= \^sctr_reg[1]_0\;
\actr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => actr_reg(0),
      O => \plusOp__6\(0)
    );
\actr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => actr_reg(0),
      I1 => actr_reg(1),
      O => \plusOp__6\(1)
    );
\actr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => actr_reg(2),
      I1 => actr_reg(1),
      I2 => actr_reg(0),
      O => \plusOp__6\(2)
    );
\actr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => actr_reg(3),
      I1 => actr_reg(0),
      I2 => actr_reg(1),
      I3 => actr_reg(2),
      O => \plusOp__6\(3)
    );
\actr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => actr_reg(4),
      I1 => actr_reg(2),
      I2 => actr_reg(1),
      I3 => actr_reg(0),
      I4 => actr_reg(3),
      O => \plusOp__6\(4)
    );
\actr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => E(0),
      D => \plusOp__6\(0),
      Q => actr_reg(0),
      R => \lfsr_q_reg[0]\
    );
\actr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => E(0),
      D => \plusOp__6\(1),
      Q => actr_reg(1),
      R => \lfsr_q_reg[0]\
    );
\actr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => E(0),
      D => \plusOp__6\(2),
      Q => actr_reg(2),
      R => \lfsr_q_reg[0]\
    );
\actr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => E(0),
      D => \plusOp__6\(3),
      Q => actr_reg(3),
      R => \lfsr_q_reg[0]\
    );
\actr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => E(0),
      D => \plusOp__6\(4),
      Q => actr_reg(4),
      R => \lfsr_q_reg[0]\
    );
cksum: entity work.design_1_pdts_endpoint_0_1_pdts_cksum
     port map (
      D(1) => state(1),
      D(0) => cksum_n_1,
      E(0) => cksum_n_13,
      Q(1 downto 0) => \^q\(1 downto 0),
      SR(0) => SR(0),
      err_c(0) => err_c(2),
      \err_reg[0]\ => \err[0]_i_2_n_0\,
      \err_reg[0]_0\ => \^actr_reg[0]_0\,
      k => k,
      \lfsr_q_reg[0]\ => \lfsr_q_reg[0]\,
      \lfsr_q_reg[15]\(9 downto 0) => \lfsr_q_reg[15]\(9 downto 0),
      \lfsr_q_reg[15]_0\(0) => E(0),
      \lfsr_q_reg[15]_1\(9 downto 0) => D(9 downto 0),
      \lfsr_q_reg[9]\(0) => \lfsr_q_reg[9]\(0),
      rec_clk => rec_clk,
      \state_reg[0]\ => \err[1]_i_2_n_0\,
      \state_reg[0]_0\ => \state_reg[0]_0\,
      \state_reg[1]\(0) => err_c(0)
    );
\err[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222022202222223"
    )
        port map (
      I0 => slen(0),
      I1 => \err[2]_i_3_n_0\,
      I2 => sctr_reg(3),
      I3 => sctr_reg(2),
      I4 => sctr_reg(0),
      I5 => sctr_reg(1),
      O => \err[0]_i_2_n_0\
    );
\err[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFE0"
    )
        port map (
      I0 => actr_reg(0),
      I1 => actr_reg(1),
      I2 => actr_reg(2),
      I3 => actr_reg(4),
      I4 => actr_reg(3),
      O => \^actr_reg[0]_0\
    );
\err[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => \err[1]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => err_c(2),
      O => err_c(1)
    );
\err[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000015FF"
    )
        port map (
      I0 => actr_reg(3),
      I1 => actr_reg(2),
      I2 => actr_reg(1),
      I3 => actr_reg(4),
      I4 => \err[1]_i_3_n_0\,
      O => \err[1]_i_2_n_0\
    );
\err[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => sctr_reg(4),
      I1 => sctr_reg(3),
      I2 => sctr_reg(1),
      I3 => sctr_reg(2),
      O => \err[1]_i_3_n_0\
    );
\err[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00BF0002"
    )
        port map (
      I0 => \err[2]_i_2_n_0\,
      I1 => sctr_reg(2),
      I2 => sctr_reg(3),
      I3 => \err[2]_i_3_n_0\,
      I4 => slen(0),
      I5 => \err_reg[2]_0\,
      O => err_c(2)
    );
\err[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sctr_reg(1),
      I1 => sctr_reg(0),
      O => \err[2]_i_2_n_0\
    );
\err[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => k,
      I1 => stb,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => sctr_reg(4),
      O => \err[2]_i_3_n_0\
    );
\err_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => err_c(0),
      Q => err(0),
      R => '0'
    );
\err_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => err_c(1),
      Q => err(1),
      R => '0'
    );
\err_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => err_c(2),
      Q => err(2),
      R => '0'
    );
\evtctr_i[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200000000000"
    )
        port map (
      I0 => s_match_r_reg_n_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => stb,
      I4 => pend,
      I5 => sync_v_INST_0_i_1_n_0,
      O => s_match_r_reg_0
    );
pend_f_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0080"
    )
        port map (
      I0 => pend_i_2_n_0,
      I1 => sctr0,
      I2 => s_match_r_reg_n_0,
      I3 => \^sctr_reg[1]_0\,
      I4 => pend_f,
      O => pend_f0
    );
pend_f_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => pend_f0,
      Q => pend_f,
      R => '0'
    );
pend_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200000000000"
    )
        port map (
      I0 => s_match_r_reg_n_0,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => stb,
      I4 => pend,
      I5 => pend_i_2_n_0,
      O => pend0
    );
pend_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4554555555554554"
    )
        port map (
      I0 => \state_reg[0]_1\(0),
      I1 => sync_v_INST_0_i_4_n_0,
      I2 => ts(1),
      I3 => \vctr_reg_n_0_[1]\,
      I4 => ts(0),
      I5 => \vctr_reg_n_0_[0]\,
      O => pend_i_2_n_0
    );
pend_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => pend0,
      Q => pend,
      R => '0'
    );
rx_err_f_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => err(0),
      I1 => err(2),
      I2 => err(1),
      I3 => rx_err_f_reg(0),
      O => \err_reg[0]_0\
    );
s_match_r_reg: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \ts[3]_i_1_n_0\,
      D => s_match,
      Q => s_match_r_reg_n_0,
      R => '0'
    );
\sctr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sctr_reg(0),
      O => \sctr[0]_i_1__0_n_0\
    );
\sctr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sctr_reg(1),
      I1 => sctr_reg(0),
      O => \plusOp__5\(1)
    );
\sctr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => sctr_reg(2),
      I1 => sctr_reg(0),
      I2 => sctr_reg(1),
      O => \plusOp__5\(2)
    );
\sctr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => sctr_reg(3),
      I1 => sctr_reg(1),
      I2 => sctr_reg(0),
      I3 => sctr_reg(2),
      O => \plusOp__5\(3)
    );
\sctr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => sctr_reg(4),
      I1 => sctr_reg(2),
      I2 => sctr_reg(3),
      I3 => sctr_reg(1),
      I4 => sctr_reg(0),
      O => \plusOp__5\(4)
    );
\sctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => sctr0,
      D => \sctr[0]_i_1__0_n_0\,
      Q => sctr_reg(0),
      R => SR(0)
    );
\sctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => sctr0,
      D => \plusOp__5\(1),
      Q => sctr_reg(1),
      R => SR(0)
    );
\sctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => sctr0,
      D => \plusOp__5\(2),
      Q => sctr_reg(2),
      R => SR(0)
    );
\sctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => sctr0,
      D => \plusOp__5\(3),
      Q => sctr_reg(3),
      R => SR(0)
    );
\sctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => sctr0,
      D => \plusOp__5\(4),
      Q => sctr_reg(4),
      R => SR(0)
    );
\slen_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => slen(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^sctr_reg[1]_0\,
      I4 => slen_r(2),
      O => \slen_r[2]_i_1_n_0\
    );
\slen_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \slen_r[2]_i_1_n_0\,
      Q => slen_r(2),
      R => '0'
    );
\sr[95]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5545555555555555"
    )
        port map (
      I0 => pend_f,
      I1 => \^sctr_reg[1]_0\,
      I2 => s_match_r_reg_n_0,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => stb,
      O => pend_f_reg_0
    );
\state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => sctr_reg(2),
      I1 => sctr_reg(3),
      I2 => slen_r(2),
      I3 => sctr_reg(1),
      I4 => sctr_reg(0),
      I5 => sctr_reg(4),
      O => \sctr_reg[2]_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => cksum_n_13,
      D => cksum_n_1,
      Q => \^q\(0),
      R => \state_reg[0]_1\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => cksum_n_13,
      D => state(1),
      Q => \^q\(1),
      R => \state_reg[0]_1\(0)
    );
sync_v_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888A8880000A000"
    )
        port map (
      I0 => sync_v_INST_0_i_1_n_0,
      I1 => pend,
      I2 => sctr0,
      I3 => s_match_r_reg_n_0,
      I4 => \^sctr_reg[1]_0\,
      I5 => pend_f,
      O => sync_v
    );
sync_v_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \vctr_reg_n_0_[0]\,
      I1 => ts(0),
      I2 => \vctr_reg_n_0_[1]\,
      I3 => ts(1),
      I4 => sync_v_INST_0_i_4_n_0,
      O => sync_v_INST_0_i_1_n_0
    );
sync_v_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => stb,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => sctr0
    );
sync_v_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => sctr_reg(1),
      I1 => sctr_reg(0),
      I2 => sctr_reg(4),
      I3 => sctr_reg(3),
      I4 => sctr_reg(2),
      O => \^sctr_reg[1]_0\
    );
sync_v_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => ts(2),
      I1 => \vctr_reg_n_0_[2]\,
      I2 => ts(3),
      I3 => \vctr_reg_n_0_[3]\,
      O => sync_v_INST_0_i_4_n_0
    );
\ts[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sctr_reg(1),
      I1 => sctr_reg(0),
      I2 => sctr_reg(2),
      I3 => sctr_reg(3),
      I4 => \ts[3]_i_2_n_0\,
      I5 => sctr_reg(4),
      O => \ts[3]_i_1_n_0\
    );
\ts[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \ts[3]_i_2_n_0\
    );
\ts_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \ts[3]_i_1_n_0\,
      D => \ts_reg[3]_0\(0),
      Q => ts(0),
      R => '0'
    );
\ts_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \ts[3]_i_1_n_0\,
      D => \ts_reg[3]_0\(1),
      Q => ts(1),
      R => '0'
    );
\ts_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \ts[3]_i_1_n_0\,
      D => \ts_reg[3]_0\(2),
      Q => ts(2),
      R => '0'
    );
\ts_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => \ts[3]_i_1_n_0\,
      D => \ts_reg[3]_0\(3),
      Q => ts(3),
      R => '0'
    );
\vctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \vctr_reg_n_0_[0]\,
      O => \vctr[0]_i_1_n_0\
    );
\vctr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EF0"
    )
        port map (
      I0 => \vctr_reg_n_0_[2]\,
      I1 => \vctr_reg_n_0_[3]\,
      I2 => \vctr_reg_n_0_[1]\,
      I3 => \vctr_reg_n_0_[0]\,
      O => \vctr[1]_i_1_n_0\
    );
\vctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \vctr_reg_n_0_[2]\,
      I1 => \vctr_reg_n_0_[1]\,
      I2 => \vctr_reg_n_0_[0]\,
      O => \vctr[2]_i_1_n_0\
    );
\vctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \vctr_reg_n_0_[3]\,
      I1 => \vctr_reg_n_0_[0]\,
      I2 => \vctr_reg_n_0_[1]\,
      I3 => \vctr_reg_n_0_[2]\,
      O => \vctr[3]_i_1_n_0\
    );
\vctr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => '1',
      D => \vctr[0]_i_1_n_0\,
      Q => \vctr_reg_n_0_[0]\,
      S => stb
    );
\vctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \vctr[1]_i_1_n_0\,
      Q => \vctr_reg_n_0_[1]\,
      R => stb
    );
\vctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \vctr[2]_i_1_n_0\,
      Q => \vctr_reg_n_0_[2]\,
      R => stb
    );
\vctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \vctr[3]_i_1_n_0\,
      Q => \vctr_reg_n_0_[3]\,
      R => stb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_0_1_pdts_endpoint is
  port (
    lock_reg : out STD_LOGIC;
    evtctr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \q_reg[7]\ : out STD_LOGIC;
    rst : out STD_LOGIC;
    sync : out STD_LOGIC_VECTOR ( 2 downto 0 );
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rec_clk_reset : out STD_LOGIC;
    sync_v : out STD_LOGIC;
    srst : in STD_LOGIC;
    sclk : in STD_LOGIC;
    rec_clk : in STD_LOGIC;
    rec_d_clk : in STD_LOGIC;
    rec_d : in STD_LOGIC;
    sfp_los : in STD_LOGIC;
    cdr_los : in STD_LOGIC;
    cdr_lol : in STD_LOGIC;
    rec_clk_locked : in STD_LOGIC;
    tgrp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_0_1_pdts_endpoint : entity is "pdts_endpoint";
end design_1_pdts_endpoint_0_1_pdts_endpoint;

architecture STRUCTURE of design_1_pdts_endpoint_0_1_pdts_endpoint is
  signal \cksum/crc/lfsr_c\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cstb : STD_LOGIC;
  signal d : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal di : STD_LOGIC_VECTOR ( 7 to 7 );
  signal k : STD_LOGIC;
  signal ks : STD_LOGIC;
  signal \^lock_reg\ : STD_LOGIC;
  signal pkt_end : STD_LOGIC;
  signal \^q_reg[7]\ : STD_LOGIC;
  signal rec_rst : STD_LOGIC;
  signal \^rst\ : STD_LOGIC;
  signal rx_err_f : STD_LOGIC;
  signal rx_n_0 : STD_LOGIC;
  signal rx_n_1 : STD_LOGIC;
  signal rx_n_10 : STD_LOGIC;
  signal rx_n_11 : STD_LOGIC;
  signal rx_n_12 : STD_LOGIC;
  signal rx_n_14 : STD_LOGIC;
  signal rx_n_15 : STD_LOGIC;
  signal rx_n_16 : STD_LOGIC;
  signal rx_n_17 : STD_LOGIC;
  signal rx_n_18 : STD_LOGIC;
  signal rx_n_2 : STD_LOGIC;
  signal rx_n_3 : STD_LOGIC;
  signal rx_n_4 : STD_LOGIC;
  signal rx_n_5 : STD_LOGIC;
  signal rx_n_6 : STD_LOGIC;
  signal rx_n_7 : STD_LOGIC;
  signal rx_n_8 : STD_LOGIC;
  signal rx_n_9 : STD_LOGIC;
  signal rxphy_aligned : STD_LOGIC;
  signal rxphy_locked : STD_LOGIC;
  signal rxphy_n_13 : STD_LOGIC;
  signal rxphy_n_23 : STD_LOGIC;
  signal rxphy_n_27 : STD_LOGIC;
  signal rxphy_n_29 : STD_LOGIC;
  signal rxphy_n_31 : STD_LOGIC;
  signal rxphy_n_8 : STD_LOGIC;
  signal rxphy_rst : STD_LOGIC;
  signal s_match : STD_LOGIC;
  signal slen : STD_LOGIC_VECTOR ( 3 to 3 );
  signal stb : STD_LOGIC;
  signal \^sync\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sync_v\ : STD_LOGIC;
begin
  lock_reg <= \^lock_reg\;
  \q_reg[7]\ <= \^q_reg[7]\;
  rst <= \^rst\;
  sync(2 downto 0) <= \^sync\(2 downto 0);
  sync_v <= \^sync_v\;
rx: entity work.design_1_pdts_endpoint_0_1_pdts_rx
     port map (
      D(9) => \cksum/crc/lfsr_c\(15),
      D(8 downto 4) => \cksum/crc/lfsr_c\(8 downto 4),
      D(3) => rxphy_n_8,
      D(2 downto 0) => \cksum/crc/lfsr_c\(2 downto 0),
      E(0) => cstb,
      Q(1) => rx_n_0,
      Q(0) => rx_n_1,
      SR(0) => ks,
      \actr_reg[0]_0\ => rx_n_12,
      \err_reg[0]_0\ => rx_n_18,
      \err_reg[2]_0\ => rxphy_n_31,
      k => k,
      \lfsr_q_reg[0]\ => rxphy_n_13,
      \lfsr_q_reg[15]\(9) => rx_n_2,
      \lfsr_q_reg[15]\(8) => rx_n_3,
      \lfsr_q_reg[15]\(7) => rx_n_4,
      \lfsr_q_reg[15]\(6) => rx_n_5,
      \lfsr_q_reg[15]\(5) => rx_n_6,
      \lfsr_q_reg[15]\(4) => rx_n_7,
      \lfsr_q_reg[15]\(3) => rx_n_8,
      \lfsr_q_reg[15]\(2) => rx_n_9,
      \lfsr_q_reg[15]\(1) => rx_n_10,
      \lfsr_q_reg[15]\(0) => rx_n_11,
      \lfsr_q_reg[9]\(0) => di(7),
      pend_f_reg_0 => rx_n_15,
      rec_clk => rec_clk,
      rx_err_f_reg(0) => rx_err_f,
      s_match => s_match,
      s_match_r_reg_0 => rx_n_16,
      \sctr_reg[1]_0\ => rx_n_14,
      \sctr_reg[2]_0\ => rx_n_17,
      slen(0) => slen(3),
      \state_reg[0]_0\ => rxphy_n_27,
      \state_reg[0]_1\(0) => \^rst\,
      stb => stb,
      sync_v => \^sync_v\,
      \ts_reg[3]_0\(3 downto 1) => \^sync\(2 downto 0),
      \ts_reg[3]_0\(0) => \^q_reg[7]\
    );
rxphy: entity work.design_1_pdts_endpoint_0_1_pdts_rx_phy
     port map (
      D(9) => \cksum/crc/lfsr_c\(15),
      D(8 downto 4) => \cksum/crc/lfsr_c\(8 downto 4),
      D(3) => rxphy_n_8,
      D(2 downto 0) => \cksum/crc/lfsr_c\(2 downto 0),
      E(0) => cstb,
      Q(0) => di(7),
      SR(0) => rxphy_n_23,
      \err_reg[2]\ => rx_n_12,
      \evtctr_i_reg[31]\ => rx_n_16,
      k => k,
      k_reg(0) => ks,
      \lctr_reg[0]_0\(0) => rxphy_rst,
      \lfsr_q_reg[15]\(1) => rx_n_0,
      \lfsr_q_reg[15]\(0) => rx_n_1,
      \lfsr_q_reg[8]\(9) => rx_n_2,
      \lfsr_q_reg[8]\(8) => rx_n_3,
      \lfsr_q_reg[8]\(7) => rx_n_4,
      \lfsr_q_reg[8]\(6) => rx_n_5,
      \lfsr_q_reg[8]\(5) => rx_n_6,
      \lfsr_q_reg[8]\(4) => rx_n_7,
      \lfsr_q_reg[8]\(3) => rx_n_8,
      \lfsr_q_reg[8]\(2) => rx_n_9,
      \lfsr_q_reg[8]\(1) => rx_n_10,
      \lfsr_q_reg[8]\(0) => rx_n_11,
      lock_reg_0(1) => rxphy_locked,
      lock_reg_0(0) => rxphy_aligned,
      \out\ => rec_rst,
      pkt_end => pkt_end,
      pkt_end_reg => rxphy_n_29,
      \q_reg[3]\ => rxphy_n_13,
      \q_reg[7]\(7 downto 4) => d(7 downto 4),
      \q_reg[7]\(3 downto 1) => \^sync\(2 downto 0),
      \q_reg[7]\(0) => \^q_reg[7]\,
      rec_clk => rec_clk,
      rec_clk_locked => rec_clk_locked,
      rec_clk_reset => rec_clk_reset,
      rec_d => rec_d,
      rec_d_clk => rec_d_clk,
      s_match => s_match,
      sclk => sclk,
      slen(0) => slen(3),
      \state_reg[0]\ => rx_n_17,
      \state_reg[0]_0\ => rx_n_14,
      \state_reg[1]\ => rxphy_n_31,
      stb => stb,
      stbd_reg_0 => rxphy_n_27,
      tgrp(1 downto 0) => tgrp(1 downto 0)
    );
startup: entity work.design_1_pdts_endpoint_0_1_pdts_ep_startup
     port map (
      D(0) => rx_err_f,
      SR(0) => rxphy_n_23,
      cdr_lol => cdr_lol,
      cdr_los => cdr_los,
      \da_reg[3]\(2) => \^lock_reg\,
      \da_reg[3]\(1) => rxphy_locked,
      \da_reg[3]\(0) => rxphy_aligned,
      \out\ => rec_rst,
      \q_reg[1]\(1) => \^rst\,
      \q_reg[1]\(0) => rxphy_rst,
      rec_clk => rec_clk,
      rec_d_clk => rec_d_clk,
      rx_err_f_reg_0 => rx_n_18,
      sclk => sclk,
      sfp_los => sfp_los,
      srst => srst,
      stat(3 downto 0) => stat(3 downto 0)
    );
ts: entity work.design_1_pdts_endpoint_0_1_pdts_tstamp
     port map (
      D(7 downto 4) => d(7 downto 4),
      D(3 downto 1) => \^sync\(2 downto 0),
      D(0) => \^q_reg[7]\,
      Q(63 downto 0) => tstamp(63 downto 0),
      SR(0) => \^rst\,
      evtctr(31 downto 0) => evtctr(31 downto 0),
      \evtctr_i_reg[31]_0\ => rxphy_n_29,
      lock_reg_0(0) => \^lock_reg\,
      pkt_end => pkt_end,
      rec_clk => rec_clk,
      slen(0) => slen(3),
      \sr_reg[9]_0\ => rx_n_15,
      \sr_reg[9]_1\ => rx_n_16,
      sync_v => \^sync_v\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_0_1 is
  port (
    sclk : in STD_LOGIC;
    srst : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tgrp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rec_clk : in STD_LOGIC;
    rec_d_clk : in STD_LOGIC;
    rec_d : in STD_LOGIC;
    rec_clk_locked : in STD_LOGIC;
    rec_clk_reset : out STD_LOGIC;
    sfp_los : in STD_LOGIC;
    cdr_los : in STD_LOGIC;
    cdr_lol : in STD_LOGIC;
    clk : out STD_LOGIC;
    rst : out STD_LOGIC;
    rdy : out STD_LOGIC;
    sync : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sync_v : out STD_LOGIC;
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    evtctr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pdts_endpoint_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pdts_endpoint_0_1 : entity is "design_1_pdts_endpoint_0_1,pdts_endpoint,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pdts_endpoint_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pdts_endpoint_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pdts_endpoint_0_1 : entity is "pdts_endpoint,Vivado 2020.1.1_AR73018";
end design_1_pdts_endpoint_0_1;

architecture STRUCTURE of design_1_pdts_endpoint_0_1 is
  signal \^rec_clk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_pdts_endpoint_0_1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rec_clk : signal is "xilinx.com:signal:clock:1.0 rec_clk CLK";
  attribute X_INTERFACE_PARAMETER of rec_clk : signal is "XIL_INTERFACENAME rec_clk, ASSOCIATED_RESET rec_clk_reset, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rec_clk_reset : signal is "xilinx.com:signal:reset:1.0 rec_clk_reset RST";
  attribute X_INTERFACE_PARAMETER of rec_clk_reset : signal is "XIL_INTERFACENAME rec_clk_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rec_d_clk : signal is "xilinx.com:signal:clock:1.0 rec_d_clk CLK";
  attribute X_INTERFACE_PARAMETER of rec_d_clk : signal is "XIL_INTERFACENAME rec_d_clk, FREQ_HZ 312500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ts_rec_d_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^rec_clk\ <= rec_clk;
  clk <= \^rec_clk\;
inst: entity work.design_1_pdts_endpoint_0_1_pdts_endpoint
     port map (
      cdr_lol => cdr_lol,
      cdr_los => cdr_los,
      evtctr(31 downto 0) => evtctr(31 downto 0),
      lock_reg => rdy,
      \q_reg[7]\ => sync(0),
      rec_clk => \^rec_clk\,
      rec_clk_locked => rec_clk_locked,
      rec_clk_reset => rec_clk_reset,
      rec_d => rec_d,
      rec_d_clk => rec_d_clk,
      rst => rst,
      sclk => sclk,
      sfp_los => sfp_los,
      srst => srst,
      stat(3 downto 0) => stat(3 downto 0),
      sync(2 downto 0) => sync(3 downto 1),
      sync_v => sync_v,
      tgrp(1 downto 0) => tgrp(1 downto 0),
      tstamp(63 downto 0) => tstamp(63 downto 0)
    );
end STRUCTURE;
