-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Dec  6 10:41:56 2021
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_pdts_endpoint_stdlog_0_0/design_1_pdts_endpoint_stdlog_0_0_sim_netlist.vhdl
-- Design      : design_1_pdts_endpoint_stdlog_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16 is
  port (
    d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    smode_r_reg : out STD_LOGIC;
    \actr_i_reg[7]\ : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_tx_inferred_i_1 : in STD_LOGIC;
    d_tx_inferred_i_7 : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    d_tx_inferred_i_7_0 : in STD_LOGIC;
    smode_r : in STD_LOGIC;
    active : in STD_LOGIC;
    s_stb : in STD_LOGIC;
    \lfsr_q_reg[0]_0\ : in STD_LOGIC;
    s_first : in STD_LOGIC;
    s_ok : in STD_LOGIC;
    \acmd_out[d]1\ : in STD_LOGIC;
    \lfsr_q_reg[8]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \lfsr_q_reg[0]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txphy_i_31_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txphy_i_31_1 : in STD_LOGIC;
    stbo : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16 : entity is "outputlogic_crc16";
end design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16 is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^actr_i_reg[7]\ : STD_LOGIC;
  signal cstb : STD_LOGIC;
  signal csum : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal lfsr_c : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lfsr_q[15]_i_4_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_5__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_6_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[5]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[6]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[9]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[9]_i_3_n_0\ : STD_LOGIC;
  signal \lfsr_q[9]_i_4_n_0\ : STD_LOGIC;
  signal p_8_in9_in : STD_LOGIC;
  signal \q_a__47\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^smode_r_reg\ : STD_LOGIC;
  signal txphy_i_22_n_0 : STD_LOGIC;
  signal txphy_i_25_n_0 : STD_LOGIC;
  signal txphy_i_26_n_0 : STD_LOGIC;
  signal txphy_i_27_n_0 : STD_LOGIC;
  signal txphy_i_28_n_0 : STD_LOGIC;
  signal txphy_i_29_n_0 : STD_LOGIC;
  signal txphy_i_30_n_0 : STD_LOGIC;
  signal txphy_i_31_n_0 : STD_LOGIC;
  signal txphy_i_32_n_0 : STD_LOGIC;
  signal txphy_i_34_n_0 : STD_LOGIC;
  signal txphy_i_35_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_4\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_5__0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_6\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \lfsr_q[2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \lfsr_q[3]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \lfsr_q[5]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \lfsr_q[7]_i_1__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \lfsr_q[8]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \lfsr_q[9]_i_3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \lfsr_q[9]_i_4\ : label is "soft_lutpair71";
begin
  SS(0) <= \^ss\(0);
  \actr_i_reg[7]\ <= \^actr_i_reg[7]\;
  smode_r_reg <= \^smode_r_reg\;
\FSM_sequential_state[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => txphy_i_31_0(7),
      I1 => txphy_i_31_0(6),
      I2 => txphy_i_31_1,
      I3 => txphy_i_31_0(5),
      O => \^actr_i_reg[7]\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => smode_r,
      I1 => active,
      I2 => s_stb,
      I3 => \lfsr_q_reg[0]_0\,
      I4 => s_first,
      I5 => s_ok,
      O => \^smode_r_reg\
    );
\lfsr_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[15]_i_4_n_0\,
      I1 => p_8_in9_in,
      I2 => \lfsr_q[15]_i_6_n_0\,
      I3 => \q_a__47\(0),
      I4 => csum(10),
      I5 => lfsr_c(5),
      O => lfsr_c(0)
    );
\lfsr_q[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => csum(8),
      I1 => csum(9),
      O => p_8_in9_in
    );
\lfsr_q[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \lfsr_q_reg[0]_1\(2),
      I1 => \lfsr_q_reg[0]_1\(1),
      I2 => \lfsr_q_reg[0]_1\(0),
      O => \^ss\(0)
    );
\lfsr_q[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => \lfsr_q_reg[0]_1\(2),
      I1 => \lfsr_q_reg[0]_1\(1),
      I2 => \^smode_r_reg\,
      I3 => stbo,
      O => cstb
    );
\lfsr_q[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[15]_i_4_n_0\,
      I1 => \lfsr_q[15]_i_5__0_n_0\,
      I2 => \lfsr_q[15]_i_6_n_0\,
      I3 => \q_a__47\(0),
      I4 => csum(10),
      I5 => lfsr_c(5),
      O => lfsr_c(15)
    );
\lfsr_q[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q_a__47\(2),
      I1 => \lfsr_q[9]_i_2_n_0\,
      O => \lfsr_q[15]_i_4_n_0\
    );
\lfsr_q[15]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => csum(7),
      I1 => csum(9),
      I2 => csum(8),
      O => \lfsr_q[15]_i_5__0_n_0\
    );
\lfsr_q[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \q_a__47\(6),
      I1 => csum(13),
      I2 => \q_a__47\(1),
      I3 => csum(14),
      I4 => \q_a__47\(5),
      O => \lfsr_q[15]_i_6_n_0\
    );
\lfsr_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \lfsr_q[1]_i_2_n_0\,
      I1 => \lfsr_q[6]_i_2_n_0\,
      I2 => \lfsr_q[15]_i_6_n_0\,
      I3 => \lfsr_q[9]_i_2_n_0\,
      I4 => \lfsr_q[5]_i_2_n_0\,
      O => lfsr_c(1)
    );
\lfsr_q[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => csum(9),
      I1 => csum(10),
      I2 => \q_a__47\(2),
      O => \lfsr_q[1]_i_2_n_0\
    );
\lfsr_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \q_a__47\(1),
      I1 => csum(8),
      I2 => csum(9),
      I3 => \q_a__47\(0),
      O => lfsr_c(2)
    );
\lfsr_q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \q_a__47\(1),
      I1 => \q_a__47\(2),
      I2 => csum(10),
      I3 => csum(9),
      O => lfsr_c(3)
    );
\lfsr_q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => csum(10),
      I1 => \lfsr_q[5]_i_2_n_0\,
      I2 => \q_a__47\(2),
      O => lfsr_c(4)
    );
\lfsr_q[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr_q[5]_i_2_n_0\,
      I1 => \lfsr_q[6]_i_2_n_0\,
      O => lfsr_c(5)
    );
\lfsr_q[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55A655A655A6A6A6"
    )
        port map (
      I0 => csum(11),
      I1 => txphy_i_28_n_0,
      I2 => \lfsr_q[9]_i_3_n_0\,
      I3 => \lfsr_q[9]_i_4_n_0\,
      I4 => \lfsr_q_reg[8]_0\(3),
      I5 => \acmd_out[d]1\,
      O => \lfsr_q[5]_i_2_n_0\
    );
\lfsr_q[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_a__47\(5),
      I1 => csum(13),
      I2 => \lfsr_q[6]_i_2_n_0\,
      O => lfsr_c(6)
    );
\lfsr_q[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55A655A655A6A6A6"
    )
        port map (
      I0 => csum(12),
      I1 => txphy_i_27_n_0,
      I2 => \lfsr_q[9]_i_3_n_0\,
      I3 => \lfsr_q[9]_i_4_n_0\,
      I4 => \lfsr_q_reg[8]_0\(4),
      I5 => \acmd_out[d]1\,
      O => \lfsr_q[6]_i_2_n_0\
    );
\lfsr_q[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \q_a__47\(5),
      I1 => csum(13),
      I2 => \q_a__47\(6),
      I3 => csum(14),
      O => lfsr_c(7)
    );
\lfsr_q[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \q_a__47\(6),
      I1 => csum(14),
      I2 => \lfsr_q[9]_i_2_n_0\,
      I3 => csum(0),
      O => lfsr_c(8)
    );
\lfsr_q[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => csum(1),
      I1 => \lfsr_q[9]_i_2_n_0\,
      O => lfsr_c(9)
    );
\lfsr_q[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55A655A655A6A6A6"
    )
        port map (
      I0 => csum(15),
      I1 => txphy_i_22_n_0,
      I2 => \lfsr_q[9]_i_3_n_0\,
      I3 => \lfsr_q[9]_i_4_n_0\,
      I4 => \lfsr_q_reg[8]_0\(7),
      I5 => \acmd_out[d]1\,
      O => \lfsr_q[9]_i_2_n_0\
    );
\lfsr_q[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lfsr_q_reg[0]_1\(1),
      I1 => \lfsr_q_reg[0]_1\(0),
      O => \lfsr_q[9]_i_3_n_0\
    );
\lfsr_q[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \lfsr_q_reg[0]_1\(0),
      I1 => \lfsr_q_reg[0]_1\(1),
      I2 => \lfsr_q_reg[0]_1\(2),
      O => \lfsr_q[9]_i_4_n_0\
    );
\lfsr_q_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => lfsr_c(0),
      Q => csum(0),
      S => \^ss\(0)
    );
\lfsr_q_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => csum(2),
      Q => csum(10),
      S => \^ss\(0)
    );
\lfsr_q_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => csum(3),
      Q => csum(11),
      S => \^ss\(0)
    );
\lfsr_q_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => csum(4),
      Q => csum(12),
      S => \^ss\(0)
    );
\lfsr_q_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => csum(5),
      Q => csum(13),
      S => \^ss\(0)
    );
\lfsr_q_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => csum(6),
      Q => csum(14),
      S => \^ss\(0)
    );
\lfsr_q_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => lfsr_c(15),
      Q => csum(15),
      S => \^ss\(0)
    );
\lfsr_q_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => lfsr_c(1),
      Q => csum(1),
      S => \^ss\(0)
    );
\lfsr_q_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => lfsr_c(2),
      Q => csum(2),
      S => \^ss\(0)
    );
\lfsr_q_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => lfsr_c(3),
      Q => csum(3),
      S => \^ss\(0)
    );
\lfsr_q_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => lfsr_c(4),
      Q => csum(4),
      S => \^ss\(0)
    );
\lfsr_q_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => lfsr_c(5),
      Q => csum(5),
      S => \^ss\(0)
    );
\lfsr_q_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => lfsr_c(6),
      Q => csum(6),
      S => \^ss\(0)
    );
\lfsr_q_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => lfsr_c(7),
      Q => csum(7),
      S => \^ss\(0)
    );
\lfsr_q_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => lfsr_c(8),
      Q => csum(8),
      S => \^ss\(0)
    );
\lfsr_q_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => cstb,
      D => lfsr_c(9),
      Q => csum(9),
      S => \^ss\(0)
    );
txphy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0C0C0EAEAEAEA"
    )
        port map (
      I0 => \q_a__47\(7),
      I1 => d_tx_inferred_i_7,
      I2 => sw(6),
      I3 => Q(6),
      I4 => d_tx_inferred_i_7_0,
      I5 => \^smode_r_reg\,
      O => d(7)
    );
txphy_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00EFF00E00E00"
    )
        port map (
      I0 => \acmd_out[d]1\,
      I1 => \lfsr_q_reg[8]_0\(7),
      I2 => \lfsr_q_reg[0]_1\(2),
      I3 => \lfsr_q_reg[0]_1\(1),
      I4 => \lfsr_q_reg[0]_1\(0),
      I5 => txphy_i_22_n_0,
      O => \q_a__47\(7)
    );
txphy_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00EFF00E00E00"
    )
        port map (
      I0 => \acmd_out[d]1\,
      I1 => \lfsr_q_reg[8]_0\(6),
      I2 => \lfsr_q_reg[0]_1\(2),
      I3 => \lfsr_q_reg[0]_1\(1),
      I4 => \lfsr_q_reg[0]_1\(0),
      I5 => txphy_i_25_n_0,
      O => \q_a__47\(6)
    );
txphy_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00EFF00E00E00"
    )
        port map (
      I0 => \acmd_out[d]1\,
      I1 => \lfsr_q_reg[8]_0\(5),
      I2 => \lfsr_q_reg[0]_1\(2),
      I3 => \lfsr_q_reg[0]_1\(1),
      I4 => \lfsr_q_reg[0]_1\(0),
      I5 => txphy_i_26_n_0,
      O => \q_a__47\(5)
    );
txphy_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00EFF00E00E00"
    )
        port map (
      I0 => \acmd_out[d]1\,
      I1 => \lfsr_q_reg[8]_0\(4),
      I2 => \lfsr_q_reg[0]_1\(2),
      I3 => \lfsr_q_reg[0]_1\(1),
      I4 => \lfsr_q_reg[0]_1\(0),
      I5 => txphy_i_27_n_0,
      O => \q_a__47\(4)
    );
txphy_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00EFF00E00E00"
    )
        port map (
      I0 => \acmd_out[d]1\,
      I1 => \lfsr_q_reg[8]_0\(3),
      I2 => \lfsr_q_reg[0]_1\(2),
      I3 => \lfsr_q_reg[0]_1\(1),
      I4 => \lfsr_q_reg[0]_1\(0),
      I5 => txphy_i_28_n_0,
      O => \q_a__47\(3)
    );
txphy_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00EFF00E00E00"
    )
        port map (
      I0 => \acmd_out[d]1\,
      I1 => \lfsr_q_reg[8]_0\(2),
      I2 => \lfsr_q_reg[0]_1\(2),
      I3 => \lfsr_q_reg[0]_1\(1),
      I4 => \lfsr_q_reg[0]_1\(0),
      I5 => txphy_i_29_n_0,
      O => \q_a__47\(2)
    );
txphy_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00EFF00E00E00"
    )
        port map (
      I0 => \acmd_out[d]1\,
      I1 => \lfsr_q_reg[8]_0\(1),
      I2 => \lfsr_q_reg[0]_1\(2),
      I3 => \lfsr_q_reg[0]_1\(1),
      I4 => \lfsr_q_reg[0]_1\(0),
      I5 => txphy_i_30_n_0,
      O => \q_a__47\(1)
    );
txphy_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0C0C0EAEAEAEA"
    )
        port map (
      I0 => \q_a__47\(6),
      I1 => d_tx_inferred_i_7,
      I2 => sw(5),
      I3 => Q(5),
      I4 => d_tx_inferred_i_7_0,
      I5 => \^smode_r_reg\,
      O => d(6)
    );
txphy_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00EFF00E00E00"
    )
        port map (
      I0 => \acmd_out[d]1\,
      I1 => \lfsr_q_reg[8]_0\(0),
      I2 => \lfsr_q_reg[0]_1\(2),
      I3 => \lfsr_q_reg[0]_1\(1),
      I4 => \lfsr_q_reg[0]_1\(0),
      I5 => txphy_i_31_n_0,
      O => \q_a__47\(0)
    );
txphy_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => txphy_i_32_n_0,
      I1 => \^actr_i_reg[7]\,
      I2 => csum(7),
      I3 => csum(15),
      I4 => \lfsr_q_reg[0]_1\(2),
      I5 => addr(7),
      O => txphy_i_22_n_0
    );
txphy_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => txphy_i_32_n_0,
      I1 => \^actr_i_reg[7]\,
      I2 => csum(6),
      I3 => csum(14),
      I4 => \lfsr_q_reg[0]_1\(2),
      I5 => addr(6),
      O => txphy_i_25_n_0
    );
txphy_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => txphy_i_32_n_0,
      I1 => \^actr_i_reg[7]\,
      I2 => csum(5),
      I3 => csum(13),
      I4 => \lfsr_q_reg[0]_1\(2),
      I5 => addr(5),
      O => txphy_i_26_n_0
    );
txphy_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => txphy_i_32_n_0,
      I1 => \^actr_i_reg[7]\,
      I2 => csum(4),
      I3 => csum(12),
      I4 => \lfsr_q_reg[0]_1\(2),
      I5 => addr(4),
      O => txphy_i_27_n_0
    );
txphy_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => txphy_i_32_n_0,
      I1 => \^actr_i_reg[7]\,
      I2 => csum(3),
      I3 => csum(11),
      I4 => \lfsr_q_reg[0]_1\(2),
      I5 => addr(3),
      O => txphy_i_28_n_0
    );
txphy_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => txphy_i_32_n_0,
      I1 => \^actr_i_reg[7]\,
      I2 => csum(2),
      I3 => csum(10),
      I4 => \lfsr_q_reg[0]_1\(2),
      I5 => addr(2),
      O => txphy_i_29_n_0
    );
txphy_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0C0C0EAEAEAEA"
    )
        port map (
      I0 => \q_a__47\(5),
      I1 => d_tx_inferred_i_7,
      I2 => sw(4),
      I3 => Q(4),
      I4 => d_tx_inferred_i_7_0,
      I5 => \^smode_r_reg\,
      O => d(5)
    );
txphy_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2D00000F2D0"
    )
        port map (
      I0 => txphy_i_32_n_0,
      I1 => \^actr_i_reg[7]\,
      I2 => csum(1),
      I3 => csum(9),
      I4 => \lfsr_q_reg[0]_1\(2),
      I5 => addr(1),
      O => txphy_i_30_n_0
    );
txphy_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => txphy_i_34_n_0,
      I1 => csum(0),
      I2 => txphy_i_35_n_0,
      I3 => csum(8),
      I4 => \lfsr_q_reg[0]_1\(2),
      I5 => addr(0),
      O => txphy_i_31_n_0
    );
txphy_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFF0001"
    )
        port map (
      I0 => txphy_i_31_0(3),
      I1 => txphy_i_31_0(2),
      I2 => txphy_i_31_0(1),
      I3 => txphy_i_31_0(0),
      I4 => txphy_i_31_1,
      I5 => txphy_i_31_0(4),
      O => txphy_i_32_n_0
    );
txphy_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F0EFFFF"
    )
        port map (
      I0 => txphy_i_31_0(7),
      I1 => txphy_i_31_0(6),
      I2 => txphy_i_31_1,
      I3 => txphy_i_31_0(5),
      I4 => txphy_i_32_n_0,
      I5 => \lfsr_q_reg[0]_1\(2),
      O => txphy_i_34_n_0
    );
txphy_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0F10000"
    )
        port map (
      I0 => txphy_i_31_0(7),
      I1 => txphy_i_31_0(6),
      I2 => txphy_i_31_1,
      I3 => txphy_i_31_0(5),
      I4 => txphy_i_32_n_0,
      I5 => \lfsr_q_reg[0]_1\(2),
      O => txphy_i_35_n_0
    );
txphy_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0C0C0EAEAEAEA"
    )
        port map (
      I0 => \q_a__47\(4),
      I1 => d_tx_inferred_i_7,
      I2 => sw(3),
      I3 => Q(3),
      I4 => d_tx_inferred_i_7_0,
      I5 => \^smode_r_reg\,
      O => d(4)
    );
txphy_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0C0C0EAEAEAEA"
    )
        port map (
      I0 => \q_a__47\(3),
      I1 => d_tx_inferred_i_7,
      I2 => sw(2),
      I3 => Q(2),
      I4 => d_tx_inferred_i_7_0,
      I5 => \^smode_r_reg\,
      O => d(3)
    );
txphy_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0C0C0EAEAEAEA"
    )
        port map (
      I0 => \q_a__47\(2),
      I1 => d_tx_inferred_i_7,
      I2 => sw(1),
      I3 => Q(1),
      I4 => d_tx_inferred_i_7_0,
      I5 => \^smode_r_reg\,
      O => d(2)
    );
txphy_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0C0C0EAEAEAEA"
    )
        port map (
      I0 => \q_a__47\(1),
      I1 => d_tx_inferred_i_7,
      I2 => sw(0),
      I3 => Q(0),
      I4 => d_tx_inferred_i_7_0,
      I5 => \^smode_r_reg\,
      O => d(1)
    );
txphy_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => d_tx_inferred_i_1,
      I1 => \^smode_r_reg\,
      I2 => \q_a__47\(0),
      O => d(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16_3 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ks : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC;
    \err114_out__4\ : in STD_LOGIC;
    \err1__6\ : in STD_LOGIC;
    \err116_out__2\ : in STD_LOGIC;
    stbo : in STD_LOGIC;
    \^q\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    k : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16_3 : entity is "outputlogic_crc16";
end design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16_3;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16_3 is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \err0__15\ : STD_LOGIC;
  signal \err[0]_i_3_n_0\ : STD_LOGIC;
  signal \err[0]_i_4_n_0\ : STD_LOGIC;
  signal \err[0]_i_5_n_0\ : STD_LOGIC;
  signal \err[0]_i_6_n_0\ : STD_LOGIC;
  signal \err_i__1\ : STD_LOGIC;
  signal \^ks\ : STD_LOGIC;
  signal lfsr_c : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lfsr_q[15]_i_4__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_5_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_6__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_7_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_3_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_4_n_0\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[12]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[13]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[14]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[15]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \lfsr_q_reg_n_0_[9]\ : STD_LOGIC;
  signal \^state_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_4__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_6__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_2__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \lfsr_q[2]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \lfsr_q[4]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \lfsr_q[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \lfsr_q[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \lfsr_q[8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair37";
begin
  SS(0) <= \^ss\(0);
  ks <= \^ks\;
  \state_reg[1]\(0) <= \^state_reg[1]\(0);
\err[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEFAEEEEE"
    )
        port map (
      I0 => \err116_out__2\,
      I1 => \err0__15\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \err1__6\,
      I5 => \err114_out__4\,
      O => \state_reg[0]\(0)
    );
\err[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^ss\(0),
      I3 => \err[0]_i_3_n_0\,
      I4 => \err[0]_i_4_n_0\,
      O => \err0__15\
    );
\err[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[11]\,
      I1 => \lfsr_q_reg_n_0_[10]\,
      I2 => \lfsr_q_reg_n_0_[9]\,
      I3 => \lfsr_q_reg_n_0_[8]\,
      I4 => \err[0]_i_5_n_0\,
      O => \err[0]_i_3_n_0\
    );
\err[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[3]\,
      I1 => \lfsr_q_reg_n_0_[2]\,
      I2 => \lfsr_q_reg_n_0_[1]\,
      I3 => \lfsr_q_reg_n_0_[0]\,
      I4 => \err[0]_i_6_n_0\,
      O => \err[0]_i_4_n_0\
    );
\err[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[12]\,
      I1 => \lfsr_q_reg_n_0_[13]\,
      I2 => \lfsr_q_reg_n_0_[15]\,
      I3 => \lfsr_q_reg_n_0_[14]\,
      O => \err[0]_i_5_n_0\
    );
\err[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[4]\,
      I1 => \lfsr_q_reg_n_0_[5]\,
      I2 => \lfsr_q_reg_n_0_[6]\,
      I3 => \lfsr_q_reg_n_0_[7]\,
      O => \err[0]_i_6_n_0\
    );
\lfsr_q[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(7),
      I2 => \lfsr_q_reg_n_0_[15]\,
      I3 => \lfsr_q_reg_n_0_[8]\,
      I4 => \lfsr_q_reg_n_0_[9]\,
      I5 => \lfsr_q[15]_i_7_n_0\,
      O => lfsr_c(0)
    );
\lfsr_q[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \lfsr_q[15]_i_4__0_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(5),
      I4 => \^q\(4),
      I5 => \lfsr_q[15]_i_5_n_0\,
      O => \^ss\(0)
    );
\lfsr_q[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => stbo,
      I3 => \^ks\,
      O => \^state_reg[1]\(0)
    );
\lfsr_q[15]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(2),
      I1 => \lfsr_q[15]_i_6__0_n_0\,
      I2 => \lfsr_q_reg_n_0_[7]\,
      I3 => \lfsr_q_reg_n_0_[9]\,
      I4 => \lfsr_q_reg_n_0_[8]\,
      I5 => \lfsr_q[15]_i_7_n_0\,
      O => lfsr_c(15)
    );
\lfsr_q[15]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \lfsr_q[15]_i_4__0_n_0\
    );
\lfsr_q[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => stbo,
      I1 => k,
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \lfsr_q[15]_i_5_n_0\
    );
\lfsr_q[15]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[15]\,
      I1 => \^q\(7),
      O => \lfsr_q[15]_i_6__0_n_0\
    );
\lfsr_q[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[1]_i_3_n_0\,
      I1 => \lfsr_q_reg_n_0_[11]\,
      I2 => \^q\(3),
      I3 => \lfsr_q_reg_n_0_[10]\,
      I4 => \^q\(0),
      I5 => \lfsr_q[1]_i_4_n_0\,
      O => \lfsr_q[15]_i_7_n_0\
    );
\lfsr_q[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[1]_i_2__0_n_0\,
      I1 => \lfsr_q[1]_i_3_n_0\,
      I2 => \lfsr_q[1]_i_4_n_0\,
      I3 => \lfsr_q[15]_i_6__0_n_0\,
      I4 => \^q\(3),
      I5 => \lfsr_q_reg_n_0_[11]\,
      O => lfsr_c(1)
    );
\lfsr_q[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[9]\,
      I1 => \lfsr_q_reg_n_0_[10]\,
      I2 => \^q\(2),
      O => \lfsr_q[1]_i_2__0_n_0\
    );
\lfsr_q[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[12]\,
      I1 => \^q\(4),
      O => \lfsr_q[1]_i_3_n_0\
    );
\lfsr_q[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^q\(6),
      I1 => \lfsr_q_reg_n_0_[13]\,
      I2 => \^q\(1),
      I3 => \lfsr_q_reg_n_0_[14]\,
      I4 => \^q\(5),
      O => \lfsr_q[1]_i_4_n_0\
    );
\lfsr_q[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(1),
      I1 => \lfsr_q_reg_n_0_[8]\,
      I2 => \lfsr_q_reg_n_0_[9]\,
      I3 => \^q\(0),
      O => lfsr_c(2)
    );
\lfsr_q[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \lfsr_q_reg_n_0_[10]\,
      I3 => \lfsr_q_reg_n_0_[9]\,
      O => lfsr_c(3)
    );
\lfsr_q[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[10]\,
      I1 => \lfsr_q_reg_n_0_[11]\,
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => lfsr_c(4)
    );
\lfsr_q[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(3),
      I1 => \lfsr_q_reg_n_0_[11]\,
      I2 => \^q\(4),
      I3 => \lfsr_q_reg_n_0_[12]\,
      O => lfsr_c(5)
    );
\lfsr_q[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[13]\,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \lfsr_q_reg_n_0_[12]\,
      O => lfsr_c(6)
    );
\lfsr_q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[14]\,
      I1 => \^q\(6),
      I2 => \lfsr_q_reg_n_0_[13]\,
      I3 => \^q\(5),
      O => lfsr_c(7)
    );
\lfsr_q[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^q\(7),
      I1 => \lfsr_q_reg_n_0_[15]\,
      I2 => \^q\(6),
      I3 => \lfsr_q_reg_n_0_[14]\,
      I4 => \lfsr_q_reg_n_0_[0]\,
      O => lfsr_c(8)
    );
\lfsr_q[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[1]\,
      I1 => \^q\(7),
      I2 => \lfsr_q_reg_n_0_[15]\,
      O => lfsr_c(9)
    );
\lfsr_q_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => lfsr_c(0),
      Q => \lfsr_q_reg_n_0_[0]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => \lfsr_q_reg_n_0_[2]\,
      Q => \lfsr_q_reg_n_0_[10]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => \lfsr_q_reg_n_0_[3]\,
      Q => \lfsr_q_reg_n_0_[11]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => \lfsr_q_reg_n_0_[4]\,
      Q => \lfsr_q_reg_n_0_[12]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => \lfsr_q_reg_n_0_[5]\,
      Q => \lfsr_q_reg_n_0_[13]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => \lfsr_q_reg_n_0_[6]\,
      Q => \lfsr_q_reg_n_0_[14]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => lfsr_c(15),
      Q => \lfsr_q_reg_n_0_[15]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => lfsr_c(1),
      Q => \lfsr_q_reg_n_0_[1]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => lfsr_c(2),
      Q => \lfsr_q_reg_n_0_[2]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => lfsr_c(3),
      Q => \lfsr_q_reg_n_0_[3]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => lfsr_c(4),
      Q => \lfsr_q_reg_n_0_[4]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => lfsr_c(5),
      Q => \lfsr_q_reg_n_0_[5]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => lfsr_c(6),
      Q => \lfsr_q_reg_n_0_[6]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => lfsr_c(7),
      Q => \lfsr_q_reg_n_0_[7]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => lfsr_c(8),
      Q => \lfsr_q_reg_n_0_[8]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^state_reg[1]\(0),
      D => lfsr_c(9),
      Q => \lfsr_q_reg_n_0_[9]\,
      S => \^ss\(0)
    );
\sctr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \lfsr_q[15]_i_4__0_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \^q\(4),
      I5 => \lfsr_q[15]_i_5_n_0\,
      O => \^ks\
    );
\state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \err_i__1\,
      I1 => Q(0),
      O => D(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF66664440"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \state_reg[0]_0\,
      I3 => \state_reg[0]_1\,
      I4 => \err_i__1\,
      I5 => \state_reg[0]_2\,
      O => E(0)
    );
\state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \err_i__1\,
      I1 => Q(1),
      I2 => Q(0),
      O => D(1)
    );
\state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAEEA"
    )
        port map (
      I0 => \err114_out__4\,
      I1 => \err1__6\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \err0__15\,
      I5 => \err116_out__2\,
      O => \err_i__1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_acmd_rx is
  port (
    s_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    a_stb : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    a_first : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \^q\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_acmd_rx : entity is "pdts_acmd_rx";
end design_1_pdts_endpoint_stdlog_0_0_pdts_acmd_rx;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_acmd_rx is
  signal \c[0]_i_1_n_0\ : STD_LOGIC;
  signal \c[1]_i_1_n_0\ : STD_LOGIC;
  signal \c[2]_i_1_n_0\ : STD_LOGIC;
  signal \c[3]_i_3_n_0\ : STD_LOGIC;
  signal \c_reg_n_0_[0]\ : STD_LOGIC;
  signal \c_reg_n_0_[1]\ : STD_LOGIC;
  signal \c_reg_n_0_[2]\ : STD_LOGIC;
  signal \c_reg_n_0_[3]\ : STD_LOGIC;
  signal \q[7]_i_1_n_0\ : STD_LOGIC;
  signal s_i_1_n_0 : STD_LOGIC;
  signal s_i_2_n_0 : STD_LOGIC;
  signal \^s_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \c[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \c[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \c[3]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of s_i_2 : label is "soft_lutpair25";
begin
  s_reg_0 <= \^s_reg_0\;
\c[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DE"
    )
        port map (
      I0 => a_stb,
      I1 => E(0),
      I2 => \c_reg_n_0_[0]\,
      O => \c[0]_i_1_n_0\
    );
\c[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \c_reg_n_0_[0]\,
      I1 => \c_reg_n_0_[1]\,
      O => \c[1]_i_1_n_0\
    );
\c[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \c_reg_n_0_[0]\,
      I1 => \c_reg_n_0_[1]\,
      I2 => \c_reg_n_0_[2]\,
      O => \c[2]_i_1_n_0\
    );
\c[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \c_reg_n_0_[1]\,
      I1 => \c_reg_n_0_[0]\,
      I2 => \c_reg_n_0_[2]\,
      I3 => \c_reg_n_0_[3]\,
      O => \c[3]_i_3_n_0\
    );
\c_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \c[0]_i_1_n_0\,
      Q => \c_reg_n_0_[0]\,
      R => \out\(0)
    );
\c_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => a_stb,
      D => \c[1]_i_1_n_0\,
      Q => \c_reg_n_0_[1]\,
      R => SR(0)
    );
\c_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => a_stb,
      D => \c[2]_i_1_n_0\,
      Q => \c_reg_n_0_[2]\,
      R => SR(0)
    );
\c_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => a_stb,
      D => \c[3]_i_3_n_0\,
      Q => \c_reg_n_0_[3]\,
      R => SR(0)
    );
\q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => a_stb,
      I1 => \c_reg_n_0_[1]\,
      I2 => \c_reg_n_0_[0]\,
      I3 => \c_reg_n_0_[3]\,
      I4 => \c_reg_n_0_[2]\,
      I5 => a_first,
      O => \q[7]_i_1_n_0\
    );
\q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(2),
      Q => Q(6),
      R => \out\(0)
    );
\q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(3),
      Q => Q(7),
      R => \out\(0)
    );
\q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(4),
      Q => Q(8),
      R => \out\(0)
    );
\q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(5),
      Q => Q(9),
      R => \out\(0)
    );
\q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(6),
      Q => Q(10),
      R => \out\(0)
    );
\q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(7),
      Q => Q(11),
      R => \out\(0)
    );
\q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \q[7]_i_1_n_0\,
      D => \^q\(4),
      Q => Q(0),
      R => \out\(0)
    );
\q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \q[7]_i_1_n_0\,
      D => \^q\(5),
      Q => Q(1),
      R => \out\(0)
    );
\q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \q[7]_i_1_n_0\,
      D => \^q\(6),
      Q => Q(2),
      R => \out\(0)
    );
\q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \q[7]_i_1_n_0\,
      D => \^q\(7),
      Q => Q(3),
      R => \out\(0)
    );
\q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(0),
      Q => Q(4),
      R => \out\(0)
    );
\q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(1),
      Q => Q(5),
      R => \out\(0)
    );
s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAEAAAA"
    )
        port map (
      I0 => \^s_reg_0\,
      I1 => s_i_2_n_0,
      I2 => \c_reg_n_0_[2]\,
      I3 => \c_reg_n_0_[3]\,
      I4 => a_stb,
      I5 => SR(0),
      O => s_i_1_n_0
    );
s_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \c_reg_n_0_[1]\,
      I1 => \c_reg_n_0_[0]\,
      O => s_i_2_n_0
    );
s_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_i_1_n_0,
      Q => \^s_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_chklock is
  port (
    debug : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrs_reg[0][6]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_state_reg[8]\ : out STD_LOGIC;
    pll_locked : in STD_LOGIC;
    cdr_lol : in STD_LOGIC;
    srst : in STD_LOGIC;
    cdr_los : in STD_LOGIC;
    sfp_los : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_state_reg[3]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[7]\ : in STD_LOGIC;
    sclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_chklock : entity is "pdts_chklock";
end design_1_pdts_endpoint_stdlog_0_0_pdts_chklock;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_chklock is
  signal \ctrs[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \ctrs[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \ctrs[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \ctrs[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \ctrs[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \ctrs[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \ctrs[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \^ctrs_reg[0][6]_0\ : STD_LOGIC;
  signal \ctrs_reg[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \debug[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \ctrs[0][1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ctrs[0][2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ctrs[0][3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ctrs[0][4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \ctrs[0][6]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ctrs[0][7]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \debug[2]_INST_0\ : label is "soft_lutpair52";
begin
  \ctrs_reg[0][6]_0\ <= \^ctrs_reg[0][6]_0\;
\FSM_onehot_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(6),
      I3 => Q(3),
      I4 => \^ctrs_reg[0][6]_0\,
      I5 => Q(7),
      O => \FSM_onehot_state_reg[8]\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFFFFEEFEEEFE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(6),
      I3 => \^ctrs_reg[0][6]_0\,
      I4 => \FSM_onehot_state_reg[3]\,
      I5 => Q(0),
      O => D(0)
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(5),
      I1 => \^ctrs_reg[0][6]_0\,
      O => D(1)
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => Q(7),
      I1 => \^ctrs_reg[0][6]_0\,
      I2 => \FSM_onehot_state_reg[7]\,
      I3 => Q(2),
      I4 => Q(1),
      O => D(2)
    );
\ctrs[0][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ctrs_reg[0]_0\(0),
      O => \plusOp__1\(0)
    );
\ctrs[0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \ctrs_reg[0]_0\(0),
      I1 => \ctrs_reg[0]_0\(1),
      O => \plusOp__1\(1)
    );
\ctrs[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ctrs_reg[0]_0\(1),
      I1 => \ctrs_reg[0]_0\(0),
      I2 => \ctrs_reg[0]_0\(2),
      O => \ctrs[0][2]_i_1_n_0\
    );
\ctrs[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \ctrs_reg[0]_0\(2),
      I1 => \ctrs_reg[0]_0\(0),
      I2 => \ctrs_reg[0]_0\(1),
      I3 => \ctrs_reg[0]_0\(3),
      O => \ctrs[0][3]_i_1_n_0\
    );
\ctrs[0][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \ctrs_reg[0]_0\(3),
      I1 => \ctrs_reg[0]_0\(1),
      I2 => \ctrs_reg[0]_0\(0),
      I3 => \ctrs_reg[0]_0\(2),
      I4 => \ctrs_reg[0]_0\(4),
      O => \ctrs[0][4]_i_1_n_0\
    );
\ctrs[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \ctrs_reg[0]_0\(4),
      I1 => \ctrs_reg[0]_0\(2),
      I2 => \ctrs_reg[0]_0\(0),
      I3 => \ctrs_reg[0]_0\(1),
      I4 => \ctrs_reg[0]_0\(3),
      I5 => \ctrs_reg[0]_0\(5),
      O => \ctrs[0][5]_i_1_n_0\
    );
\ctrs[0][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \debug[2]_INST_0_i_2_n_0\,
      I1 => \ctrs_reg[0]_0\(6),
      O => \ctrs[0][6]_i_1_n_0\
    );
\ctrs[0][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => pll_locked,
      I1 => cdr_lol,
      I2 => srst,
      I3 => cdr_los,
      I4 => sfp_los,
      O => \ctrs[0][7]_i_1_n_0\
    );
\ctrs[0][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \ctrs_reg[0]_0\(6),
      I1 => \debug[2]_INST_0_i_2_n_0\,
      I2 => \ctrs_reg[0]_0\(7),
      O => \ctrs[0][7]_i_2_n_0\
    );
\ctrs_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \^ctrs_reg[0][6]_0\,
      D => \plusOp__1\(0),
      Q => \ctrs_reg[0]_0\(0),
      R => \ctrs[0][7]_i_1_n_0\
    );
\ctrs_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \^ctrs_reg[0][6]_0\,
      D => \plusOp__1\(1),
      Q => \ctrs_reg[0]_0\(1),
      R => \ctrs[0][7]_i_1_n_0\
    );
\ctrs_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \^ctrs_reg[0][6]_0\,
      D => \ctrs[0][2]_i_1_n_0\,
      Q => \ctrs_reg[0]_0\(2),
      R => \ctrs[0][7]_i_1_n_0\
    );
\ctrs_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \^ctrs_reg[0][6]_0\,
      D => \ctrs[0][3]_i_1_n_0\,
      Q => \ctrs_reg[0]_0\(3),
      R => \ctrs[0][7]_i_1_n_0\
    );
\ctrs_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \^ctrs_reg[0][6]_0\,
      D => \ctrs[0][4]_i_1_n_0\,
      Q => \ctrs_reg[0]_0\(4),
      R => \ctrs[0][7]_i_1_n_0\
    );
\ctrs_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \^ctrs_reg[0][6]_0\,
      D => \ctrs[0][5]_i_1_n_0\,
      Q => \ctrs_reg[0]_0\(5),
      R => \ctrs[0][7]_i_1_n_0\
    );
\ctrs_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \^ctrs_reg[0][6]_0\,
      D => \ctrs[0][6]_i_1_n_0\,
      Q => \ctrs_reg[0]_0\(6),
      R => \ctrs[0][7]_i_1_n_0\
    );
\ctrs_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \^ctrs_reg[0][6]_0\,
      D => \ctrs[0][7]_i_2_n_0\,
      Q => \ctrs_reg[0]_0\(7),
      R => \ctrs[0][7]_i_1_n_0\
    );
\debug[2]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ctrs_reg[0][6]_0\,
      O => debug(0)
    );
\debug[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \ctrs_reg[0]_0\(6),
      I1 => \debug[2]_INST_0_i_2_n_0\,
      I2 => \ctrs_reg[0]_0\(7),
      O => \^ctrs_reg[0][6]_0\
    );
\debug[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \ctrs_reg[0]_0\(4),
      I1 => \ctrs_reg[0]_0\(2),
      I2 => \ctrs_reg[0]_0\(0),
      I3 => \ctrs_reg[0]_0\(1),
      I4 => \ctrs_reg[0]_0\(3),
      I5 => \ctrs_reg[0]_0\(5),
      O => \debug[2]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_dec8b10b is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 9 downto 0 );
    q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    k : out STD_LOGIC;
    cerr : out STD_LOGIC;
    derr : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_dec8b10b : entity is "pdts_dec8b10b";
end design_1_pdts_endpoint_stdlog_0_0_pdts_dec8b10b;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_dec8b10b is
  signal cerr_i_10_n_0 : STD_LOGIC;
  signal cerr_i_11_n_0 : STD_LOGIC;
  signal cerr_i_12_n_0 : STD_LOGIC;
  signal cerr_i_13_n_0 : STD_LOGIC;
  signal cerr_i_14_n_0 : STD_LOGIC;
  signal cerr_i_15_n_0 : STD_LOGIC;
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
  signal derr_i_2_n_0 : STD_LOGIC;
  signal derr_i_3_n_0 : STD_LOGIC;
  signal derr_i_4_n_0 : STD_LOGIC;
  signal derr_i_5_n_0 : STD_LOGIC;
  signal derr_i_6_n_0 : STD_LOGIC;
  signal derr_i_7_n_0 : STD_LOGIC;
  signal disp : STD_LOGIC;
  signal dispErr : STD_LOGIC;
  signal disp_i_1_n_0 : STD_LOGIC;
  signal disp_i_2_n_0 : STD_LOGIC;
  signal disp_i_3_n_0 : STD_LOGIC;
  signal disp_i_4_n_0 : STD_LOGIC;
  signal disp_i_5_n_0 : STD_LOGIC;
  signal disp_i_6_n_0 : STD_LOGIC;
  signal k_i_2_n_0 : STD_LOGIC;
  signal k_i_3_n_0 : STD_LOGIC;
  signal k_i_4_n_0 : STD_LOGIC;
  signal k_i_5_n_0 : STD_LOGIC;
  signal k_i_6_n_0 : STD_LOGIC;
  signal \q[2]_i_1_n_0\ : STD_LOGIC;
  signal \q[3]_i_1_n_0\ : STD_LOGIC;
  signal \q[4]_i_1_n_0\ : STD_LOGIC;
  signal \q[7]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cerr_i_10 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of cerr_i_12 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of cerr_i_13 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of derr_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of derr_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of derr_i_6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of derr_i_7 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of disp_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of disp_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of disp_i_6 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of k_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of k_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of k_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of k_i_6 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[7]_i_2\ : label is "soft_lutpair6";
begin
cerr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cerr_i_2_n_0,
      I1 => cerr_i_3_n_0,
      I2 => cerr_i_4_n_0,
      I3 => cerr_i_5_n_0,
      I4 => cerr_i_6_n_0,
      I5 => cerr_i_7_n_0,
      O => codeErr
    );
cerr_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => d(5),
      I1 => d(4),
      O => cerr_i_10_n_0
    );
cerr_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => d(5),
      I1 => d(4),
      O => cerr_i_11_n_0
    );
cerr_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => d(1),
      I1 => d(0),
      I2 => d(2),
      I3 => d(4),
      I4 => d(5),
      O => cerr_i_12_n_0
    );
cerr_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6EEE"
    )
        port map (
      I0 => d(5),
      I1 => d(4),
      I2 => d(2),
      I3 => d(3),
      O => cerr_i_13_n_0
    );
cerr_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022222205050500"
    )
        port map (
      I0 => d(5),
      I1 => k_i_2_n_0,
      I2 => k_i_5_n_0,
      I3 => d(3),
      I4 => d(2),
      I5 => d(4),
      O => cerr_i_14_n_0
    );
cerr_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F11111111111111F"
    )
        port map (
      I0 => k_i_2_n_0,
      I1 => d(6),
      I2 => d(1),
      I3 => d(0),
      I4 => d(2),
      I5 => d(3),
      O => cerr_i_15_n_0
    );
cerr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC2C22800020228"
    )
        port map (
      I0 => cerr_i_8_n_0,
      I1 => d(7),
      I2 => d(6),
      I3 => d(8),
      I4 => d(9),
      I5 => derr_i_5_n_0,
      O => cerr_i_2_n_0
    );
cerr_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAEBBBEEEBEFF"
    )
        port map (
      I0 => cerr_i_9_n_0,
      I1 => d(5),
      I2 => k_i_3_n_0,
      I3 => d(4),
      I4 => k_i_6_n_0,
      I5 => k_i_2_n_0,
      O => cerr_i_3_n_0
    );
cerr_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800088888"
    )
        port map (
      I0 => cerr_i_10_n_0,
      I1 => derr_i_4_n_0,
      I2 => d(9),
      I3 => d(8),
      I4 => d(6),
      I5 => d(7),
      O => cerr_i_4_n_0
    );
cerr_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080808000"
    )
        port map (
      I0 => d(8),
      I1 => d(7),
      I2 => d(6),
      I3 => \q[7]_i_2_n_0\,
      I4 => d(9),
      I5 => cerr_i_11_n_0,
      O => cerr_i_5_n_0
    );
cerr_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC88CC008800000F"
    )
        port map (
      I0 => d(9),
      I1 => cerr_i_12_n_0,
      I2 => cerr_i_13_n_0,
      I3 => d(6),
      I4 => d(8),
      I5 => d(7),
      O => cerr_i_6_n_0
    );
cerr_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABBAFFFFAABA"
    )
        port map (
      I0 => cerr_i_14_n_0,
      I1 => k_i_5_n_0,
      I2 => d(4),
      I3 => d(5),
      I4 => cerr_i_15_n_0,
      I5 => k_i_6_n_0,
      O => cerr_i_7_n_0
    );
cerr_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001160116177E"
    )
        port map (
      I0 => d(1),
      I1 => d(0),
      I2 => d(2),
      I3 => d(3),
      I4 => d(5),
      I5 => d(4),
      O => cerr_i_8_n_0
    );
cerr_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020000C002000000"
    )
        port map (
      I0 => cerr_i_8_n_0,
      I1 => d(6),
      I2 => d(7),
      I3 => d(9),
      I4 => d(8),
      I5 => derr_i_5_n_0,
      O => cerr_i_9_n_0
    );
cerr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => codeErr,
      Q => cerr,
      R => '0'
    );
derr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBABBBB"
    )
        port map (
      I0 => cerr_i_2_n_0,
      I1 => derr_i_2_n_0,
      I2 => derr_i_3_n_0,
      I3 => derr_i_4_n_0,
      I4 => disp,
      I5 => derr_i_5_n_0,
      O => dispErr
    );
derr_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => derr_i_6_n_0,
      I1 => derr_i_5_n_0,
      I2 => disp,
      I3 => derr_i_7_n_0,
      I4 => cerr_i_8_n_0,
      O => derr_i_2_n_0
    );
derr_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55404000"
    )
        port map (
      I0 => cerr_i_8_n_0,
      I1 => d(9),
      I2 => d(8),
      I3 => d(6),
      I4 => d(7),
      O => derr_i_3_n_0
    );
derr_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => d(2),
      I1 => d(0),
      I2 => d(1),
      O => derr_i_4_n_0
    );
derr_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EE8688068800000"
    )
        port map (
      I0 => d(1),
      I1 => d(0),
      I2 => d(2),
      I3 => d(3),
      I4 => d(5),
      I5 => d(4),
      O => derr_i_5_n_0
    );
derr_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE8"
    )
        port map (
      I0 => d(7),
      I1 => d(6),
      I2 => d(8),
      I3 => d(9),
      O => derr_i_6_n_0
    );
derr_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => d(2),
      I1 => d(0),
      I2 => d(1),
      O => derr_i_7_n_0
    );
derr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dispErr,
      Q => derr,
      R => '0'
    );
disp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002E2E2E22"
    )
        port map (
      I0 => disp,
      I1 => en,
      I2 => disp_i_2_n_0,
      I3 => d(8),
      I4 => d(9),
      I5 => rst,
      O => disp_i_1_n_0
    );
disp_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8A8888888A"
    )
        port map (
      I0 => disp_i_3_n_0,
      I1 => disp_i_4_n_0,
      I2 => d(3),
      I3 => disp,
      I4 => k_i_6_n_0,
      I5 => cerr_i_10_n_0,
      O => disp_i_2_n_0
    );
disp_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => d(9),
      I1 => d(8),
      I2 => d(6),
      I3 => d(7),
      O => disp_i_3_n_0
    );
disp_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5FFF577F55575557"
    )
        port map (
      I0 => disp_i_5_n_0,
      I1 => disp,
      I2 => d(4),
      I3 => d(5),
      I4 => disp_i_6_n_0,
      I5 => k_i_3_n_0,
      O => disp_i_4_n_0
    );
disp_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => d(9),
      I1 => d(8),
      I2 => d(6),
      I3 => d(7),
      O => disp_i_5_n_0
    );
disp_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E997"
    )
        port map (
      I0 => d(2),
      I1 => d(3),
      I2 => d(1),
      I3 => d(0),
      O => disp_i_6_n_0
    );
disp_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => disp_i_1_n_0,
      Q => disp,
      R => '0'
    );
k_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => k_i_2_n_0,
      I1 => d(5),
      I2 => d(4),
      I3 => k_i_3_n_0,
      I4 => k_i_4_n_0,
      O => dataKOut
    );
k_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => d(7),
      I1 => d(9),
      I2 => d(8),
      O => k_i_2_n_0
    );
k_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"977F"
    )
        port map (
      I0 => d(1),
      I1 => d(0),
      I2 => d(2),
      I3 => d(3),
      O => k_i_3_n_0
    );
k_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00011110000000F"
    )
        port map (
      I0 => k_i_5_n_0,
      I1 => k_i_6_n_0,
      I2 => d(3),
      I3 => d(2),
      I4 => d(4),
      I5 => d(5),
      O => k_i_4_n_0
    );
k_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => d(9),
      I1 => d(8),
      I2 => d(7),
      O => k_i_5_n_0
    );
k_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE9"
    )
        port map (
      I0 => d(1),
      I1 => d(0),
      I2 => d(2),
      I3 => d(3),
      O => k_i_6_n_0
    );
k_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataKOut,
      Q => k,
      R => '0'
    );
\q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C1B3164F0E5F1A5"
    )
        port map (
      I0 => d(4),
      I1 => d(1),
      I2 => d(0),
      I3 => d(2),
      I4 => d(3),
      I5 => d(5),
      O => dataOut(0)
    );
\q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A54F0F09966E3C7"
    )
        port map (
      I0 => d(2),
      I1 => d(3),
      I2 => d(1),
      I3 => d(0),
      I4 => d(5),
      I5 => d(4),
      O => dataOut(1)
    );
\q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A474CCCCA55ACFB3"
    )
        port map (
      I0 => d(1),
      I1 => d(2),
      I2 => d(3),
      I3 => d(0),
      I4 => d(5),
      I5 => d(4),
      O => \q[2]_i_1_n_0\
    );
\q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3248CCCCA55ADBDB"
    )
        port map (
      I0 => d(2),
      I1 => d(3),
      I2 => d(1),
      I3 => d(0),
      I4 => d(5),
      I5 => d(4),
      O => \q[3]_i_1_n_0\
    );
\q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAA3DAA3DBD5B"
    )
        port map (
      I0 => d(4),
      I1 => d(5),
      I2 => d(3),
      I3 => d(2),
      I4 => d(0),
      I5 => d(1),
      O => \q[4]_i_1_n_0\
    );
\q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F664266F"
    )
        port map (
      I0 => d(9),
      I1 => d(6),
      I2 => d(8),
      I3 => \q[7]_i_2_n_0\,
      I4 => d(7),
      O => dataOut(5)
    );
\q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FD42BF2"
    )
        port map (
      I0 => \q[7]_i_2_n_0\,
      I1 => d(8),
      I2 => d(9),
      I3 => d(6),
      I4 => d(7),
      O => dataOut(6)
    );
\q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A366C56"
    )
        port map (
      I0 => d(9),
      I1 => d(8),
      I2 => d(6),
      I3 => d(7),
      I4 => \q[7]_i_2_n_0\,
      O => dataOut(7)
    );
\q[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => d(4),
      I1 => d(5),
      I2 => d(3),
      I3 => d(2),
      O => \q[7]_i_2_n_0\
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(0),
      Q => q(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(1),
      Q => q(1),
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => \q[2]_i_1_n_0\,
      Q => q(2),
      R => '0'
    );
\q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => \q[3]_i_1_n_0\,
      Q => q(3),
      R => '0'
    );
\q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => \q[4]_i_1_n_0\,
      Q => q(4),
      R => '0'
    );
\q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(5),
      Q => q(5),
      R => '0'
    );
\q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(6),
      Q => q(6),
      R => '0'
    );
\q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(7),
      Q => q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_del is
  port (
    \s_reg[4]\ : out STD_LOGIC;
    adj_ack_i : in STD_LOGIC;
    sclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_del : entity is "pdts_del";
end design_1_pdts_endpoint_stdlog_0_0_pdts_del;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_del is
  signal \s_reg[3][0]_srl3_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \s_reg[3][0]_srl3\ : label is "\inst/ep/startup/adel/s_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \s_reg[3][0]_srl3\ : label is "\inst/ep/startup/adel/s_reg[3][0]_srl3 ";
begin
\s_reg[3][0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => sclk,
      D => adj_ack_i,
      Q => \s_reg[3][0]_srl3_n_0\
    );
\s_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \s_reg[3][0]_srl3_n_0\,
      Q => \s_reg[4]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxd : in STD_LOGIC;
    rxclk : in STD_LOGIC;
    fdel : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized0\ : entity is "pdts_del";
end \design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized0\;

architecture STRUCTURE of \design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized0\ is
  signal \s_reg[10]\ : STD_LOGIC;
  signal \s_reg[11]\ : STD_LOGIC;
  signal \s_reg[12]\ : STD_LOGIC;
  signal \s_reg[13]\ : STD_LOGIC;
  signal \s_reg[14]\ : STD_LOGIC;
  signal \s_reg[15]\ : STD_LOGIC;
  signal \s_reg[1]\ : STD_LOGIC;
  signal \s_reg[2]\ : STD_LOGIC;
  signal \s_reg[3]\ : STD_LOGIC;
  signal \s_reg[4]\ : STD_LOGIC;
  signal \s_reg[5]\ : STD_LOGIC;
  signal \s_reg[6]\ : STD_LOGIC;
  signal \s_reg[7]\ : STD_LOGIC;
  signal \s_reg[8]\ : STD_LOGIC;
  signal \s_reg[9]\ : STD_LOGIC;
  signal \wa[9]_i_4_n_0\ : STD_LOGIC;
  signal \wa[9]_i_5_n_0\ : STD_LOGIC;
  signal \wa[9]_i_6_n_0\ : STD_LOGIC;
  signal \wa[9]_i_7_n_0\ : STD_LOGIC;
  signal \wa_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \wa_reg[9]_i_3_n_0\ : STD_LOGIC;
begin
\s_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[9]\,
      Q => \s_reg[10]\,
      R => '0'
    );
\s_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[10]\,
      Q => \s_reg[11]\,
      R => '0'
    );
\s_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[11]\,
      Q => \s_reg[12]\,
      R => '0'
    );
\s_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[12]\,
      Q => \s_reg[13]\,
      R => '0'
    );
\s_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[13]\,
      Q => \s_reg[14]\,
      R => '0'
    );
\s_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[14]\,
      Q => \s_reg[15]\,
      R => '0'
    );
\s_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => rxd,
      Q => \s_reg[1]\,
      R => '0'
    );
\s_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[1]\,
      Q => \s_reg[2]\,
      R => '0'
    );
\s_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[2]\,
      Q => \s_reg[3]\,
      R => '0'
    );
\s_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[3]\,
      Q => \s_reg[4]\,
      R => '0'
    );
\s_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[4]\,
      Q => \s_reg[5]\,
      R => '0'
    );
\s_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[5]\,
      Q => \s_reg[6]\,
      R => '0'
    );
\s_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[6]\,
      Q => \s_reg[7]\,
      R => '0'
    );
\s_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[7]\,
      Q => \s_reg[8]\,
      R => '0'
    );
\s_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s_reg[8]\,
      Q => \s_reg[9]\,
      R => '0'
    );
\wa[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\,
      I1 => \s_reg[2]\,
      I2 => fdel(1),
      I3 => \s_reg[1]\,
      I4 => fdel(0),
      I5 => rxd,
      O => \wa[9]_i_4_n_0\
    );
\wa[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\,
      I1 => \s_reg[6]\,
      I2 => fdel(1),
      I3 => \s_reg[5]\,
      I4 => fdel(0),
      I5 => \s_reg[4]\,
      O => \wa[9]_i_5_n_0\
    );
\wa[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\,
      I1 => \s_reg[10]\,
      I2 => fdel(1),
      I3 => \s_reg[9]\,
      I4 => fdel(0),
      I5 => \s_reg[8]\,
      O => \wa[9]_i_6_n_0\
    );
\wa[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\,
      I1 => \s_reg[14]\,
      I2 => fdel(1),
      I3 => \s_reg[13]\,
      I4 => fdel(0),
      I5 => \s_reg[12]\,
      O => \wa[9]_i_7_n_0\
    );
\wa_reg[9]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \wa_reg[9]_i_2_n_0\,
      I1 => \wa_reg[9]_i_3_n_0\,
      O => D(0),
      S => fdel(3)
    );
\wa_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wa[9]_i_4_n_0\,
      I1 => \wa[9]_i_5_n_0\,
      O => \wa_reg[9]_i_2_n_0\,
      S => fdel(2)
    );
\wa_reg[9]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wa[9]_i_6_n_0\,
      I1 => \wa[9]_i_7_n_0\,
      O => \wa_reg[9]_i_3_n_0\,
      S => fdel(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized1\ is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    d : in STD_LOGIC_VECTOR ( 10 downto 0 );
    q : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute DEL_RADIX : integer;
  attribute DEL_RADIX of \design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized1\ : entity is 6;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized1\ : entity is "pdts_del";
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized1\ : entity is 11;
end \design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized1\;

architecture STRUCTURE of \design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized1\ is
  signal \q[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \q[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \q[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \q[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \q[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \q[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \q[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \q[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \q[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \q[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \q[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \s_reg[10]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[11]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[12]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[13]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[14]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[15]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[16]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[17]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[18]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[19]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[1]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[20]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[21]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[22]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[23]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[24]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[25]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[26]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[27]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[28]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[29]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[2]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[30]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[31]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[32]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[33]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[34]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[35]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[36]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[37]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[38]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[39]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[3]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[40]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[41]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[42]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[43]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[44]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[45]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[46]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[47]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[48]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[49]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[4]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[50]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[51]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[52]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[53]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[54]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[55]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[56]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[57]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[58]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[59]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[5]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[60]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[61]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[62]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[63]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[6]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[7]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[8]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_reg[9]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
begin
\q[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[0]_INST_0_i_1_n_0\,
      I1 => \q[0]_INST_0_i_2_n_0\,
      I2 => a(5),
      I3 => \q[0]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \q[0]_INST_0_i_4_n_0\,
      O => q(0)
    );
\q[0]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[0]_INST_0_i_5_n_0\,
      I1 => \q[0]_INST_0_i_6_n_0\,
      O => \q[0]_INST_0_i_1_n_0\,
      S => a(3)
    );
\q[0]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[0]_INST_0_i_23_n_0\,
      I1 => \q[0]_INST_0_i_24_n_0\,
      O => \q[0]_INST_0_i_10_n_0\,
      S => a(2)
    );
\q[0]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[0]_INST_0_i_25_n_0\,
      I1 => \q[0]_INST_0_i_26_n_0\,
      O => \q[0]_INST_0_i_11_n_0\,
      S => a(2)
    );
\q[0]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[0]_INST_0_i_27_n_0\,
      I1 => \q[0]_INST_0_i_28_n_0\,
      O => \q[0]_INST_0_i_12_n_0\,
      S => a(2)
    );
\q[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[51]\(0),
      I1 => \s_reg[50]\(0),
      I2 => a(1),
      I3 => \s_reg[49]\(0),
      I4 => a(0),
      I5 => \s_reg[48]\(0),
      O => \q[0]_INST_0_i_13_n_0\
    );
\q[0]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[55]\(0),
      I1 => \s_reg[54]\(0),
      I2 => a(1),
      I3 => \s_reg[53]\(0),
      I4 => a(0),
      I5 => \s_reg[52]\(0),
      O => \q[0]_INST_0_i_14_n_0\
    );
\q[0]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[59]\(0),
      I1 => \s_reg[58]\(0),
      I2 => a(1),
      I3 => \s_reg[57]\(0),
      I4 => a(0),
      I5 => \s_reg[56]\(0),
      O => \q[0]_INST_0_i_15_n_0\
    );
\q[0]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[63]\(0),
      I1 => \s_reg[62]\(0),
      I2 => a(1),
      I3 => \s_reg[61]\(0),
      I4 => a(0),
      I5 => \s_reg[60]\(0),
      O => \q[0]_INST_0_i_16_n_0\
    );
\q[0]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[35]\(0),
      I1 => \s_reg[34]\(0),
      I2 => a(1),
      I3 => \s_reg[33]\(0),
      I4 => a(0),
      I5 => \s_reg[32]\(0),
      O => \q[0]_INST_0_i_17_n_0\
    );
\q[0]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[39]\(0),
      I1 => \s_reg[38]\(0),
      I2 => a(1),
      I3 => \s_reg[37]\(0),
      I4 => a(0),
      I5 => \s_reg[36]\(0),
      O => \q[0]_INST_0_i_18_n_0\
    );
\q[0]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[43]\(0),
      I1 => \s_reg[42]\(0),
      I2 => a(1),
      I3 => \s_reg[41]\(0),
      I4 => a(0),
      I5 => \s_reg[40]\(0),
      O => \q[0]_INST_0_i_19_n_0\
    );
\q[0]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[0]_INST_0_i_7_n_0\,
      I1 => \q[0]_INST_0_i_8_n_0\,
      O => \q[0]_INST_0_i_2_n_0\,
      S => a(3)
    );
\q[0]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[47]\(0),
      I1 => \s_reg[46]\(0),
      I2 => a(1),
      I3 => \s_reg[45]\(0),
      I4 => a(0),
      I5 => \s_reg[44]\(0),
      O => \q[0]_INST_0_i_20_n_0\
    );
\q[0]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[19]\(0),
      I1 => \s_reg[18]\(0),
      I2 => a(1),
      I3 => \s_reg[17]\(0),
      I4 => a(0),
      I5 => \s_reg[16]\(0),
      O => \q[0]_INST_0_i_21_n_0\
    );
\q[0]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[23]\(0),
      I1 => \s_reg[22]\(0),
      I2 => a(1),
      I3 => \s_reg[21]\(0),
      I4 => a(0),
      I5 => \s_reg[20]\(0),
      O => \q[0]_INST_0_i_22_n_0\
    );
\q[0]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[27]\(0),
      I1 => \s_reg[26]\(0),
      I2 => a(1),
      I3 => \s_reg[25]\(0),
      I4 => a(0),
      I5 => \s_reg[24]\(0),
      O => \q[0]_INST_0_i_23_n_0\
    );
\q[0]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[31]\(0),
      I1 => \s_reg[30]\(0),
      I2 => a(1),
      I3 => \s_reg[29]\(0),
      I4 => a(0),
      I5 => \s_reg[28]\(0),
      O => \q[0]_INST_0_i_24_n_0\
    );
\q[0]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\(0),
      I1 => \s_reg[2]\(0),
      I2 => a(1),
      I3 => \s_reg[1]\(0),
      I4 => a(0),
      I5 => d(0),
      O => \q[0]_INST_0_i_25_n_0\
    );
\q[0]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\(0),
      I1 => \s_reg[6]\(0),
      I2 => a(1),
      I3 => \s_reg[5]\(0),
      I4 => a(0),
      I5 => \s_reg[4]\(0),
      O => \q[0]_INST_0_i_26_n_0\
    );
\q[0]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\(0),
      I1 => \s_reg[10]\(0),
      I2 => a(1),
      I3 => \s_reg[9]\(0),
      I4 => a(0),
      I5 => \s_reg[8]\(0),
      O => \q[0]_INST_0_i_27_n_0\
    );
\q[0]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\(0),
      I1 => \s_reg[14]\(0),
      I2 => a(1),
      I3 => \s_reg[13]\(0),
      I4 => a(0),
      I5 => \s_reg[12]\(0),
      O => \q[0]_INST_0_i_28_n_0\
    );
\q[0]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[0]_INST_0_i_9_n_0\,
      I1 => \q[0]_INST_0_i_10_n_0\,
      O => \q[0]_INST_0_i_3_n_0\,
      S => a(3)
    );
\q[0]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[0]_INST_0_i_11_n_0\,
      I1 => \q[0]_INST_0_i_12_n_0\,
      O => \q[0]_INST_0_i_4_n_0\,
      S => a(3)
    );
\q[0]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[0]_INST_0_i_13_n_0\,
      I1 => \q[0]_INST_0_i_14_n_0\,
      O => \q[0]_INST_0_i_5_n_0\,
      S => a(2)
    );
\q[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[0]_INST_0_i_15_n_0\,
      I1 => \q[0]_INST_0_i_16_n_0\,
      O => \q[0]_INST_0_i_6_n_0\,
      S => a(2)
    );
\q[0]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[0]_INST_0_i_17_n_0\,
      I1 => \q[0]_INST_0_i_18_n_0\,
      O => \q[0]_INST_0_i_7_n_0\,
      S => a(2)
    );
\q[0]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[0]_INST_0_i_19_n_0\,
      I1 => \q[0]_INST_0_i_20_n_0\,
      O => \q[0]_INST_0_i_8_n_0\,
      S => a(2)
    );
\q[0]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[0]_INST_0_i_21_n_0\,
      I1 => \q[0]_INST_0_i_22_n_0\,
      O => \q[0]_INST_0_i_9_n_0\,
      S => a(2)
    );
\q[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[10]_INST_0_i_1_n_0\,
      I1 => \q[10]_INST_0_i_2_n_0\,
      I2 => a(5),
      I3 => \q[10]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \q[10]_INST_0_i_4_n_0\,
      O => q(10)
    );
\q[10]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[10]_INST_0_i_5_n_0\,
      I1 => \q[10]_INST_0_i_6_n_0\,
      O => \q[10]_INST_0_i_1_n_0\,
      S => a(3)
    );
\q[10]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[10]_INST_0_i_23_n_0\,
      I1 => \q[10]_INST_0_i_24_n_0\,
      O => \q[10]_INST_0_i_10_n_0\,
      S => a(2)
    );
\q[10]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[10]_INST_0_i_25_n_0\,
      I1 => \q[10]_INST_0_i_26_n_0\,
      O => \q[10]_INST_0_i_11_n_0\,
      S => a(2)
    );
\q[10]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[10]_INST_0_i_27_n_0\,
      I1 => \q[10]_INST_0_i_28_n_0\,
      O => \q[10]_INST_0_i_12_n_0\,
      S => a(2)
    );
\q[10]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[51]\(10),
      I1 => \s_reg[50]\(10),
      I2 => a(1),
      I3 => \s_reg[49]\(10),
      I4 => a(0),
      I5 => \s_reg[48]\(10),
      O => \q[10]_INST_0_i_13_n_0\
    );
\q[10]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[55]\(10),
      I1 => \s_reg[54]\(10),
      I2 => a(1),
      I3 => \s_reg[53]\(10),
      I4 => a(0),
      I5 => \s_reg[52]\(10),
      O => \q[10]_INST_0_i_14_n_0\
    );
\q[10]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[59]\(10),
      I1 => \s_reg[58]\(10),
      I2 => a(1),
      I3 => \s_reg[57]\(10),
      I4 => a(0),
      I5 => \s_reg[56]\(10),
      O => \q[10]_INST_0_i_15_n_0\
    );
\q[10]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[63]\(10),
      I1 => \s_reg[62]\(10),
      I2 => a(1),
      I3 => \s_reg[61]\(10),
      I4 => a(0),
      I5 => \s_reg[60]\(10),
      O => \q[10]_INST_0_i_16_n_0\
    );
\q[10]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[35]\(10),
      I1 => \s_reg[34]\(10),
      I2 => a(1),
      I3 => \s_reg[33]\(10),
      I4 => a(0),
      I5 => \s_reg[32]\(10),
      O => \q[10]_INST_0_i_17_n_0\
    );
\q[10]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[39]\(10),
      I1 => \s_reg[38]\(10),
      I2 => a(1),
      I3 => \s_reg[37]\(10),
      I4 => a(0),
      I5 => \s_reg[36]\(10),
      O => \q[10]_INST_0_i_18_n_0\
    );
\q[10]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[43]\(10),
      I1 => \s_reg[42]\(10),
      I2 => a(1),
      I3 => \s_reg[41]\(10),
      I4 => a(0),
      I5 => \s_reg[40]\(10),
      O => \q[10]_INST_0_i_19_n_0\
    );
\q[10]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[10]_INST_0_i_7_n_0\,
      I1 => \q[10]_INST_0_i_8_n_0\,
      O => \q[10]_INST_0_i_2_n_0\,
      S => a(3)
    );
\q[10]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[47]\(10),
      I1 => \s_reg[46]\(10),
      I2 => a(1),
      I3 => \s_reg[45]\(10),
      I4 => a(0),
      I5 => \s_reg[44]\(10),
      O => \q[10]_INST_0_i_20_n_0\
    );
\q[10]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[19]\(10),
      I1 => \s_reg[18]\(10),
      I2 => a(1),
      I3 => \s_reg[17]\(10),
      I4 => a(0),
      I5 => \s_reg[16]\(10),
      O => \q[10]_INST_0_i_21_n_0\
    );
\q[10]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[23]\(10),
      I1 => \s_reg[22]\(10),
      I2 => a(1),
      I3 => \s_reg[21]\(10),
      I4 => a(0),
      I5 => \s_reg[20]\(10),
      O => \q[10]_INST_0_i_22_n_0\
    );
\q[10]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[27]\(10),
      I1 => \s_reg[26]\(10),
      I2 => a(1),
      I3 => \s_reg[25]\(10),
      I4 => a(0),
      I5 => \s_reg[24]\(10),
      O => \q[10]_INST_0_i_23_n_0\
    );
\q[10]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[31]\(10),
      I1 => \s_reg[30]\(10),
      I2 => a(1),
      I3 => \s_reg[29]\(10),
      I4 => a(0),
      I5 => \s_reg[28]\(10),
      O => \q[10]_INST_0_i_24_n_0\
    );
\q[10]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\(10),
      I1 => \s_reg[2]\(10),
      I2 => a(1),
      I3 => \s_reg[1]\(10),
      I4 => a(0),
      I5 => d(10),
      O => \q[10]_INST_0_i_25_n_0\
    );
\q[10]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\(10),
      I1 => \s_reg[6]\(10),
      I2 => a(1),
      I3 => \s_reg[5]\(10),
      I4 => a(0),
      I5 => \s_reg[4]\(10),
      O => \q[10]_INST_0_i_26_n_0\
    );
\q[10]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\(10),
      I1 => \s_reg[10]\(10),
      I2 => a(1),
      I3 => \s_reg[9]\(10),
      I4 => a(0),
      I5 => \s_reg[8]\(10),
      O => \q[10]_INST_0_i_27_n_0\
    );
\q[10]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\(10),
      I1 => \s_reg[14]\(10),
      I2 => a(1),
      I3 => \s_reg[13]\(10),
      I4 => a(0),
      I5 => \s_reg[12]\(10),
      O => \q[10]_INST_0_i_28_n_0\
    );
\q[10]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[10]_INST_0_i_9_n_0\,
      I1 => \q[10]_INST_0_i_10_n_0\,
      O => \q[10]_INST_0_i_3_n_0\,
      S => a(3)
    );
\q[10]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[10]_INST_0_i_11_n_0\,
      I1 => \q[10]_INST_0_i_12_n_0\,
      O => \q[10]_INST_0_i_4_n_0\,
      S => a(3)
    );
\q[10]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[10]_INST_0_i_13_n_0\,
      I1 => \q[10]_INST_0_i_14_n_0\,
      O => \q[10]_INST_0_i_5_n_0\,
      S => a(2)
    );
\q[10]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[10]_INST_0_i_15_n_0\,
      I1 => \q[10]_INST_0_i_16_n_0\,
      O => \q[10]_INST_0_i_6_n_0\,
      S => a(2)
    );
\q[10]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[10]_INST_0_i_17_n_0\,
      I1 => \q[10]_INST_0_i_18_n_0\,
      O => \q[10]_INST_0_i_7_n_0\,
      S => a(2)
    );
\q[10]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[10]_INST_0_i_19_n_0\,
      I1 => \q[10]_INST_0_i_20_n_0\,
      O => \q[10]_INST_0_i_8_n_0\,
      S => a(2)
    );
\q[10]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[10]_INST_0_i_21_n_0\,
      I1 => \q[10]_INST_0_i_22_n_0\,
      O => \q[10]_INST_0_i_9_n_0\,
      S => a(2)
    );
\q[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[1]_INST_0_i_1_n_0\,
      I1 => \q[1]_INST_0_i_2_n_0\,
      I2 => a(5),
      I3 => \q[1]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \q[1]_INST_0_i_4_n_0\,
      O => q(1)
    );
\q[1]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[1]_INST_0_i_5_n_0\,
      I1 => \q[1]_INST_0_i_6_n_0\,
      O => \q[1]_INST_0_i_1_n_0\,
      S => a(3)
    );
\q[1]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[1]_INST_0_i_23_n_0\,
      I1 => \q[1]_INST_0_i_24_n_0\,
      O => \q[1]_INST_0_i_10_n_0\,
      S => a(2)
    );
\q[1]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[1]_INST_0_i_25_n_0\,
      I1 => \q[1]_INST_0_i_26_n_0\,
      O => \q[1]_INST_0_i_11_n_0\,
      S => a(2)
    );
\q[1]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[1]_INST_0_i_27_n_0\,
      I1 => \q[1]_INST_0_i_28_n_0\,
      O => \q[1]_INST_0_i_12_n_0\,
      S => a(2)
    );
\q[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[51]\(1),
      I1 => \s_reg[50]\(1),
      I2 => a(1),
      I3 => \s_reg[49]\(1),
      I4 => a(0),
      I5 => \s_reg[48]\(1),
      O => \q[1]_INST_0_i_13_n_0\
    );
\q[1]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[55]\(1),
      I1 => \s_reg[54]\(1),
      I2 => a(1),
      I3 => \s_reg[53]\(1),
      I4 => a(0),
      I5 => \s_reg[52]\(1),
      O => \q[1]_INST_0_i_14_n_0\
    );
\q[1]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[59]\(1),
      I1 => \s_reg[58]\(1),
      I2 => a(1),
      I3 => \s_reg[57]\(1),
      I4 => a(0),
      I5 => \s_reg[56]\(1),
      O => \q[1]_INST_0_i_15_n_0\
    );
\q[1]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[63]\(1),
      I1 => \s_reg[62]\(1),
      I2 => a(1),
      I3 => \s_reg[61]\(1),
      I4 => a(0),
      I5 => \s_reg[60]\(1),
      O => \q[1]_INST_0_i_16_n_0\
    );
\q[1]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[35]\(1),
      I1 => \s_reg[34]\(1),
      I2 => a(1),
      I3 => \s_reg[33]\(1),
      I4 => a(0),
      I5 => \s_reg[32]\(1),
      O => \q[1]_INST_0_i_17_n_0\
    );
\q[1]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[39]\(1),
      I1 => \s_reg[38]\(1),
      I2 => a(1),
      I3 => \s_reg[37]\(1),
      I4 => a(0),
      I5 => \s_reg[36]\(1),
      O => \q[1]_INST_0_i_18_n_0\
    );
\q[1]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[43]\(1),
      I1 => \s_reg[42]\(1),
      I2 => a(1),
      I3 => \s_reg[41]\(1),
      I4 => a(0),
      I5 => \s_reg[40]\(1),
      O => \q[1]_INST_0_i_19_n_0\
    );
\q[1]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[1]_INST_0_i_7_n_0\,
      I1 => \q[1]_INST_0_i_8_n_0\,
      O => \q[1]_INST_0_i_2_n_0\,
      S => a(3)
    );
\q[1]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[47]\(1),
      I1 => \s_reg[46]\(1),
      I2 => a(1),
      I3 => \s_reg[45]\(1),
      I4 => a(0),
      I5 => \s_reg[44]\(1),
      O => \q[1]_INST_0_i_20_n_0\
    );
\q[1]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[19]\(1),
      I1 => \s_reg[18]\(1),
      I2 => a(1),
      I3 => \s_reg[17]\(1),
      I4 => a(0),
      I5 => \s_reg[16]\(1),
      O => \q[1]_INST_0_i_21_n_0\
    );
\q[1]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[23]\(1),
      I1 => \s_reg[22]\(1),
      I2 => a(1),
      I3 => \s_reg[21]\(1),
      I4 => a(0),
      I5 => \s_reg[20]\(1),
      O => \q[1]_INST_0_i_22_n_0\
    );
\q[1]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[27]\(1),
      I1 => \s_reg[26]\(1),
      I2 => a(1),
      I3 => \s_reg[25]\(1),
      I4 => a(0),
      I5 => \s_reg[24]\(1),
      O => \q[1]_INST_0_i_23_n_0\
    );
\q[1]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[31]\(1),
      I1 => \s_reg[30]\(1),
      I2 => a(1),
      I3 => \s_reg[29]\(1),
      I4 => a(0),
      I5 => \s_reg[28]\(1),
      O => \q[1]_INST_0_i_24_n_0\
    );
\q[1]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\(1),
      I1 => \s_reg[2]\(1),
      I2 => a(1),
      I3 => \s_reg[1]\(1),
      I4 => a(0),
      I5 => d(1),
      O => \q[1]_INST_0_i_25_n_0\
    );
\q[1]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\(1),
      I1 => \s_reg[6]\(1),
      I2 => a(1),
      I3 => \s_reg[5]\(1),
      I4 => a(0),
      I5 => \s_reg[4]\(1),
      O => \q[1]_INST_0_i_26_n_0\
    );
\q[1]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\(1),
      I1 => \s_reg[10]\(1),
      I2 => a(1),
      I3 => \s_reg[9]\(1),
      I4 => a(0),
      I5 => \s_reg[8]\(1),
      O => \q[1]_INST_0_i_27_n_0\
    );
\q[1]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\(1),
      I1 => \s_reg[14]\(1),
      I2 => a(1),
      I3 => \s_reg[13]\(1),
      I4 => a(0),
      I5 => \s_reg[12]\(1),
      O => \q[1]_INST_0_i_28_n_0\
    );
\q[1]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[1]_INST_0_i_9_n_0\,
      I1 => \q[1]_INST_0_i_10_n_0\,
      O => \q[1]_INST_0_i_3_n_0\,
      S => a(3)
    );
\q[1]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[1]_INST_0_i_11_n_0\,
      I1 => \q[1]_INST_0_i_12_n_0\,
      O => \q[1]_INST_0_i_4_n_0\,
      S => a(3)
    );
\q[1]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[1]_INST_0_i_13_n_0\,
      I1 => \q[1]_INST_0_i_14_n_0\,
      O => \q[1]_INST_0_i_5_n_0\,
      S => a(2)
    );
\q[1]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[1]_INST_0_i_15_n_0\,
      I1 => \q[1]_INST_0_i_16_n_0\,
      O => \q[1]_INST_0_i_6_n_0\,
      S => a(2)
    );
\q[1]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[1]_INST_0_i_17_n_0\,
      I1 => \q[1]_INST_0_i_18_n_0\,
      O => \q[1]_INST_0_i_7_n_0\,
      S => a(2)
    );
\q[1]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[1]_INST_0_i_19_n_0\,
      I1 => \q[1]_INST_0_i_20_n_0\,
      O => \q[1]_INST_0_i_8_n_0\,
      S => a(2)
    );
\q[1]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[1]_INST_0_i_21_n_0\,
      I1 => \q[1]_INST_0_i_22_n_0\,
      O => \q[1]_INST_0_i_9_n_0\,
      S => a(2)
    );
\q[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[2]_INST_0_i_1_n_0\,
      I1 => \q[2]_INST_0_i_2_n_0\,
      I2 => a(5),
      I3 => \q[2]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \q[2]_INST_0_i_4_n_0\,
      O => q(2)
    );
\q[2]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[2]_INST_0_i_5_n_0\,
      I1 => \q[2]_INST_0_i_6_n_0\,
      O => \q[2]_INST_0_i_1_n_0\,
      S => a(3)
    );
\q[2]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[2]_INST_0_i_23_n_0\,
      I1 => \q[2]_INST_0_i_24_n_0\,
      O => \q[2]_INST_0_i_10_n_0\,
      S => a(2)
    );
\q[2]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[2]_INST_0_i_25_n_0\,
      I1 => \q[2]_INST_0_i_26_n_0\,
      O => \q[2]_INST_0_i_11_n_0\,
      S => a(2)
    );
\q[2]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[2]_INST_0_i_27_n_0\,
      I1 => \q[2]_INST_0_i_28_n_0\,
      O => \q[2]_INST_0_i_12_n_0\,
      S => a(2)
    );
\q[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[51]\(2),
      I1 => \s_reg[50]\(2),
      I2 => a(1),
      I3 => \s_reg[49]\(2),
      I4 => a(0),
      I5 => \s_reg[48]\(2),
      O => \q[2]_INST_0_i_13_n_0\
    );
\q[2]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[55]\(2),
      I1 => \s_reg[54]\(2),
      I2 => a(1),
      I3 => \s_reg[53]\(2),
      I4 => a(0),
      I5 => \s_reg[52]\(2),
      O => \q[2]_INST_0_i_14_n_0\
    );
\q[2]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[59]\(2),
      I1 => \s_reg[58]\(2),
      I2 => a(1),
      I3 => \s_reg[57]\(2),
      I4 => a(0),
      I5 => \s_reg[56]\(2),
      O => \q[2]_INST_0_i_15_n_0\
    );
\q[2]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[63]\(2),
      I1 => \s_reg[62]\(2),
      I2 => a(1),
      I3 => \s_reg[61]\(2),
      I4 => a(0),
      I5 => \s_reg[60]\(2),
      O => \q[2]_INST_0_i_16_n_0\
    );
\q[2]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[35]\(2),
      I1 => \s_reg[34]\(2),
      I2 => a(1),
      I3 => \s_reg[33]\(2),
      I4 => a(0),
      I5 => \s_reg[32]\(2),
      O => \q[2]_INST_0_i_17_n_0\
    );
\q[2]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[39]\(2),
      I1 => \s_reg[38]\(2),
      I2 => a(1),
      I3 => \s_reg[37]\(2),
      I4 => a(0),
      I5 => \s_reg[36]\(2),
      O => \q[2]_INST_0_i_18_n_0\
    );
\q[2]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[43]\(2),
      I1 => \s_reg[42]\(2),
      I2 => a(1),
      I3 => \s_reg[41]\(2),
      I4 => a(0),
      I5 => \s_reg[40]\(2),
      O => \q[2]_INST_0_i_19_n_0\
    );
\q[2]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[2]_INST_0_i_7_n_0\,
      I1 => \q[2]_INST_0_i_8_n_0\,
      O => \q[2]_INST_0_i_2_n_0\,
      S => a(3)
    );
\q[2]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[47]\(2),
      I1 => \s_reg[46]\(2),
      I2 => a(1),
      I3 => \s_reg[45]\(2),
      I4 => a(0),
      I5 => \s_reg[44]\(2),
      O => \q[2]_INST_0_i_20_n_0\
    );
\q[2]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[19]\(2),
      I1 => \s_reg[18]\(2),
      I2 => a(1),
      I3 => \s_reg[17]\(2),
      I4 => a(0),
      I5 => \s_reg[16]\(2),
      O => \q[2]_INST_0_i_21_n_0\
    );
\q[2]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[23]\(2),
      I1 => \s_reg[22]\(2),
      I2 => a(1),
      I3 => \s_reg[21]\(2),
      I4 => a(0),
      I5 => \s_reg[20]\(2),
      O => \q[2]_INST_0_i_22_n_0\
    );
\q[2]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[27]\(2),
      I1 => \s_reg[26]\(2),
      I2 => a(1),
      I3 => \s_reg[25]\(2),
      I4 => a(0),
      I5 => \s_reg[24]\(2),
      O => \q[2]_INST_0_i_23_n_0\
    );
\q[2]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[31]\(2),
      I1 => \s_reg[30]\(2),
      I2 => a(1),
      I3 => \s_reg[29]\(2),
      I4 => a(0),
      I5 => \s_reg[28]\(2),
      O => \q[2]_INST_0_i_24_n_0\
    );
\q[2]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\(2),
      I1 => \s_reg[2]\(2),
      I2 => a(1),
      I3 => \s_reg[1]\(2),
      I4 => a(0),
      I5 => d(2),
      O => \q[2]_INST_0_i_25_n_0\
    );
\q[2]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\(2),
      I1 => \s_reg[6]\(2),
      I2 => a(1),
      I3 => \s_reg[5]\(2),
      I4 => a(0),
      I5 => \s_reg[4]\(2),
      O => \q[2]_INST_0_i_26_n_0\
    );
\q[2]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\(2),
      I1 => \s_reg[10]\(2),
      I2 => a(1),
      I3 => \s_reg[9]\(2),
      I4 => a(0),
      I5 => \s_reg[8]\(2),
      O => \q[2]_INST_0_i_27_n_0\
    );
\q[2]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\(2),
      I1 => \s_reg[14]\(2),
      I2 => a(1),
      I3 => \s_reg[13]\(2),
      I4 => a(0),
      I5 => \s_reg[12]\(2),
      O => \q[2]_INST_0_i_28_n_0\
    );
\q[2]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[2]_INST_0_i_9_n_0\,
      I1 => \q[2]_INST_0_i_10_n_0\,
      O => \q[2]_INST_0_i_3_n_0\,
      S => a(3)
    );
\q[2]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[2]_INST_0_i_11_n_0\,
      I1 => \q[2]_INST_0_i_12_n_0\,
      O => \q[2]_INST_0_i_4_n_0\,
      S => a(3)
    );
\q[2]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[2]_INST_0_i_13_n_0\,
      I1 => \q[2]_INST_0_i_14_n_0\,
      O => \q[2]_INST_0_i_5_n_0\,
      S => a(2)
    );
\q[2]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[2]_INST_0_i_15_n_0\,
      I1 => \q[2]_INST_0_i_16_n_0\,
      O => \q[2]_INST_0_i_6_n_0\,
      S => a(2)
    );
\q[2]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[2]_INST_0_i_17_n_0\,
      I1 => \q[2]_INST_0_i_18_n_0\,
      O => \q[2]_INST_0_i_7_n_0\,
      S => a(2)
    );
\q[2]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[2]_INST_0_i_19_n_0\,
      I1 => \q[2]_INST_0_i_20_n_0\,
      O => \q[2]_INST_0_i_8_n_0\,
      S => a(2)
    );
\q[2]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[2]_INST_0_i_21_n_0\,
      I1 => \q[2]_INST_0_i_22_n_0\,
      O => \q[2]_INST_0_i_9_n_0\,
      S => a(2)
    );
\q[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[3]_INST_0_i_1_n_0\,
      I1 => \q[3]_INST_0_i_2_n_0\,
      I2 => a(5),
      I3 => \q[3]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \q[3]_INST_0_i_4_n_0\,
      O => q(3)
    );
\q[3]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[3]_INST_0_i_5_n_0\,
      I1 => \q[3]_INST_0_i_6_n_0\,
      O => \q[3]_INST_0_i_1_n_0\,
      S => a(3)
    );
\q[3]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[3]_INST_0_i_23_n_0\,
      I1 => \q[3]_INST_0_i_24_n_0\,
      O => \q[3]_INST_0_i_10_n_0\,
      S => a(2)
    );
\q[3]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[3]_INST_0_i_25_n_0\,
      I1 => \q[3]_INST_0_i_26_n_0\,
      O => \q[3]_INST_0_i_11_n_0\,
      S => a(2)
    );
\q[3]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[3]_INST_0_i_27_n_0\,
      I1 => \q[3]_INST_0_i_28_n_0\,
      O => \q[3]_INST_0_i_12_n_0\,
      S => a(2)
    );
\q[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[51]\(3),
      I1 => \s_reg[50]\(3),
      I2 => a(1),
      I3 => \s_reg[49]\(3),
      I4 => a(0),
      I5 => \s_reg[48]\(3),
      O => \q[3]_INST_0_i_13_n_0\
    );
\q[3]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[55]\(3),
      I1 => \s_reg[54]\(3),
      I2 => a(1),
      I3 => \s_reg[53]\(3),
      I4 => a(0),
      I5 => \s_reg[52]\(3),
      O => \q[3]_INST_0_i_14_n_0\
    );
\q[3]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[59]\(3),
      I1 => \s_reg[58]\(3),
      I2 => a(1),
      I3 => \s_reg[57]\(3),
      I4 => a(0),
      I5 => \s_reg[56]\(3),
      O => \q[3]_INST_0_i_15_n_0\
    );
\q[3]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[63]\(3),
      I1 => \s_reg[62]\(3),
      I2 => a(1),
      I3 => \s_reg[61]\(3),
      I4 => a(0),
      I5 => \s_reg[60]\(3),
      O => \q[3]_INST_0_i_16_n_0\
    );
\q[3]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[35]\(3),
      I1 => \s_reg[34]\(3),
      I2 => a(1),
      I3 => \s_reg[33]\(3),
      I4 => a(0),
      I5 => \s_reg[32]\(3),
      O => \q[3]_INST_0_i_17_n_0\
    );
\q[3]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[39]\(3),
      I1 => \s_reg[38]\(3),
      I2 => a(1),
      I3 => \s_reg[37]\(3),
      I4 => a(0),
      I5 => \s_reg[36]\(3),
      O => \q[3]_INST_0_i_18_n_0\
    );
\q[3]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[43]\(3),
      I1 => \s_reg[42]\(3),
      I2 => a(1),
      I3 => \s_reg[41]\(3),
      I4 => a(0),
      I5 => \s_reg[40]\(3),
      O => \q[3]_INST_0_i_19_n_0\
    );
\q[3]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[3]_INST_0_i_7_n_0\,
      I1 => \q[3]_INST_0_i_8_n_0\,
      O => \q[3]_INST_0_i_2_n_0\,
      S => a(3)
    );
\q[3]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[47]\(3),
      I1 => \s_reg[46]\(3),
      I2 => a(1),
      I3 => \s_reg[45]\(3),
      I4 => a(0),
      I5 => \s_reg[44]\(3),
      O => \q[3]_INST_0_i_20_n_0\
    );
\q[3]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[19]\(3),
      I1 => \s_reg[18]\(3),
      I2 => a(1),
      I3 => \s_reg[17]\(3),
      I4 => a(0),
      I5 => \s_reg[16]\(3),
      O => \q[3]_INST_0_i_21_n_0\
    );
\q[3]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[23]\(3),
      I1 => \s_reg[22]\(3),
      I2 => a(1),
      I3 => \s_reg[21]\(3),
      I4 => a(0),
      I5 => \s_reg[20]\(3),
      O => \q[3]_INST_0_i_22_n_0\
    );
\q[3]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[27]\(3),
      I1 => \s_reg[26]\(3),
      I2 => a(1),
      I3 => \s_reg[25]\(3),
      I4 => a(0),
      I5 => \s_reg[24]\(3),
      O => \q[3]_INST_0_i_23_n_0\
    );
\q[3]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[31]\(3),
      I1 => \s_reg[30]\(3),
      I2 => a(1),
      I3 => \s_reg[29]\(3),
      I4 => a(0),
      I5 => \s_reg[28]\(3),
      O => \q[3]_INST_0_i_24_n_0\
    );
\q[3]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\(3),
      I1 => \s_reg[2]\(3),
      I2 => a(1),
      I3 => \s_reg[1]\(3),
      I4 => a(0),
      I5 => d(3),
      O => \q[3]_INST_0_i_25_n_0\
    );
\q[3]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\(3),
      I1 => \s_reg[6]\(3),
      I2 => a(1),
      I3 => \s_reg[5]\(3),
      I4 => a(0),
      I5 => \s_reg[4]\(3),
      O => \q[3]_INST_0_i_26_n_0\
    );
\q[3]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\(3),
      I1 => \s_reg[10]\(3),
      I2 => a(1),
      I3 => \s_reg[9]\(3),
      I4 => a(0),
      I5 => \s_reg[8]\(3),
      O => \q[3]_INST_0_i_27_n_0\
    );
\q[3]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\(3),
      I1 => \s_reg[14]\(3),
      I2 => a(1),
      I3 => \s_reg[13]\(3),
      I4 => a(0),
      I5 => \s_reg[12]\(3),
      O => \q[3]_INST_0_i_28_n_0\
    );
\q[3]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[3]_INST_0_i_9_n_0\,
      I1 => \q[3]_INST_0_i_10_n_0\,
      O => \q[3]_INST_0_i_3_n_0\,
      S => a(3)
    );
\q[3]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[3]_INST_0_i_11_n_0\,
      I1 => \q[3]_INST_0_i_12_n_0\,
      O => \q[3]_INST_0_i_4_n_0\,
      S => a(3)
    );
\q[3]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[3]_INST_0_i_13_n_0\,
      I1 => \q[3]_INST_0_i_14_n_0\,
      O => \q[3]_INST_0_i_5_n_0\,
      S => a(2)
    );
\q[3]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[3]_INST_0_i_15_n_0\,
      I1 => \q[3]_INST_0_i_16_n_0\,
      O => \q[3]_INST_0_i_6_n_0\,
      S => a(2)
    );
\q[3]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[3]_INST_0_i_17_n_0\,
      I1 => \q[3]_INST_0_i_18_n_0\,
      O => \q[3]_INST_0_i_7_n_0\,
      S => a(2)
    );
\q[3]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[3]_INST_0_i_19_n_0\,
      I1 => \q[3]_INST_0_i_20_n_0\,
      O => \q[3]_INST_0_i_8_n_0\,
      S => a(2)
    );
\q[3]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[3]_INST_0_i_21_n_0\,
      I1 => \q[3]_INST_0_i_22_n_0\,
      O => \q[3]_INST_0_i_9_n_0\,
      S => a(2)
    );
\q[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[4]_INST_0_i_1_n_0\,
      I1 => \q[4]_INST_0_i_2_n_0\,
      I2 => a(5),
      I3 => \q[4]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \q[4]_INST_0_i_4_n_0\,
      O => q(4)
    );
\q[4]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[4]_INST_0_i_5_n_0\,
      I1 => \q[4]_INST_0_i_6_n_0\,
      O => \q[4]_INST_0_i_1_n_0\,
      S => a(3)
    );
\q[4]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[4]_INST_0_i_23_n_0\,
      I1 => \q[4]_INST_0_i_24_n_0\,
      O => \q[4]_INST_0_i_10_n_0\,
      S => a(2)
    );
\q[4]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[4]_INST_0_i_25_n_0\,
      I1 => \q[4]_INST_0_i_26_n_0\,
      O => \q[4]_INST_0_i_11_n_0\,
      S => a(2)
    );
\q[4]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[4]_INST_0_i_27_n_0\,
      I1 => \q[4]_INST_0_i_28_n_0\,
      O => \q[4]_INST_0_i_12_n_0\,
      S => a(2)
    );
\q[4]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[51]\(4),
      I1 => \s_reg[50]\(4),
      I2 => a(1),
      I3 => \s_reg[49]\(4),
      I4 => a(0),
      I5 => \s_reg[48]\(4),
      O => \q[4]_INST_0_i_13_n_0\
    );
\q[4]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[55]\(4),
      I1 => \s_reg[54]\(4),
      I2 => a(1),
      I3 => \s_reg[53]\(4),
      I4 => a(0),
      I5 => \s_reg[52]\(4),
      O => \q[4]_INST_0_i_14_n_0\
    );
\q[4]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[59]\(4),
      I1 => \s_reg[58]\(4),
      I2 => a(1),
      I3 => \s_reg[57]\(4),
      I4 => a(0),
      I5 => \s_reg[56]\(4),
      O => \q[4]_INST_0_i_15_n_0\
    );
\q[4]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[63]\(4),
      I1 => \s_reg[62]\(4),
      I2 => a(1),
      I3 => \s_reg[61]\(4),
      I4 => a(0),
      I5 => \s_reg[60]\(4),
      O => \q[4]_INST_0_i_16_n_0\
    );
\q[4]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[35]\(4),
      I1 => \s_reg[34]\(4),
      I2 => a(1),
      I3 => \s_reg[33]\(4),
      I4 => a(0),
      I5 => \s_reg[32]\(4),
      O => \q[4]_INST_0_i_17_n_0\
    );
\q[4]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[39]\(4),
      I1 => \s_reg[38]\(4),
      I2 => a(1),
      I3 => \s_reg[37]\(4),
      I4 => a(0),
      I5 => \s_reg[36]\(4),
      O => \q[4]_INST_0_i_18_n_0\
    );
\q[4]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[43]\(4),
      I1 => \s_reg[42]\(4),
      I2 => a(1),
      I3 => \s_reg[41]\(4),
      I4 => a(0),
      I5 => \s_reg[40]\(4),
      O => \q[4]_INST_0_i_19_n_0\
    );
\q[4]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[4]_INST_0_i_7_n_0\,
      I1 => \q[4]_INST_0_i_8_n_0\,
      O => \q[4]_INST_0_i_2_n_0\,
      S => a(3)
    );
\q[4]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[47]\(4),
      I1 => \s_reg[46]\(4),
      I2 => a(1),
      I3 => \s_reg[45]\(4),
      I4 => a(0),
      I5 => \s_reg[44]\(4),
      O => \q[4]_INST_0_i_20_n_0\
    );
\q[4]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[19]\(4),
      I1 => \s_reg[18]\(4),
      I2 => a(1),
      I3 => \s_reg[17]\(4),
      I4 => a(0),
      I5 => \s_reg[16]\(4),
      O => \q[4]_INST_0_i_21_n_0\
    );
\q[4]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[23]\(4),
      I1 => \s_reg[22]\(4),
      I2 => a(1),
      I3 => \s_reg[21]\(4),
      I4 => a(0),
      I5 => \s_reg[20]\(4),
      O => \q[4]_INST_0_i_22_n_0\
    );
\q[4]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[27]\(4),
      I1 => \s_reg[26]\(4),
      I2 => a(1),
      I3 => \s_reg[25]\(4),
      I4 => a(0),
      I5 => \s_reg[24]\(4),
      O => \q[4]_INST_0_i_23_n_0\
    );
\q[4]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[31]\(4),
      I1 => \s_reg[30]\(4),
      I2 => a(1),
      I3 => \s_reg[29]\(4),
      I4 => a(0),
      I5 => \s_reg[28]\(4),
      O => \q[4]_INST_0_i_24_n_0\
    );
\q[4]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\(4),
      I1 => \s_reg[2]\(4),
      I2 => a(1),
      I3 => \s_reg[1]\(4),
      I4 => a(0),
      I5 => d(4),
      O => \q[4]_INST_0_i_25_n_0\
    );
\q[4]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\(4),
      I1 => \s_reg[6]\(4),
      I2 => a(1),
      I3 => \s_reg[5]\(4),
      I4 => a(0),
      I5 => \s_reg[4]\(4),
      O => \q[4]_INST_0_i_26_n_0\
    );
\q[4]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\(4),
      I1 => \s_reg[10]\(4),
      I2 => a(1),
      I3 => \s_reg[9]\(4),
      I4 => a(0),
      I5 => \s_reg[8]\(4),
      O => \q[4]_INST_0_i_27_n_0\
    );
\q[4]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\(4),
      I1 => \s_reg[14]\(4),
      I2 => a(1),
      I3 => \s_reg[13]\(4),
      I4 => a(0),
      I5 => \s_reg[12]\(4),
      O => \q[4]_INST_0_i_28_n_0\
    );
\q[4]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[4]_INST_0_i_9_n_0\,
      I1 => \q[4]_INST_0_i_10_n_0\,
      O => \q[4]_INST_0_i_3_n_0\,
      S => a(3)
    );
\q[4]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[4]_INST_0_i_11_n_0\,
      I1 => \q[4]_INST_0_i_12_n_0\,
      O => \q[4]_INST_0_i_4_n_0\,
      S => a(3)
    );
\q[4]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[4]_INST_0_i_13_n_0\,
      I1 => \q[4]_INST_0_i_14_n_0\,
      O => \q[4]_INST_0_i_5_n_0\,
      S => a(2)
    );
\q[4]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[4]_INST_0_i_15_n_0\,
      I1 => \q[4]_INST_0_i_16_n_0\,
      O => \q[4]_INST_0_i_6_n_0\,
      S => a(2)
    );
\q[4]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[4]_INST_0_i_17_n_0\,
      I1 => \q[4]_INST_0_i_18_n_0\,
      O => \q[4]_INST_0_i_7_n_0\,
      S => a(2)
    );
\q[4]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[4]_INST_0_i_19_n_0\,
      I1 => \q[4]_INST_0_i_20_n_0\,
      O => \q[4]_INST_0_i_8_n_0\,
      S => a(2)
    );
\q[4]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[4]_INST_0_i_21_n_0\,
      I1 => \q[4]_INST_0_i_22_n_0\,
      O => \q[4]_INST_0_i_9_n_0\,
      S => a(2)
    );
\q[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[5]_INST_0_i_1_n_0\,
      I1 => \q[5]_INST_0_i_2_n_0\,
      I2 => a(5),
      I3 => \q[5]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \q[5]_INST_0_i_4_n_0\,
      O => q(5)
    );
\q[5]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[5]_INST_0_i_5_n_0\,
      I1 => \q[5]_INST_0_i_6_n_0\,
      O => \q[5]_INST_0_i_1_n_0\,
      S => a(3)
    );
\q[5]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[5]_INST_0_i_23_n_0\,
      I1 => \q[5]_INST_0_i_24_n_0\,
      O => \q[5]_INST_0_i_10_n_0\,
      S => a(2)
    );
\q[5]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[5]_INST_0_i_25_n_0\,
      I1 => \q[5]_INST_0_i_26_n_0\,
      O => \q[5]_INST_0_i_11_n_0\,
      S => a(2)
    );
\q[5]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[5]_INST_0_i_27_n_0\,
      I1 => \q[5]_INST_0_i_28_n_0\,
      O => \q[5]_INST_0_i_12_n_0\,
      S => a(2)
    );
\q[5]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[51]\(5),
      I1 => \s_reg[50]\(5),
      I2 => a(1),
      I3 => \s_reg[49]\(5),
      I4 => a(0),
      I5 => \s_reg[48]\(5),
      O => \q[5]_INST_0_i_13_n_0\
    );
\q[5]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[55]\(5),
      I1 => \s_reg[54]\(5),
      I2 => a(1),
      I3 => \s_reg[53]\(5),
      I4 => a(0),
      I5 => \s_reg[52]\(5),
      O => \q[5]_INST_0_i_14_n_0\
    );
\q[5]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[59]\(5),
      I1 => \s_reg[58]\(5),
      I2 => a(1),
      I3 => \s_reg[57]\(5),
      I4 => a(0),
      I5 => \s_reg[56]\(5),
      O => \q[5]_INST_0_i_15_n_0\
    );
\q[5]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[63]\(5),
      I1 => \s_reg[62]\(5),
      I2 => a(1),
      I3 => \s_reg[61]\(5),
      I4 => a(0),
      I5 => \s_reg[60]\(5),
      O => \q[5]_INST_0_i_16_n_0\
    );
\q[5]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[35]\(5),
      I1 => \s_reg[34]\(5),
      I2 => a(1),
      I3 => \s_reg[33]\(5),
      I4 => a(0),
      I5 => \s_reg[32]\(5),
      O => \q[5]_INST_0_i_17_n_0\
    );
\q[5]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[39]\(5),
      I1 => \s_reg[38]\(5),
      I2 => a(1),
      I3 => \s_reg[37]\(5),
      I4 => a(0),
      I5 => \s_reg[36]\(5),
      O => \q[5]_INST_0_i_18_n_0\
    );
\q[5]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[43]\(5),
      I1 => \s_reg[42]\(5),
      I2 => a(1),
      I3 => \s_reg[41]\(5),
      I4 => a(0),
      I5 => \s_reg[40]\(5),
      O => \q[5]_INST_0_i_19_n_0\
    );
\q[5]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[5]_INST_0_i_7_n_0\,
      I1 => \q[5]_INST_0_i_8_n_0\,
      O => \q[5]_INST_0_i_2_n_0\,
      S => a(3)
    );
\q[5]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[47]\(5),
      I1 => \s_reg[46]\(5),
      I2 => a(1),
      I3 => \s_reg[45]\(5),
      I4 => a(0),
      I5 => \s_reg[44]\(5),
      O => \q[5]_INST_0_i_20_n_0\
    );
\q[5]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[19]\(5),
      I1 => \s_reg[18]\(5),
      I2 => a(1),
      I3 => \s_reg[17]\(5),
      I4 => a(0),
      I5 => \s_reg[16]\(5),
      O => \q[5]_INST_0_i_21_n_0\
    );
\q[5]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[23]\(5),
      I1 => \s_reg[22]\(5),
      I2 => a(1),
      I3 => \s_reg[21]\(5),
      I4 => a(0),
      I5 => \s_reg[20]\(5),
      O => \q[5]_INST_0_i_22_n_0\
    );
\q[5]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[27]\(5),
      I1 => \s_reg[26]\(5),
      I2 => a(1),
      I3 => \s_reg[25]\(5),
      I4 => a(0),
      I5 => \s_reg[24]\(5),
      O => \q[5]_INST_0_i_23_n_0\
    );
\q[5]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[31]\(5),
      I1 => \s_reg[30]\(5),
      I2 => a(1),
      I3 => \s_reg[29]\(5),
      I4 => a(0),
      I5 => \s_reg[28]\(5),
      O => \q[5]_INST_0_i_24_n_0\
    );
\q[5]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\(5),
      I1 => \s_reg[2]\(5),
      I2 => a(1),
      I3 => \s_reg[1]\(5),
      I4 => a(0),
      I5 => d(5),
      O => \q[5]_INST_0_i_25_n_0\
    );
\q[5]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\(5),
      I1 => \s_reg[6]\(5),
      I2 => a(1),
      I3 => \s_reg[5]\(5),
      I4 => a(0),
      I5 => \s_reg[4]\(5),
      O => \q[5]_INST_0_i_26_n_0\
    );
\q[5]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\(5),
      I1 => \s_reg[10]\(5),
      I2 => a(1),
      I3 => \s_reg[9]\(5),
      I4 => a(0),
      I5 => \s_reg[8]\(5),
      O => \q[5]_INST_0_i_27_n_0\
    );
\q[5]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\(5),
      I1 => \s_reg[14]\(5),
      I2 => a(1),
      I3 => \s_reg[13]\(5),
      I4 => a(0),
      I5 => \s_reg[12]\(5),
      O => \q[5]_INST_0_i_28_n_0\
    );
\q[5]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[5]_INST_0_i_9_n_0\,
      I1 => \q[5]_INST_0_i_10_n_0\,
      O => \q[5]_INST_0_i_3_n_0\,
      S => a(3)
    );
\q[5]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[5]_INST_0_i_11_n_0\,
      I1 => \q[5]_INST_0_i_12_n_0\,
      O => \q[5]_INST_0_i_4_n_0\,
      S => a(3)
    );
\q[5]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[5]_INST_0_i_13_n_0\,
      I1 => \q[5]_INST_0_i_14_n_0\,
      O => \q[5]_INST_0_i_5_n_0\,
      S => a(2)
    );
\q[5]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[5]_INST_0_i_15_n_0\,
      I1 => \q[5]_INST_0_i_16_n_0\,
      O => \q[5]_INST_0_i_6_n_0\,
      S => a(2)
    );
\q[5]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[5]_INST_0_i_17_n_0\,
      I1 => \q[5]_INST_0_i_18_n_0\,
      O => \q[5]_INST_0_i_7_n_0\,
      S => a(2)
    );
\q[5]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[5]_INST_0_i_19_n_0\,
      I1 => \q[5]_INST_0_i_20_n_0\,
      O => \q[5]_INST_0_i_8_n_0\,
      S => a(2)
    );
\q[5]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[5]_INST_0_i_21_n_0\,
      I1 => \q[5]_INST_0_i_22_n_0\,
      O => \q[5]_INST_0_i_9_n_0\,
      S => a(2)
    );
\q[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[6]_INST_0_i_1_n_0\,
      I1 => \q[6]_INST_0_i_2_n_0\,
      I2 => a(5),
      I3 => \q[6]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \q[6]_INST_0_i_4_n_0\,
      O => q(6)
    );
\q[6]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[6]_INST_0_i_5_n_0\,
      I1 => \q[6]_INST_0_i_6_n_0\,
      O => \q[6]_INST_0_i_1_n_0\,
      S => a(3)
    );
\q[6]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[6]_INST_0_i_23_n_0\,
      I1 => \q[6]_INST_0_i_24_n_0\,
      O => \q[6]_INST_0_i_10_n_0\,
      S => a(2)
    );
\q[6]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[6]_INST_0_i_25_n_0\,
      I1 => \q[6]_INST_0_i_26_n_0\,
      O => \q[6]_INST_0_i_11_n_0\,
      S => a(2)
    );
\q[6]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[6]_INST_0_i_27_n_0\,
      I1 => \q[6]_INST_0_i_28_n_0\,
      O => \q[6]_INST_0_i_12_n_0\,
      S => a(2)
    );
\q[6]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[51]\(6),
      I1 => \s_reg[50]\(6),
      I2 => a(1),
      I3 => \s_reg[49]\(6),
      I4 => a(0),
      I5 => \s_reg[48]\(6),
      O => \q[6]_INST_0_i_13_n_0\
    );
\q[6]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[55]\(6),
      I1 => \s_reg[54]\(6),
      I2 => a(1),
      I3 => \s_reg[53]\(6),
      I4 => a(0),
      I5 => \s_reg[52]\(6),
      O => \q[6]_INST_0_i_14_n_0\
    );
\q[6]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[59]\(6),
      I1 => \s_reg[58]\(6),
      I2 => a(1),
      I3 => \s_reg[57]\(6),
      I4 => a(0),
      I5 => \s_reg[56]\(6),
      O => \q[6]_INST_0_i_15_n_0\
    );
\q[6]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[63]\(6),
      I1 => \s_reg[62]\(6),
      I2 => a(1),
      I3 => \s_reg[61]\(6),
      I4 => a(0),
      I5 => \s_reg[60]\(6),
      O => \q[6]_INST_0_i_16_n_0\
    );
\q[6]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[35]\(6),
      I1 => \s_reg[34]\(6),
      I2 => a(1),
      I3 => \s_reg[33]\(6),
      I4 => a(0),
      I5 => \s_reg[32]\(6),
      O => \q[6]_INST_0_i_17_n_0\
    );
\q[6]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[39]\(6),
      I1 => \s_reg[38]\(6),
      I2 => a(1),
      I3 => \s_reg[37]\(6),
      I4 => a(0),
      I5 => \s_reg[36]\(6),
      O => \q[6]_INST_0_i_18_n_0\
    );
\q[6]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[43]\(6),
      I1 => \s_reg[42]\(6),
      I2 => a(1),
      I3 => \s_reg[41]\(6),
      I4 => a(0),
      I5 => \s_reg[40]\(6),
      O => \q[6]_INST_0_i_19_n_0\
    );
\q[6]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[6]_INST_0_i_7_n_0\,
      I1 => \q[6]_INST_0_i_8_n_0\,
      O => \q[6]_INST_0_i_2_n_0\,
      S => a(3)
    );
\q[6]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[47]\(6),
      I1 => \s_reg[46]\(6),
      I2 => a(1),
      I3 => \s_reg[45]\(6),
      I4 => a(0),
      I5 => \s_reg[44]\(6),
      O => \q[6]_INST_0_i_20_n_0\
    );
\q[6]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[19]\(6),
      I1 => \s_reg[18]\(6),
      I2 => a(1),
      I3 => \s_reg[17]\(6),
      I4 => a(0),
      I5 => \s_reg[16]\(6),
      O => \q[6]_INST_0_i_21_n_0\
    );
\q[6]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[23]\(6),
      I1 => \s_reg[22]\(6),
      I2 => a(1),
      I3 => \s_reg[21]\(6),
      I4 => a(0),
      I5 => \s_reg[20]\(6),
      O => \q[6]_INST_0_i_22_n_0\
    );
\q[6]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[27]\(6),
      I1 => \s_reg[26]\(6),
      I2 => a(1),
      I3 => \s_reg[25]\(6),
      I4 => a(0),
      I5 => \s_reg[24]\(6),
      O => \q[6]_INST_0_i_23_n_0\
    );
\q[6]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[31]\(6),
      I1 => \s_reg[30]\(6),
      I2 => a(1),
      I3 => \s_reg[29]\(6),
      I4 => a(0),
      I5 => \s_reg[28]\(6),
      O => \q[6]_INST_0_i_24_n_0\
    );
\q[6]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\(6),
      I1 => \s_reg[2]\(6),
      I2 => a(1),
      I3 => \s_reg[1]\(6),
      I4 => a(0),
      I5 => d(6),
      O => \q[6]_INST_0_i_25_n_0\
    );
\q[6]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\(6),
      I1 => \s_reg[6]\(6),
      I2 => a(1),
      I3 => \s_reg[5]\(6),
      I4 => a(0),
      I5 => \s_reg[4]\(6),
      O => \q[6]_INST_0_i_26_n_0\
    );
\q[6]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\(6),
      I1 => \s_reg[10]\(6),
      I2 => a(1),
      I3 => \s_reg[9]\(6),
      I4 => a(0),
      I5 => \s_reg[8]\(6),
      O => \q[6]_INST_0_i_27_n_0\
    );
\q[6]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\(6),
      I1 => \s_reg[14]\(6),
      I2 => a(1),
      I3 => \s_reg[13]\(6),
      I4 => a(0),
      I5 => \s_reg[12]\(6),
      O => \q[6]_INST_0_i_28_n_0\
    );
\q[6]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[6]_INST_0_i_9_n_0\,
      I1 => \q[6]_INST_0_i_10_n_0\,
      O => \q[6]_INST_0_i_3_n_0\,
      S => a(3)
    );
\q[6]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[6]_INST_0_i_11_n_0\,
      I1 => \q[6]_INST_0_i_12_n_0\,
      O => \q[6]_INST_0_i_4_n_0\,
      S => a(3)
    );
\q[6]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[6]_INST_0_i_13_n_0\,
      I1 => \q[6]_INST_0_i_14_n_0\,
      O => \q[6]_INST_0_i_5_n_0\,
      S => a(2)
    );
\q[6]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[6]_INST_0_i_15_n_0\,
      I1 => \q[6]_INST_0_i_16_n_0\,
      O => \q[6]_INST_0_i_6_n_0\,
      S => a(2)
    );
\q[6]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[6]_INST_0_i_17_n_0\,
      I1 => \q[6]_INST_0_i_18_n_0\,
      O => \q[6]_INST_0_i_7_n_0\,
      S => a(2)
    );
\q[6]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[6]_INST_0_i_19_n_0\,
      I1 => \q[6]_INST_0_i_20_n_0\,
      O => \q[6]_INST_0_i_8_n_0\,
      S => a(2)
    );
\q[6]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[6]_INST_0_i_21_n_0\,
      I1 => \q[6]_INST_0_i_22_n_0\,
      O => \q[6]_INST_0_i_9_n_0\,
      S => a(2)
    );
\q[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[7]_INST_0_i_1_n_0\,
      I1 => \q[7]_INST_0_i_2_n_0\,
      I2 => a(5),
      I3 => \q[7]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \q[7]_INST_0_i_4_n_0\,
      O => q(7)
    );
\q[7]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[7]_INST_0_i_5_n_0\,
      I1 => \q[7]_INST_0_i_6_n_0\,
      O => \q[7]_INST_0_i_1_n_0\,
      S => a(3)
    );
\q[7]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[7]_INST_0_i_23_n_0\,
      I1 => \q[7]_INST_0_i_24_n_0\,
      O => \q[7]_INST_0_i_10_n_0\,
      S => a(2)
    );
\q[7]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[7]_INST_0_i_25_n_0\,
      I1 => \q[7]_INST_0_i_26_n_0\,
      O => \q[7]_INST_0_i_11_n_0\,
      S => a(2)
    );
\q[7]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[7]_INST_0_i_27_n_0\,
      I1 => \q[7]_INST_0_i_28_n_0\,
      O => \q[7]_INST_0_i_12_n_0\,
      S => a(2)
    );
\q[7]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[51]\(7),
      I1 => \s_reg[50]\(7),
      I2 => a(1),
      I3 => \s_reg[49]\(7),
      I4 => a(0),
      I5 => \s_reg[48]\(7),
      O => \q[7]_INST_0_i_13_n_0\
    );
\q[7]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[55]\(7),
      I1 => \s_reg[54]\(7),
      I2 => a(1),
      I3 => \s_reg[53]\(7),
      I4 => a(0),
      I5 => \s_reg[52]\(7),
      O => \q[7]_INST_0_i_14_n_0\
    );
\q[7]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[59]\(7),
      I1 => \s_reg[58]\(7),
      I2 => a(1),
      I3 => \s_reg[57]\(7),
      I4 => a(0),
      I5 => \s_reg[56]\(7),
      O => \q[7]_INST_0_i_15_n_0\
    );
\q[7]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[63]\(7),
      I1 => \s_reg[62]\(7),
      I2 => a(1),
      I3 => \s_reg[61]\(7),
      I4 => a(0),
      I5 => \s_reg[60]\(7),
      O => \q[7]_INST_0_i_16_n_0\
    );
\q[7]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[35]\(7),
      I1 => \s_reg[34]\(7),
      I2 => a(1),
      I3 => \s_reg[33]\(7),
      I4 => a(0),
      I5 => \s_reg[32]\(7),
      O => \q[7]_INST_0_i_17_n_0\
    );
\q[7]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[39]\(7),
      I1 => \s_reg[38]\(7),
      I2 => a(1),
      I3 => \s_reg[37]\(7),
      I4 => a(0),
      I5 => \s_reg[36]\(7),
      O => \q[7]_INST_0_i_18_n_0\
    );
\q[7]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[43]\(7),
      I1 => \s_reg[42]\(7),
      I2 => a(1),
      I3 => \s_reg[41]\(7),
      I4 => a(0),
      I5 => \s_reg[40]\(7),
      O => \q[7]_INST_0_i_19_n_0\
    );
\q[7]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[7]_INST_0_i_7_n_0\,
      I1 => \q[7]_INST_0_i_8_n_0\,
      O => \q[7]_INST_0_i_2_n_0\,
      S => a(3)
    );
\q[7]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[47]\(7),
      I1 => \s_reg[46]\(7),
      I2 => a(1),
      I3 => \s_reg[45]\(7),
      I4 => a(0),
      I5 => \s_reg[44]\(7),
      O => \q[7]_INST_0_i_20_n_0\
    );
\q[7]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[19]\(7),
      I1 => \s_reg[18]\(7),
      I2 => a(1),
      I3 => \s_reg[17]\(7),
      I4 => a(0),
      I5 => \s_reg[16]\(7),
      O => \q[7]_INST_0_i_21_n_0\
    );
\q[7]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[23]\(7),
      I1 => \s_reg[22]\(7),
      I2 => a(1),
      I3 => \s_reg[21]\(7),
      I4 => a(0),
      I5 => \s_reg[20]\(7),
      O => \q[7]_INST_0_i_22_n_0\
    );
\q[7]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[27]\(7),
      I1 => \s_reg[26]\(7),
      I2 => a(1),
      I3 => \s_reg[25]\(7),
      I4 => a(0),
      I5 => \s_reg[24]\(7),
      O => \q[7]_INST_0_i_23_n_0\
    );
\q[7]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[31]\(7),
      I1 => \s_reg[30]\(7),
      I2 => a(1),
      I3 => \s_reg[29]\(7),
      I4 => a(0),
      I5 => \s_reg[28]\(7),
      O => \q[7]_INST_0_i_24_n_0\
    );
\q[7]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\(7),
      I1 => \s_reg[2]\(7),
      I2 => a(1),
      I3 => \s_reg[1]\(7),
      I4 => a(0),
      I5 => d(7),
      O => \q[7]_INST_0_i_25_n_0\
    );
\q[7]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\(7),
      I1 => \s_reg[6]\(7),
      I2 => a(1),
      I3 => \s_reg[5]\(7),
      I4 => a(0),
      I5 => \s_reg[4]\(7),
      O => \q[7]_INST_0_i_26_n_0\
    );
\q[7]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\(7),
      I1 => \s_reg[10]\(7),
      I2 => a(1),
      I3 => \s_reg[9]\(7),
      I4 => a(0),
      I5 => \s_reg[8]\(7),
      O => \q[7]_INST_0_i_27_n_0\
    );
\q[7]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\(7),
      I1 => \s_reg[14]\(7),
      I2 => a(1),
      I3 => \s_reg[13]\(7),
      I4 => a(0),
      I5 => \s_reg[12]\(7),
      O => \q[7]_INST_0_i_28_n_0\
    );
\q[7]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[7]_INST_0_i_9_n_0\,
      I1 => \q[7]_INST_0_i_10_n_0\,
      O => \q[7]_INST_0_i_3_n_0\,
      S => a(3)
    );
\q[7]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[7]_INST_0_i_11_n_0\,
      I1 => \q[7]_INST_0_i_12_n_0\,
      O => \q[7]_INST_0_i_4_n_0\,
      S => a(3)
    );
\q[7]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[7]_INST_0_i_13_n_0\,
      I1 => \q[7]_INST_0_i_14_n_0\,
      O => \q[7]_INST_0_i_5_n_0\,
      S => a(2)
    );
\q[7]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[7]_INST_0_i_15_n_0\,
      I1 => \q[7]_INST_0_i_16_n_0\,
      O => \q[7]_INST_0_i_6_n_0\,
      S => a(2)
    );
\q[7]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[7]_INST_0_i_17_n_0\,
      I1 => \q[7]_INST_0_i_18_n_0\,
      O => \q[7]_INST_0_i_7_n_0\,
      S => a(2)
    );
\q[7]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[7]_INST_0_i_19_n_0\,
      I1 => \q[7]_INST_0_i_20_n_0\,
      O => \q[7]_INST_0_i_8_n_0\,
      S => a(2)
    );
\q[7]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[7]_INST_0_i_21_n_0\,
      I1 => \q[7]_INST_0_i_22_n_0\,
      O => \q[7]_INST_0_i_9_n_0\,
      S => a(2)
    );
\q[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[8]_INST_0_i_1_n_0\,
      I1 => \q[8]_INST_0_i_2_n_0\,
      I2 => a(5),
      I3 => \q[8]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \q[8]_INST_0_i_4_n_0\,
      O => q(8)
    );
\q[8]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[8]_INST_0_i_5_n_0\,
      I1 => \q[8]_INST_0_i_6_n_0\,
      O => \q[8]_INST_0_i_1_n_0\,
      S => a(3)
    );
\q[8]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[8]_INST_0_i_23_n_0\,
      I1 => \q[8]_INST_0_i_24_n_0\,
      O => \q[8]_INST_0_i_10_n_0\,
      S => a(2)
    );
\q[8]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[8]_INST_0_i_25_n_0\,
      I1 => \q[8]_INST_0_i_26_n_0\,
      O => \q[8]_INST_0_i_11_n_0\,
      S => a(2)
    );
\q[8]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[8]_INST_0_i_27_n_0\,
      I1 => \q[8]_INST_0_i_28_n_0\,
      O => \q[8]_INST_0_i_12_n_0\,
      S => a(2)
    );
\q[8]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[51]\(8),
      I1 => \s_reg[50]\(8),
      I2 => a(1),
      I3 => \s_reg[49]\(8),
      I4 => a(0),
      I5 => \s_reg[48]\(8),
      O => \q[8]_INST_0_i_13_n_0\
    );
\q[8]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[55]\(8),
      I1 => \s_reg[54]\(8),
      I2 => a(1),
      I3 => \s_reg[53]\(8),
      I4 => a(0),
      I5 => \s_reg[52]\(8),
      O => \q[8]_INST_0_i_14_n_0\
    );
\q[8]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[59]\(8),
      I1 => \s_reg[58]\(8),
      I2 => a(1),
      I3 => \s_reg[57]\(8),
      I4 => a(0),
      I5 => \s_reg[56]\(8),
      O => \q[8]_INST_0_i_15_n_0\
    );
\q[8]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[63]\(8),
      I1 => \s_reg[62]\(8),
      I2 => a(1),
      I3 => \s_reg[61]\(8),
      I4 => a(0),
      I5 => \s_reg[60]\(8),
      O => \q[8]_INST_0_i_16_n_0\
    );
\q[8]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[35]\(8),
      I1 => \s_reg[34]\(8),
      I2 => a(1),
      I3 => \s_reg[33]\(8),
      I4 => a(0),
      I5 => \s_reg[32]\(8),
      O => \q[8]_INST_0_i_17_n_0\
    );
\q[8]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[39]\(8),
      I1 => \s_reg[38]\(8),
      I2 => a(1),
      I3 => \s_reg[37]\(8),
      I4 => a(0),
      I5 => \s_reg[36]\(8),
      O => \q[8]_INST_0_i_18_n_0\
    );
\q[8]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[43]\(8),
      I1 => \s_reg[42]\(8),
      I2 => a(1),
      I3 => \s_reg[41]\(8),
      I4 => a(0),
      I5 => \s_reg[40]\(8),
      O => \q[8]_INST_0_i_19_n_0\
    );
\q[8]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[8]_INST_0_i_7_n_0\,
      I1 => \q[8]_INST_0_i_8_n_0\,
      O => \q[8]_INST_0_i_2_n_0\,
      S => a(3)
    );
\q[8]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[47]\(8),
      I1 => \s_reg[46]\(8),
      I2 => a(1),
      I3 => \s_reg[45]\(8),
      I4 => a(0),
      I5 => \s_reg[44]\(8),
      O => \q[8]_INST_0_i_20_n_0\
    );
\q[8]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[19]\(8),
      I1 => \s_reg[18]\(8),
      I2 => a(1),
      I3 => \s_reg[17]\(8),
      I4 => a(0),
      I5 => \s_reg[16]\(8),
      O => \q[8]_INST_0_i_21_n_0\
    );
\q[8]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[23]\(8),
      I1 => \s_reg[22]\(8),
      I2 => a(1),
      I3 => \s_reg[21]\(8),
      I4 => a(0),
      I5 => \s_reg[20]\(8),
      O => \q[8]_INST_0_i_22_n_0\
    );
\q[8]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[27]\(8),
      I1 => \s_reg[26]\(8),
      I2 => a(1),
      I3 => \s_reg[25]\(8),
      I4 => a(0),
      I5 => \s_reg[24]\(8),
      O => \q[8]_INST_0_i_23_n_0\
    );
\q[8]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[31]\(8),
      I1 => \s_reg[30]\(8),
      I2 => a(1),
      I3 => \s_reg[29]\(8),
      I4 => a(0),
      I5 => \s_reg[28]\(8),
      O => \q[8]_INST_0_i_24_n_0\
    );
\q[8]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\(8),
      I1 => \s_reg[2]\(8),
      I2 => a(1),
      I3 => \s_reg[1]\(8),
      I4 => a(0),
      I5 => d(8),
      O => \q[8]_INST_0_i_25_n_0\
    );
\q[8]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\(8),
      I1 => \s_reg[6]\(8),
      I2 => a(1),
      I3 => \s_reg[5]\(8),
      I4 => a(0),
      I5 => \s_reg[4]\(8),
      O => \q[8]_INST_0_i_26_n_0\
    );
\q[8]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\(8),
      I1 => \s_reg[10]\(8),
      I2 => a(1),
      I3 => \s_reg[9]\(8),
      I4 => a(0),
      I5 => \s_reg[8]\(8),
      O => \q[8]_INST_0_i_27_n_0\
    );
\q[8]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\(8),
      I1 => \s_reg[14]\(8),
      I2 => a(1),
      I3 => \s_reg[13]\(8),
      I4 => a(0),
      I5 => \s_reg[12]\(8),
      O => \q[8]_INST_0_i_28_n_0\
    );
\q[8]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[8]_INST_0_i_9_n_0\,
      I1 => \q[8]_INST_0_i_10_n_0\,
      O => \q[8]_INST_0_i_3_n_0\,
      S => a(3)
    );
\q[8]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[8]_INST_0_i_11_n_0\,
      I1 => \q[8]_INST_0_i_12_n_0\,
      O => \q[8]_INST_0_i_4_n_0\,
      S => a(3)
    );
\q[8]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[8]_INST_0_i_13_n_0\,
      I1 => \q[8]_INST_0_i_14_n_0\,
      O => \q[8]_INST_0_i_5_n_0\,
      S => a(2)
    );
\q[8]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[8]_INST_0_i_15_n_0\,
      I1 => \q[8]_INST_0_i_16_n_0\,
      O => \q[8]_INST_0_i_6_n_0\,
      S => a(2)
    );
\q[8]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[8]_INST_0_i_17_n_0\,
      I1 => \q[8]_INST_0_i_18_n_0\,
      O => \q[8]_INST_0_i_7_n_0\,
      S => a(2)
    );
\q[8]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[8]_INST_0_i_19_n_0\,
      I1 => \q[8]_INST_0_i_20_n_0\,
      O => \q[8]_INST_0_i_8_n_0\,
      S => a(2)
    );
\q[8]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[8]_INST_0_i_21_n_0\,
      I1 => \q[8]_INST_0_i_22_n_0\,
      O => \q[8]_INST_0_i_9_n_0\,
      S => a(2)
    );
\q[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[9]_INST_0_i_1_n_0\,
      I1 => \q[9]_INST_0_i_2_n_0\,
      I2 => a(5),
      I3 => \q[9]_INST_0_i_3_n_0\,
      I4 => a(4),
      I5 => \q[9]_INST_0_i_4_n_0\,
      O => q(9)
    );
\q[9]_INST_0_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[9]_INST_0_i_5_n_0\,
      I1 => \q[9]_INST_0_i_6_n_0\,
      O => \q[9]_INST_0_i_1_n_0\,
      S => a(3)
    );
\q[9]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[9]_INST_0_i_23_n_0\,
      I1 => \q[9]_INST_0_i_24_n_0\,
      O => \q[9]_INST_0_i_10_n_0\,
      S => a(2)
    );
\q[9]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[9]_INST_0_i_25_n_0\,
      I1 => \q[9]_INST_0_i_26_n_0\,
      O => \q[9]_INST_0_i_11_n_0\,
      S => a(2)
    );
\q[9]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[9]_INST_0_i_27_n_0\,
      I1 => \q[9]_INST_0_i_28_n_0\,
      O => \q[9]_INST_0_i_12_n_0\,
      S => a(2)
    );
\q[9]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[51]\(9),
      I1 => \s_reg[50]\(9),
      I2 => a(1),
      I3 => \s_reg[49]\(9),
      I4 => a(0),
      I5 => \s_reg[48]\(9),
      O => \q[9]_INST_0_i_13_n_0\
    );
\q[9]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[55]\(9),
      I1 => \s_reg[54]\(9),
      I2 => a(1),
      I3 => \s_reg[53]\(9),
      I4 => a(0),
      I5 => \s_reg[52]\(9),
      O => \q[9]_INST_0_i_14_n_0\
    );
\q[9]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[59]\(9),
      I1 => \s_reg[58]\(9),
      I2 => a(1),
      I3 => \s_reg[57]\(9),
      I4 => a(0),
      I5 => \s_reg[56]\(9),
      O => \q[9]_INST_0_i_15_n_0\
    );
\q[9]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[63]\(9),
      I1 => \s_reg[62]\(9),
      I2 => a(1),
      I3 => \s_reg[61]\(9),
      I4 => a(0),
      I5 => \s_reg[60]\(9),
      O => \q[9]_INST_0_i_16_n_0\
    );
\q[9]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[35]\(9),
      I1 => \s_reg[34]\(9),
      I2 => a(1),
      I3 => \s_reg[33]\(9),
      I4 => a(0),
      I5 => \s_reg[32]\(9),
      O => \q[9]_INST_0_i_17_n_0\
    );
\q[9]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[39]\(9),
      I1 => \s_reg[38]\(9),
      I2 => a(1),
      I3 => \s_reg[37]\(9),
      I4 => a(0),
      I5 => \s_reg[36]\(9),
      O => \q[9]_INST_0_i_18_n_0\
    );
\q[9]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[43]\(9),
      I1 => \s_reg[42]\(9),
      I2 => a(1),
      I3 => \s_reg[41]\(9),
      I4 => a(0),
      I5 => \s_reg[40]\(9),
      O => \q[9]_INST_0_i_19_n_0\
    );
\q[9]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[9]_INST_0_i_7_n_0\,
      I1 => \q[9]_INST_0_i_8_n_0\,
      O => \q[9]_INST_0_i_2_n_0\,
      S => a(3)
    );
\q[9]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[47]\(9),
      I1 => \s_reg[46]\(9),
      I2 => a(1),
      I3 => \s_reg[45]\(9),
      I4 => a(0),
      I5 => \s_reg[44]\(9),
      O => \q[9]_INST_0_i_20_n_0\
    );
\q[9]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[19]\(9),
      I1 => \s_reg[18]\(9),
      I2 => a(1),
      I3 => \s_reg[17]\(9),
      I4 => a(0),
      I5 => \s_reg[16]\(9),
      O => \q[9]_INST_0_i_21_n_0\
    );
\q[9]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[23]\(9),
      I1 => \s_reg[22]\(9),
      I2 => a(1),
      I3 => \s_reg[21]\(9),
      I4 => a(0),
      I5 => \s_reg[20]\(9),
      O => \q[9]_INST_0_i_22_n_0\
    );
\q[9]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[27]\(9),
      I1 => \s_reg[26]\(9),
      I2 => a(1),
      I3 => \s_reg[25]\(9),
      I4 => a(0),
      I5 => \s_reg[24]\(9),
      O => \q[9]_INST_0_i_23_n_0\
    );
\q[9]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[31]\(9),
      I1 => \s_reg[30]\(9),
      I2 => a(1),
      I3 => \s_reg[29]\(9),
      I4 => a(0),
      I5 => \s_reg[28]\(9),
      O => \q[9]_INST_0_i_24_n_0\
    );
\q[9]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\(9),
      I1 => \s_reg[2]\(9),
      I2 => a(1),
      I3 => \s_reg[1]\(9),
      I4 => a(0),
      I5 => d(9),
      O => \q[9]_INST_0_i_25_n_0\
    );
\q[9]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\(9),
      I1 => \s_reg[6]\(9),
      I2 => a(1),
      I3 => \s_reg[5]\(9),
      I4 => a(0),
      I5 => \s_reg[4]\(9),
      O => \q[9]_INST_0_i_26_n_0\
    );
\q[9]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\(9),
      I1 => \s_reg[10]\(9),
      I2 => a(1),
      I3 => \s_reg[9]\(9),
      I4 => a(0),
      I5 => \s_reg[8]\(9),
      O => \q[9]_INST_0_i_27_n_0\
    );
\q[9]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\(9),
      I1 => \s_reg[14]\(9),
      I2 => a(1),
      I3 => \s_reg[13]\(9),
      I4 => a(0),
      I5 => \s_reg[12]\(9),
      O => \q[9]_INST_0_i_28_n_0\
    );
\q[9]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[9]_INST_0_i_9_n_0\,
      I1 => \q[9]_INST_0_i_10_n_0\,
      O => \q[9]_INST_0_i_3_n_0\,
      S => a(3)
    );
\q[9]_INST_0_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[9]_INST_0_i_11_n_0\,
      I1 => \q[9]_INST_0_i_12_n_0\,
      O => \q[9]_INST_0_i_4_n_0\,
      S => a(3)
    );
\q[9]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[9]_INST_0_i_13_n_0\,
      I1 => \q[9]_INST_0_i_14_n_0\,
      O => \q[9]_INST_0_i_5_n_0\,
      S => a(2)
    );
\q[9]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[9]_INST_0_i_15_n_0\,
      I1 => \q[9]_INST_0_i_16_n_0\,
      O => \q[9]_INST_0_i_6_n_0\,
      S => a(2)
    );
\q[9]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[9]_INST_0_i_17_n_0\,
      I1 => \q[9]_INST_0_i_18_n_0\,
      O => \q[9]_INST_0_i_7_n_0\,
      S => a(2)
    );
\q[9]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[9]_INST_0_i_19_n_0\,
      I1 => \q[9]_INST_0_i_20_n_0\,
      O => \q[9]_INST_0_i_8_n_0\,
      S => a(2)
    );
\q[9]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[9]_INST_0_i_21_n_0\,
      I1 => \q[9]_INST_0_i_22_n_0\,
      O => \q[9]_INST_0_i_9_n_0\,
      S => a(2)
    );
\s_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\(0),
      Q => \s_reg[10]\(0),
      R => '0'
    );
\s_reg[10][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\(10),
      Q => \s_reg[10]\(10),
      R => '0'
    );
\s_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\(1),
      Q => \s_reg[10]\(1),
      R => '0'
    );
\s_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\(2),
      Q => \s_reg[10]\(2),
      R => '0'
    );
\s_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\(3),
      Q => \s_reg[10]\(3),
      R => '0'
    );
\s_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\(4),
      Q => \s_reg[10]\(4),
      R => '0'
    );
\s_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\(5),
      Q => \s_reg[10]\(5),
      R => '0'
    );
\s_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\(6),
      Q => \s_reg[10]\(6),
      R => '0'
    );
\s_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\(7),
      Q => \s_reg[10]\(7),
      R => '0'
    );
\s_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\(8),
      Q => \s_reg[10]\(8),
      R => '0'
    );
\s_reg[10][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\(9),
      Q => \s_reg[10]\(9),
      R => '0'
    );
\s_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\(0),
      Q => \s_reg[11]\(0),
      R => '0'
    );
\s_reg[11][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\(10),
      Q => \s_reg[11]\(10),
      R => '0'
    );
\s_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\(1),
      Q => \s_reg[11]\(1),
      R => '0'
    );
\s_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\(2),
      Q => \s_reg[11]\(2),
      R => '0'
    );
\s_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\(3),
      Q => \s_reg[11]\(3),
      R => '0'
    );
\s_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\(4),
      Q => \s_reg[11]\(4),
      R => '0'
    );
\s_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\(5),
      Q => \s_reg[11]\(5),
      R => '0'
    );
\s_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\(6),
      Q => \s_reg[11]\(6),
      R => '0'
    );
\s_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\(7),
      Q => \s_reg[11]\(7),
      R => '0'
    );
\s_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\(8),
      Q => \s_reg[11]\(8),
      R => '0'
    );
\s_reg[11][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\(9),
      Q => \s_reg[11]\(9),
      R => '0'
    );
\s_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\(0),
      Q => \s_reg[12]\(0),
      R => '0'
    );
\s_reg[12][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\(10),
      Q => \s_reg[12]\(10),
      R => '0'
    );
\s_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\(1),
      Q => \s_reg[12]\(1),
      R => '0'
    );
\s_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\(2),
      Q => \s_reg[12]\(2),
      R => '0'
    );
\s_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\(3),
      Q => \s_reg[12]\(3),
      R => '0'
    );
\s_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\(4),
      Q => \s_reg[12]\(4),
      R => '0'
    );
\s_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\(5),
      Q => \s_reg[12]\(5),
      R => '0'
    );
\s_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\(6),
      Q => \s_reg[12]\(6),
      R => '0'
    );
\s_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\(7),
      Q => \s_reg[12]\(7),
      R => '0'
    );
\s_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\(8),
      Q => \s_reg[12]\(8),
      R => '0'
    );
\s_reg[12][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\(9),
      Q => \s_reg[12]\(9),
      R => '0'
    );
\s_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\(0),
      Q => \s_reg[13]\(0),
      R => '0'
    );
\s_reg[13][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\(10),
      Q => \s_reg[13]\(10),
      R => '0'
    );
\s_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\(1),
      Q => \s_reg[13]\(1),
      R => '0'
    );
\s_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\(2),
      Q => \s_reg[13]\(2),
      R => '0'
    );
\s_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\(3),
      Q => \s_reg[13]\(3),
      R => '0'
    );
\s_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\(4),
      Q => \s_reg[13]\(4),
      R => '0'
    );
\s_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\(5),
      Q => \s_reg[13]\(5),
      R => '0'
    );
\s_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\(6),
      Q => \s_reg[13]\(6),
      R => '0'
    );
\s_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\(7),
      Q => \s_reg[13]\(7),
      R => '0'
    );
\s_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\(8),
      Q => \s_reg[13]\(8),
      R => '0'
    );
\s_reg[13][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\(9),
      Q => \s_reg[13]\(9),
      R => '0'
    );
\s_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\(0),
      Q => \s_reg[14]\(0),
      R => '0'
    );
\s_reg[14][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\(10),
      Q => \s_reg[14]\(10),
      R => '0'
    );
\s_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\(1),
      Q => \s_reg[14]\(1),
      R => '0'
    );
\s_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\(2),
      Q => \s_reg[14]\(2),
      R => '0'
    );
\s_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\(3),
      Q => \s_reg[14]\(3),
      R => '0'
    );
\s_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\(4),
      Q => \s_reg[14]\(4),
      R => '0'
    );
\s_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\(5),
      Q => \s_reg[14]\(5),
      R => '0'
    );
\s_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\(6),
      Q => \s_reg[14]\(6),
      R => '0'
    );
\s_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\(7),
      Q => \s_reg[14]\(7),
      R => '0'
    );
\s_reg[14][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\(8),
      Q => \s_reg[14]\(8),
      R => '0'
    );
\s_reg[14][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\(9),
      Q => \s_reg[14]\(9),
      R => '0'
    );
\s_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\(0),
      Q => \s_reg[15]\(0),
      R => '0'
    );
\s_reg[15][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\(10),
      Q => \s_reg[15]\(10),
      R => '0'
    );
\s_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\(1),
      Q => \s_reg[15]\(1),
      R => '0'
    );
\s_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\(2),
      Q => \s_reg[15]\(2),
      R => '0'
    );
\s_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\(3),
      Q => \s_reg[15]\(3),
      R => '0'
    );
\s_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\(4),
      Q => \s_reg[15]\(4),
      R => '0'
    );
\s_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\(5),
      Q => \s_reg[15]\(5),
      R => '0'
    );
\s_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\(6),
      Q => \s_reg[15]\(6),
      R => '0'
    );
\s_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\(7),
      Q => \s_reg[15]\(7),
      R => '0'
    );
\s_reg[15][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\(8),
      Q => \s_reg[15]\(8),
      R => '0'
    );
\s_reg[15][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\(9),
      Q => \s_reg[15]\(9),
      R => '0'
    );
\s_reg[16][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[15]\(0),
      Q => \s_reg[16]\(0),
      R => '0'
    );
\s_reg[16][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[15]\(10),
      Q => \s_reg[16]\(10),
      R => '0'
    );
\s_reg[16][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[15]\(1),
      Q => \s_reg[16]\(1),
      R => '0'
    );
\s_reg[16][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[15]\(2),
      Q => \s_reg[16]\(2),
      R => '0'
    );
\s_reg[16][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[15]\(3),
      Q => \s_reg[16]\(3),
      R => '0'
    );
\s_reg[16][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[15]\(4),
      Q => \s_reg[16]\(4),
      R => '0'
    );
\s_reg[16][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[15]\(5),
      Q => \s_reg[16]\(5),
      R => '0'
    );
\s_reg[16][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[15]\(6),
      Q => \s_reg[16]\(6),
      R => '0'
    );
\s_reg[16][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[15]\(7),
      Q => \s_reg[16]\(7),
      R => '0'
    );
\s_reg[16][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[15]\(8),
      Q => \s_reg[16]\(8),
      R => '0'
    );
\s_reg[16][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[15]\(9),
      Q => \s_reg[16]\(9),
      R => '0'
    );
\s_reg[17][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[16]\(0),
      Q => \s_reg[17]\(0),
      R => '0'
    );
\s_reg[17][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[16]\(10),
      Q => \s_reg[17]\(10),
      R => '0'
    );
\s_reg[17][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[16]\(1),
      Q => \s_reg[17]\(1),
      R => '0'
    );
\s_reg[17][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[16]\(2),
      Q => \s_reg[17]\(2),
      R => '0'
    );
\s_reg[17][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[16]\(3),
      Q => \s_reg[17]\(3),
      R => '0'
    );
\s_reg[17][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[16]\(4),
      Q => \s_reg[17]\(4),
      R => '0'
    );
\s_reg[17][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[16]\(5),
      Q => \s_reg[17]\(5),
      R => '0'
    );
\s_reg[17][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[16]\(6),
      Q => \s_reg[17]\(6),
      R => '0'
    );
\s_reg[17][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[16]\(7),
      Q => \s_reg[17]\(7),
      R => '0'
    );
\s_reg[17][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[16]\(8),
      Q => \s_reg[17]\(8),
      R => '0'
    );
\s_reg[17][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[16]\(9),
      Q => \s_reg[17]\(9),
      R => '0'
    );
\s_reg[18][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[17]\(0),
      Q => \s_reg[18]\(0),
      R => '0'
    );
\s_reg[18][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[17]\(10),
      Q => \s_reg[18]\(10),
      R => '0'
    );
\s_reg[18][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[17]\(1),
      Q => \s_reg[18]\(1),
      R => '0'
    );
\s_reg[18][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[17]\(2),
      Q => \s_reg[18]\(2),
      R => '0'
    );
\s_reg[18][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[17]\(3),
      Q => \s_reg[18]\(3),
      R => '0'
    );
\s_reg[18][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[17]\(4),
      Q => \s_reg[18]\(4),
      R => '0'
    );
\s_reg[18][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[17]\(5),
      Q => \s_reg[18]\(5),
      R => '0'
    );
\s_reg[18][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[17]\(6),
      Q => \s_reg[18]\(6),
      R => '0'
    );
\s_reg[18][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[17]\(7),
      Q => \s_reg[18]\(7),
      R => '0'
    );
\s_reg[18][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[17]\(8),
      Q => \s_reg[18]\(8),
      R => '0'
    );
\s_reg[18][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[17]\(9),
      Q => \s_reg[18]\(9),
      R => '0'
    );
\s_reg[19][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[18]\(0),
      Q => \s_reg[19]\(0),
      R => '0'
    );
\s_reg[19][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[18]\(10),
      Q => \s_reg[19]\(10),
      R => '0'
    );
\s_reg[19][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[18]\(1),
      Q => \s_reg[19]\(1),
      R => '0'
    );
\s_reg[19][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[18]\(2),
      Q => \s_reg[19]\(2),
      R => '0'
    );
\s_reg[19][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[18]\(3),
      Q => \s_reg[19]\(3),
      R => '0'
    );
\s_reg[19][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[18]\(4),
      Q => \s_reg[19]\(4),
      R => '0'
    );
\s_reg[19][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[18]\(5),
      Q => \s_reg[19]\(5),
      R => '0'
    );
\s_reg[19][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[18]\(6),
      Q => \s_reg[19]\(6),
      R => '0'
    );
\s_reg[19][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[18]\(7),
      Q => \s_reg[19]\(7),
      R => '0'
    );
\s_reg[19][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[18]\(8),
      Q => \s_reg[19]\(8),
      R => '0'
    );
\s_reg[19][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[18]\(9),
      Q => \s_reg[19]\(9),
      R => '0'
    );
\s_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(0),
      Q => \s_reg[1]\(0),
      R => '0'
    );
\s_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(10),
      Q => \s_reg[1]\(10),
      R => '0'
    );
\s_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(1),
      Q => \s_reg[1]\(1),
      R => '0'
    );
\s_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(2),
      Q => \s_reg[1]\(2),
      R => '0'
    );
\s_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(3),
      Q => \s_reg[1]\(3),
      R => '0'
    );
\s_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(4),
      Q => \s_reg[1]\(4),
      R => '0'
    );
\s_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(5),
      Q => \s_reg[1]\(5),
      R => '0'
    );
\s_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(6),
      Q => \s_reg[1]\(6),
      R => '0'
    );
\s_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(7),
      Q => \s_reg[1]\(7),
      R => '0'
    );
\s_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(8),
      Q => \s_reg[1]\(8),
      R => '0'
    );
\s_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(9),
      Q => \s_reg[1]\(9),
      R => '0'
    );
\s_reg[20][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[19]\(0),
      Q => \s_reg[20]\(0),
      R => '0'
    );
\s_reg[20][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[19]\(10),
      Q => \s_reg[20]\(10),
      R => '0'
    );
\s_reg[20][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[19]\(1),
      Q => \s_reg[20]\(1),
      R => '0'
    );
\s_reg[20][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[19]\(2),
      Q => \s_reg[20]\(2),
      R => '0'
    );
\s_reg[20][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[19]\(3),
      Q => \s_reg[20]\(3),
      R => '0'
    );
\s_reg[20][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[19]\(4),
      Q => \s_reg[20]\(4),
      R => '0'
    );
\s_reg[20][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[19]\(5),
      Q => \s_reg[20]\(5),
      R => '0'
    );
\s_reg[20][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[19]\(6),
      Q => \s_reg[20]\(6),
      R => '0'
    );
\s_reg[20][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[19]\(7),
      Q => \s_reg[20]\(7),
      R => '0'
    );
\s_reg[20][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[19]\(8),
      Q => \s_reg[20]\(8),
      R => '0'
    );
\s_reg[20][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[19]\(9),
      Q => \s_reg[20]\(9),
      R => '0'
    );
\s_reg[21][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[20]\(0),
      Q => \s_reg[21]\(0),
      R => '0'
    );
\s_reg[21][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[20]\(10),
      Q => \s_reg[21]\(10),
      R => '0'
    );
\s_reg[21][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[20]\(1),
      Q => \s_reg[21]\(1),
      R => '0'
    );
\s_reg[21][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[20]\(2),
      Q => \s_reg[21]\(2),
      R => '0'
    );
\s_reg[21][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[20]\(3),
      Q => \s_reg[21]\(3),
      R => '0'
    );
\s_reg[21][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[20]\(4),
      Q => \s_reg[21]\(4),
      R => '0'
    );
\s_reg[21][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[20]\(5),
      Q => \s_reg[21]\(5),
      R => '0'
    );
\s_reg[21][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[20]\(6),
      Q => \s_reg[21]\(6),
      R => '0'
    );
\s_reg[21][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[20]\(7),
      Q => \s_reg[21]\(7),
      R => '0'
    );
\s_reg[21][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[20]\(8),
      Q => \s_reg[21]\(8),
      R => '0'
    );
\s_reg[21][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[20]\(9),
      Q => \s_reg[21]\(9),
      R => '0'
    );
\s_reg[22][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[21]\(0),
      Q => \s_reg[22]\(0),
      R => '0'
    );
\s_reg[22][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[21]\(10),
      Q => \s_reg[22]\(10),
      R => '0'
    );
\s_reg[22][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[21]\(1),
      Q => \s_reg[22]\(1),
      R => '0'
    );
\s_reg[22][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[21]\(2),
      Q => \s_reg[22]\(2),
      R => '0'
    );
\s_reg[22][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[21]\(3),
      Q => \s_reg[22]\(3),
      R => '0'
    );
\s_reg[22][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[21]\(4),
      Q => \s_reg[22]\(4),
      R => '0'
    );
\s_reg[22][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[21]\(5),
      Q => \s_reg[22]\(5),
      R => '0'
    );
\s_reg[22][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[21]\(6),
      Q => \s_reg[22]\(6),
      R => '0'
    );
\s_reg[22][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[21]\(7),
      Q => \s_reg[22]\(7),
      R => '0'
    );
\s_reg[22][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[21]\(8),
      Q => \s_reg[22]\(8),
      R => '0'
    );
\s_reg[22][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[21]\(9),
      Q => \s_reg[22]\(9),
      R => '0'
    );
\s_reg[23][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[22]\(0),
      Q => \s_reg[23]\(0),
      R => '0'
    );
\s_reg[23][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[22]\(10),
      Q => \s_reg[23]\(10),
      R => '0'
    );
\s_reg[23][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[22]\(1),
      Q => \s_reg[23]\(1),
      R => '0'
    );
\s_reg[23][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[22]\(2),
      Q => \s_reg[23]\(2),
      R => '0'
    );
\s_reg[23][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[22]\(3),
      Q => \s_reg[23]\(3),
      R => '0'
    );
\s_reg[23][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[22]\(4),
      Q => \s_reg[23]\(4),
      R => '0'
    );
\s_reg[23][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[22]\(5),
      Q => \s_reg[23]\(5),
      R => '0'
    );
\s_reg[23][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[22]\(6),
      Q => \s_reg[23]\(6),
      R => '0'
    );
\s_reg[23][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[22]\(7),
      Q => \s_reg[23]\(7),
      R => '0'
    );
\s_reg[23][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[22]\(8),
      Q => \s_reg[23]\(8),
      R => '0'
    );
\s_reg[23][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[22]\(9),
      Q => \s_reg[23]\(9),
      R => '0'
    );
\s_reg[24][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[23]\(0),
      Q => \s_reg[24]\(0),
      R => '0'
    );
\s_reg[24][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[23]\(10),
      Q => \s_reg[24]\(10),
      R => '0'
    );
\s_reg[24][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[23]\(1),
      Q => \s_reg[24]\(1),
      R => '0'
    );
\s_reg[24][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[23]\(2),
      Q => \s_reg[24]\(2),
      R => '0'
    );
\s_reg[24][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[23]\(3),
      Q => \s_reg[24]\(3),
      R => '0'
    );
\s_reg[24][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[23]\(4),
      Q => \s_reg[24]\(4),
      R => '0'
    );
\s_reg[24][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[23]\(5),
      Q => \s_reg[24]\(5),
      R => '0'
    );
\s_reg[24][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[23]\(6),
      Q => \s_reg[24]\(6),
      R => '0'
    );
\s_reg[24][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[23]\(7),
      Q => \s_reg[24]\(7),
      R => '0'
    );
\s_reg[24][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[23]\(8),
      Q => \s_reg[24]\(8),
      R => '0'
    );
\s_reg[24][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[23]\(9),
      Q => \s_reg[24]\(9),
      R => '0'
    );
\s_reg[25][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[24]\(0),
      Q => \s_reg[25]\(0),
      R => '0'
    );
\s_reg[25][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[24]\(10),
      Q => \s_reg[25]\(10),
      R => '0'
    );
\s_reg[25][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[24]\(1),
      Q => \s_reg[25]\(1),
      R => '0'
    );
\s_reg[25][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[24]\(2),
      Q => \s_reg[25]\(2),
      R => '0'
    );
\s_reg[25][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[24]\(3),
      Q => \s_reg[25]\(3),
      R => '0'
    );
\s_reg[25][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[24]\(4),
      Q => \s_reg[25]\(4),
      R => '0'
    );
\s_reg[25][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[24]\(5),
      Q => \s_reg[25]\(5),
      R => '0'
    );
\s_reg[25][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[24]\(6),
      Q => \s_reg[25]\(6),
      R => '0'
    );
\s_reg[25][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[24]\(7),
      Q => \s_reg[25]\(7),
      R => '0'
    );
\s_reg[25][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[24]\(8),
      Q => \s_reg[25]\(8),
      R => '0'
    );
\s_reg[25][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[24]\(9),
      Q => \s_reg[25]\(9),
      R => '0'
    );
\s_reg[26][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[25]\(0),
      Q => \s_reg[26]\(0),
      R => '0'
    );
\s_reg[26][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[25]\(10),
      Q => \s_reg[26]\(10),
      R => '0'
    );
\s_reg[26][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[25]\(1),
      Q => \s_reg[26]\(1),
      R => '0'
    );
\s_reg[26][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[25]\(2),
      Q => \s_reg[26]\(2),
      R => '0'
    );
\s_reg[26][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[25]\(3),
      Q => \s_reg[26]\(3),
      R => '0'
    );
\s_reg[26][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[25]\(4),
      Q => \s_reg[26]\(4),
      R => '0'
    );
\s_reg[26][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[25]\(5),
      Q => \s_reg[26]\(5),
      R => '0'
    );
\s_reg[26][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[25]\(6),
      Q => \s_reg[26]\(6),
      R => '0'
    );
\s_reg[26][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[25]\(7),
      Q => \s_reg[26]\(7),
      R => '0'
    );
\s_reg[26][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[25]\(8),
      Q => \s_reg[26]\(8),
      R => '0'
    );
\s_reg[26][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[25]\(9),
      Q => \s_reg[26]\(9),
      R => '0'
    );
\s_reg[27][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[26]\(0),
      Q => \s_reg[27]\(0),
      R => '0'
    );
\s_reg[27][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[26]\(10),
      Q => \s_reg[27]\(10),
      R => '0'
    );
\s_reg[27][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[26]\(1),
      Q => \s_reg[27]\(1),
      R => '0'
    );
\s_reg[27][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[26]\(2),
      Q => \s_reg[27]\(2),
      R => '0'
    );
\s_reg[27][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[26]\(3),
      Q => \s_reg[27]\(3),
      R => '0'
    );
\s_reg[27][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[26]\(4),
      Q => \s_reg[27]\(4),
      R => '0'
    );
\s_reg[27][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[26]\(5),
      Q => \s_reg[27]\(5),
      R => '0'
    );
\s_reg[27][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[26]\(6),
      Q => \s_reg[27]\(6),
      R => '0'
    );
\s_reg[27][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[26]\(7),
      Q => \s_reg[27]\(7),
      R => '0'
    );
\s_reg[27][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[26]\(8),
      Q => \s_reg[27]\(8),
      R => '0'
    );
\s_reg[27][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[26]\(9),
      Q => \s_reg[27]\(9),
      R => '0'
    );
\s_reg[28][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[27]\(0),
      Q => \s_reg[28]\(0),
      R => '0'
    );
\s_reg[28][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[27]\(10),
      Q => \s_reg[28]\(10),
      R => '0'
    );
\s_reg[28][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[27]\(1),
      Q => \s_reg[28]\(1),
      R => '0'
    );
\s_reg[28][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[27]\(2),
      Q => \s_reg[28]\(2),
      R => '0'
    );
\s_reg[28][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[27]\(3),
      Q => \s_reg[28]\(3),
      R => '0'
    );
\s_reg[28][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[27]\(4),
      Q => \s_reg[28]\(4),
      R => '0'
    );
\s_reg[28][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[27]\(5),
      Q => \s_reg[28]\(5),
      R => '0'
    );
\s_reg[28][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[27]\(6),
      Q => \s_reg[28]\(6),
      R => '0'
    );
\s_reg[28][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[27]\(7),
      Q => \s_reg[28]\(7),
      R => '0'
    );
\s_reg[28][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[27]\(8),
      Q => \s_reg[28]\(8),
      R => '0'
    );
\s_reg[28][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[27]\(9),
      Q => \s_reg[28]\(9),
      R => '0'
    );
\s_reg[29][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[28]\(0),
      Q => \s_reg[29]\(0),
      R => '0'
    );
\s_reg[29][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[28]\(10),
      Q => \s_reg[29]\(10),
      R => '0'
    );
\s_reg[29][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[28]\(1),
      Q => \s_reg[29]\(1),
      R => '0'
    );
\s_reg[29][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[28]\(2),
      Q => \s_reg[29]\(2),
      R => '0'
    );
\s_reg[29][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[28]\(3),
      Q => \s_reg[29]\(3),
      R => '0'
    );
\s_reg[29][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[28]\(4),
      Q => \s_reg[29]\(4),
      R => '0'
    );
\s_reg[29][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[28]\(5),
      Q => \s_reg[29]\(5),
      R => '0'
    );
\s_reg[29][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[28]\(6),
      Q => \s_reg[29]\(6),
      R => '0'
    );
\s_reg[29][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[28]\(7),
      Q => \s_reg[29]\(7),
      R => '0'
    );
\s_reg[29][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[28]\(8),
      Q => \s_reg[29]\(8),
      R => '0'
    );
\s_reg[29][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[28]\(9),
      Q => \s_reg[29]\(9),
      R => '0'
    );
\s_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\(0),
      Q => \s_reg[2]\(0),
      R => '0'
    );
\s_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\(10),
      Q => \s_reg[2]\(10),
      R => '0'
    );
\s_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\(1),
      Q => \s_reg[2]\(1),
      R => '0'
    );
\s_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\(2),
      Q => \s_reg[2]\(2),
      R => '0'
    );
\s_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\(3),
      Q => \s_reg[2]\(3),
      R => '0'
    );
\s_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\(4),
      Q => \s_reg[2]\(4),
      R => '0'
    );
\s_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\(5),
      Q => \s_reg[2]\(5),
      R => '0'
    );
\s_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\(6),
      Q => \s_reg[2]\(6),
      R => '0'
    );
\s_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\(7),
      Q => \s_reg[2]\(7),
      R => '0'
    );
\s_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\(8),
      Q => \s_reg[2]\(8),
      R => '0'
    );
\s_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\(9),
      Q => \s_reg[2]\(9),
      R => '0'
    );
\s_reg[30][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[29]\(0),
      Q => \s_reg[30]\(0),
      R => '0'
    );
\s_reg[30][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[29]\(10),
      Q => \s_reg[30]\(10),
      R => '0'
    );
\s_reg[30][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[29]\(1),
      Q => \s_reg[30]\(1),
      R => '0'
    );
\s_reg[30][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[29]\(2),
      Q => \s_reg[30]\(2),
      R => '0'
    );
\s_reg[30][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[29]\(3),
      Q => \s_reg[30]\(3),
      R => '0'
    );
\s_reg[30][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[29]\(4),
      Q => \s_reg[30]\(4),
      R => '0'
    );
\s_reg[30][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[29]\(5),
      Q => \s_reg[30]\(5),
      R => '0'
    );
\s_reg[30][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[29]\(6),
      Q => \s_reg[30]\(6),
      R => '0'
    );
\s_reg[30][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[29]\(7),
      Q => \s_reg[30]\(7),
      R => '0'
    );
\s_reg[30][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[29]\(8),
      Q => \s_reg[30]\(8),
      R => '0'
    );
\s_reg[30][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[29]\(9),
      Q => \s_reg[30]\(9),
      R => '0'
    );
\s_reg[31][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[30]\(0),
      Q => \s_reg[31]\(0),
      R => '0'
    );
\s_reg[31][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[30]\(10),
      Q => \s_reg[31]\(10),
      R => '0'
    );
\s_reg[31][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[30]\(1),
      Q => \s_reg[31]\(1),
      R => '0'
    );
\s_reg[31][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[30]\(2),
      Q => \s_reg[31]\(2),
      R => '0'
    );
\s_reg[31][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[30]\(3),
      Q => \s_reg[31]\(3),
      R => '0'
    );
\s_reg[31][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[30]\(4),
      Q => \s_reg[31]\(4),
      R => '0'
    );
\s_reg[31][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[30]\(5),
      Q => \s_reg[31]\(5),
      R => '0'
    );
\s_reg[31][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[30]\(6),
      Q => \s_reg[31]\(6),
      R => '0'
    );
\s_reg[31][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[30]\(7),
      Q => \s_reg[31]\(7),
      R => '0'
    );
\s_reg[31][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[30]\(8),
      Q => \s_reg[31]\(8),
      R => '0'
    );
\s_reg[31][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[30]\(9),
      Q => \s_reg[31]\(9),
      R => '0'
    );
\s_reg[32][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[31]\(0),
      Q => \s_reg[32]\(0),
      R => '0'
    );
\s_reg[32][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[31]\(10),
      Q => \s_reg[32]\(10),
      R => '0'
    );
\s_reg[32][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[31]\(1),
      Q => \s_reg[32]\(1),
      R => '0'
    );
\s_reg[32][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[31]\(2),
      Q => \s_reg[32]\(2),
      R => '0'
    );
\s_reg[32][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[31]\(3),
      Q => \s_reg[32]\(3),
      R => '0'
    );
\s_reg[32][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[31]\(4),
      Q => \s_reg[32]\(4),
      R => '0'
    );
\s_reg[32][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[31]\(5),
      Q => \s_reg[32]\(5),
      R => '0'
    );
\s_reg[32][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[31]\(6),
      Q => \s_reg[32]\(6),
      R => '0'
    );
\s_reg[32][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[31]\(7),
      Q => \s_reg[32]\(7),
      R => '0'
    );
\s_reg[32][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[31]\(8),
      Q => \s_reg[32]\(8),
      R => '0'
    );
\s_reg[32][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[31]\(9),
      Q => \s_reg[32]\(9),
      R => '0'
    );
\s_reg[33][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[32]\(0),
      Q => \s_reg[33]\(0),
      R => '0'
    );
\s_reg[33][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[32]\(10),
      Q => \s_reg[33]\(10),
      R => '0'
    );
\s_reg[33][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[32]\(1),
      Q => \s_reg[33]\(1),
      R => '0'
    );
\s_reg[33][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[32]\(2),
      Q => \s_reg[33]\(2),
      R => '0'
    );
\s_reg[33][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[32]\(3),
      Q => \s_reg[33]\(3),
      R => '0'
    );
\s_reg[33][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[32]\(4),
      Q => \s_reg[33]\(4),
      R => '0'
    );
\s_reg[33][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[32]\(5),
      Q => \s_reg[33]\(5),
      R => '0'
    );
\s_reg[33][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[32]\(6),
      Q => \s_reg[33]\(6),
      R => '0'
    );
\s_reg[33][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[32]\(7),
      Q => \s_reg[33]\(7),
      R => '0'
    );
\s_reg[33][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[32]\(8),
      Q => \s_reg[33]\(8),
      R => '0'
    );
\s_reg[33][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[32]\(9),
      Q => \s_reg[33]\(9),
      R => '0'
    );
\s_reg[34][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[33]\(0),
      Q => \s_reg[34]\(0),
      R => '0'
    );
\s_reg[34][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[33]\(10),
      Q => \s_reg[34]\(10),
      R => '0'
    );
\s_reg[34][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[33]\(1),
      Q => \s_reg[34]\(1),
      R => '0'
    );
\s_reg[34][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[33]\(2),
      Q => \s_reg[34]\(2),
      R => '0'
    );
\s_reg[34][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[33]\(3),
      Q => \s_reg[34]\(3),
      R => '0'
    );
\s_reg[34][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[33]\(4),
      Q => \s_reg[34]\(4),
      R => '0'
    );
\s_reg[34][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[33]\(5),
      Q => \s_reg[34]\(5),
      R => '0'
    );
\s_reg[34][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[33]\(6),
      Q => \s_reg[34]\(6),
      R => '0'
    );
\s_reg[34][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[33]\(7),
      Q => \s_reg[34]\(7),
      R => '0'
    );
\s_reg[34][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[33]\(8),
      Q => \s_reg[34]\(8),
      R => '0'
    );
\s_reg[34][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[33]\(9),
      Q => \s_reg[34]\(9),
      R => '0'
    );
\s_reg[35][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[34]\(0),
      Q => \s_reg[35]\(0),
      R => '0'
    );
\s_reg[35][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[34]\(10),
      Q => \s_reg[35]\(10),
      R => '0'
    );
\s_reg[35][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[34]\(1),
      Q => \s_reg[35]\(1),
      R => '0'
    );
\s_reg[35][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[34]\(2),
      Q => \s_reg[35]\(2),
      R => '0'
    );
\s_reg[35][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[34]\(3),
      Q => \s_reg[35]\(3),
      R => '0'
    );
\s_reg[35][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[34]\(4),
      Q => \s_reg[35]\(4),
      R => '0'
    );
\s_reg[35][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[34]\(5),
      Q => \s_reg[35]\(5),
      R => '0'
    );
\s_reg[35][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[34]\(6),
      Q => \s_reg[35]\(6),
      R => '0'
    );
\s_reg[35][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[34]\(7),
      Q => \s_reg[35]\(7),
      R => '0'
    );
\s_reg[35][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[34]\(8),
      Q => \s_reg[35]\(8),
      R => '0'
    );
\s_reg[35][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[34]\(9),
      Q => \s_reg[35]\(9),
      R => '0'
    );
\s_reg[36][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[35]\(0),
      Q => \s_reg[36]\(0),
      R => '0'
    );
\s_reg[36][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[35]\(10),
      Q => \s_reg[36]\(10),
      R => '0'
    );
\s_reg[36][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[35]\(1),
      Q => \s_reg[36]\(1),
      R => '0'
    );
\s_reg[36][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[35]\(2),
      Q => \s_reg[36]\(2),
      R => '0'
    );
\s_reg[36][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[35]\(3),
      Q => \s_reg[36]\(3),
      R => '0'
    );
\s_reg[36][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[35]\(4),
      Q => \s_reg[36]\(4),
      R => '0'
    );
\s_reg[36][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[35]\(5),
      Q => \s_reg[36]\(5),
      R => '0'
    );
\s_reg[36][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[35]\(6),
      Q => \s_reg[36]\(6),
      R => '0'
    );
\s_reg[36][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[35]\(7),
      Q => \s_reg[36]\(7),
      R => '0'
    );
\s_reg[36][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[35]\(8),
      Q => \s_reg[36]\(8),
      R => '0'
    );
\s_reg[36][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[35]\(9),
      Q => \s_reg[36]\(9),
      R => '0'
    );
\s_reg[37][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[36]\(0),
      Q => \s_reg[37]\(0),
      R => '0'
    );
\s_reg[37][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[36]\(10),
      Q => \s_reg[37]\(10),
      R => '0'
    );
\s_reg[37][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[36]\(1),
      Q => \s_reg[37]\(1),
      R => '0'
    );
\s_reg[37][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[36]\(2),
      Q => \s_reg[37]\(2),
      R => '0'
    );
\s_reg[37][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[36]\(3),
      Q => \s_reg[37]\(3),
      R => '0'
    );
\s_reg[37][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[36]\(4),
      Q => \s_reg[37]\(4),
      R => '0'
    );
\s_reg[37][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[36]\(5),
      Q => \s_reg[37]\(5),
      R => '0'
    );
\s_reg[37][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[36]\(6),
      Q => \s_reg[37]\(6),
      R => '0'
    );
\s_reg[37][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[36]\(7),
      Q => \s_reg[37]\(7),
      R => '0'
    );
\s_reg[37][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[36]\(8),
      Q => \s_reg[37]\(8),
      R => '0'
    );
\s_reg[37][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[36]\(9),
      Q => \s_reg[37]\(9),
      R => '0'
    );
\s_reg[38][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[37]\(0),
      Q => \s_reg[38]\(0),
      R => '0'
    );
\s_reg[38][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[37]\(10),
      Q => \s_reg[38]\(10),
      R => '0'
    );
\s_reg[38][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[37]\(1),
      Q => \s_reg[38]\(1),
      R => '0'
    );
\s_reg[38][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[37]\(2),
      Q => \s_reg[38]\(2),
      R => '0'
    );
\s_reg[38][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[37]\(3),
      Q => \s_reg[38]\(3),
      R => '0'
    );
\s_reg[38][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[37]\(4),
      Q => \s_reg[38]\(4),
      R => '0'
    );
\s_reg[38][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[37]\(5),
      Q => \s_reg[38]\(5),
      R => '0'
    );
\s_reg[38][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[37]\(6),
      Q => \s_reg[38]\(6),
      R => '0'
    );
\s_reg[38][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[37]\(7),
      Q => \s_reg[38]\(7),
      R => '0'
    );
\s_reg[38][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[37]\(8),
      Q => \s_reg[38]\(8),
      R => '0'
    );
\s_reg[38][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[37]\(9),
      Q => \s_reg[38]\(9),
      R => '0'
    );
\s_reg[39][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[38]\(0),
      Q => \s_reg[39]\(0),
      R => '0'
    );
\s_reg[39][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[38]\(10),
      Q => \s_reg[39]\(10),
      R => '0'
    );
\s_reg[39][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[38]\(1),
      Q => \s_reg[39]\(1),
      R => '0'
    );
\s_reg[39][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[38]\(2),
      Q => \s_reg[39]\(2),
      R => '0'
    );
\s_reg[39][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[38]\(3),
      Q => \s_reg[39]\(3),
      R => '0'
    );
\s_reg[39][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[38]\(4),
      Q => \s_reg[39]\(4),
      R => '0'
    );
\s_reg[39][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[38]\(5),
      Q => \s_reg[39]\(5),
      R => '0'
    );
\s_reg[39][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[38]\(6),
      Q => \s_reg[39]\(6),
      R => '0'
    );
\s_reg[39][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[38]\(7),
      Q => \s_reg[39]\(7),
      R => '0'
    );
\s_reg[39][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[38]\(8),
      Q => \s_reg[39]\(8),
      R => '0'
    );
\s_reg[39][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[38]\(9),
      Q => \s_reg[39]\(9),
      R => '0'
    );
\s_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\(0),
      Q => \s_reg[3]\(0),
      R => '0'
    );
\s_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\(10),
      Q => \s_reg[3]\(10),
      R => '0'
    );
\s_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\(1),
      Q => \s_reg[3]\(1),
      R => '0'
    );
\s_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\(2),
      Q => \s_reg[3]\(2),
      R => '0'
    );
\s_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\(3),
      Q => \s_reg[3]\(3),
      R => '0'
    );
\s_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\(4),
      Q => \s_reg[3]\(4),
      R => '0'
    );
\s_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\(5),
      Q => \s_reg[3]\(5),
      R => '0'
    );
\s_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\(6),
      Q => \s_reg[3]\(6),
      R => '0'
    );
\s_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\(7),
      Q => \s_reg[3]\(7),
      R => '0'
    );
\s_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\(8),
      Q => \s_reg[3]\(8),
      R => '0'
    );
\s_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\(9),
      Q => \s_reg[3]\(9),
      R => '0'
    );
\s_reg[40][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[39]\(0),
      Q => \s_reg[40]\(0),
      R => '0'
    );
\s_reg[40][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[39]\(10),
      Q => \s_reg[40]\(10),
      R => '0'
    );
\s_reg[40][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[39]\(1),
      Q => \s_reg[40]\(1),
      R => '0'
    );
\s_reg[40][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[39]\(2),
      Q => \s_reg[40]\(2),
      R => '0'
    );
\s_reg[40][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[39]\(3),
      Q => \s_reg[40]\(3),
      R => '0'
    );
\s_reg[40][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[39]\(4),
      Q => \s_reg[40]\(4),
      R => '0'
    );
\s_reg[40][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[39]\(5),
      Q => \s_reg[40]\(5),
      R => '0'
    );
\s_reg[40][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[39]\(6),
      Q => \s_reg[40]\(6),
      R => '0'
    );
\s_reg[40][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[39]\(7),
      Q => \s_reg[40]\(7),
      R => '0'
    );
\s_reg[40][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[39]\(8),
      Q => \s_reg[40]\(8),
      R => '0'
    );
\s_reg[40][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[39]\(9),
      Q => \s_reg[40]\(9),
      R => '0'
    );
\s_reg[41][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[40]\(0),
      Q => \s_reg[41]\(0),
      R => '0'
    );
\s_reg[41][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[40]\(10),
      Q => \s_reg[41]\(10),
      R => '0'
    );
\s_reg[41][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[40]\(1),
      Q => \s_reg[41]\(1),
      R => '0'
    );
\s_reg[41][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[40]\(2),
      Q => \s_reg[41]\(2),
      R => '0'
    );
\s_reg[41][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[40]\(3),
      Q => \s_reg[41]\(3),
      R => '0'
    );
\s_reg[41][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[40]\(4),
      Q => \s_reg[41]\(4),
      R => '0'
    );
\s_reg[41][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[40]\(5),
      Q => \s_reg[41]\(5),
      R => '0'
    );
\s_reg[41][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[40]\(6),
      Q => \s_reg[41]\(6),
      R => '0'
    );
\s_reg[41][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[40]\(7),
      Q => \s_reg[41]\(7),
      R => '0'
    );
\s_reg[41][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[40]\(8),
      Q => \s_reg[41]\(8),
      R => '0'
    );
\s_reg[41][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[40]\(9),
      Q => \s_reg[41]\(9),
      R => '0'
    );
\s_reg[42][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[41]\(0),
      Q => \s_reg[42]\(0),
      R => '0'
    );
\s_reg[42][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[41]\(10),
      Q => \s_reg[42]\(10),
      R => '0'
    );
\s_reg[42][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[41]\(1),
      Q => \s_reg[42]\(1),
      R => '0'
    );
\s_reg[42][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[41]\(2),
      Q => \s_reg[42]\(2),
      R => '0'
    );
\s_reg[42][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[41]\(3),
      Q => \s_reg[42]\(3),
      R => '0'
    );
\s_reg[42][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[41]\(4),
      Q => \s_reg[42]\(4),
      R => '0'
    );
\s_reg[42][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[41]\(5),
      Q => \s_reg[42]\(5),
      R => '0'
    );
\s_reg[42][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[41]\(6),
      Q => \s_reg[42]\(6),
      R => '0'
    );
\s_reg[42][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[41]\(7),
      Q => \s_reg[42]\(7),
      R => '0'
    );
\s_reg[42][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[41]\(8),
      Q => \s_reg[42]\(8),
      R => '0'
    );
\s_reg[42][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[41]\(9),
      Q => \s_reg[42]\(9),
      R => '0'
    );
\s_reg[43][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[42]\(0),
      Q => \s_reg[43]\(0),
      R => '0'
    );
\s_reg[43][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[42]\(10),
      Q => \s_reg[43]\(10),
      R => '0'
    );
\s_reg[43][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[42]\(1),
      Q => \s_reg[43]\(1),
      R => '0'
    );
\s_reg[43][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[42]\(2),
      Q => \s_reg[43]\(2),
      R => '0'
    );
\s_reg[43][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[42]\(3),
      Q => \s_reg[43]\(3),
      R => '0'
    );
\s_reg[43][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[42]\(4),
      Q => \s_reg[43]\(4),
      R => '0'
    );
\s_reg[43][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[42]\(5),
      Q => \s_reg[43]\(5),
      R => '0'
    );
\s_reg[43][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[42]\(6),
      Q => \s_reg[43]\(6),
      R => '0'
    );
\s_reg[43][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[42]\(7),
      Q => \s_reg[43]\(7),
      R => '0'
    );
\s_reg[43][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[42]\(8),
      Q => \s_reg[43]\(8),
      R => '0'
    );
\s_reg[43][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[42]\(9),
      Q => \s_reg[43]\(9),
      R => '0'
    );
\s_reg[44][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[43]\(0),
      Q => \s_reg[44]\(0),
      R => '0'
    );
\s_reg[44][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[43]\(10),
      Q => \s_reg[44]\(10),
      R => '0'
    );
\s_reg[44][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[43]\(1),
      Q => \s_reg[44]\(1),
      R => '0'
    );
\s_reg[44][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[43]\(2),
      Q => \s_reg[44]\(2),
      R => '0'
    );
\s_reg[44][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[43]\(3),
      Q => \s_reg[44]\(3),
      R => '0'
    );
\s_reg[44][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[43]\(4),
      Q => \s_reg[44]\(4),
      R => '0'
    );
\s_reg[44][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[43]\(5),
      Q => \s_reg[44]\(5),
      R => '0'
    );
\s_reg[44][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[43]\(6),
      Q => \s_reg[44]\(6),
      R => '0'
    );
\s_reg[44][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[43]\(7),
      Q => \s_reg[44]\(7),
      R => '0'
    );
\s_reg[44][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[43]\(8),
      Q => \s_reg[44]\(8),
      R => '0'
    );
\s_reg[44][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[43]\(9),
      Q => \s_reg[44]\(9),
      R => '0'
    );
\s_reg[45][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[44]\(0),
      Q => \s_reg[45]\(0),
      R => '0'
    );
\s_reg[45][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[44]\(10),
      Q => \s_reg[45]\(10),
      R => '0'
    );
\s_reg[45][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[44]\(1),
      Q => \s_reg[45]\(1),
      R => '0'
    );
\s_reg[45][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[44]\(2),
      Q => \s_reg[45]\(2),
      R => '0'
    );
\s_reg[45][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[44]\(3),
      Q => \s_reg[45]\(3),
      R => '0'
    );
\s_reg[45][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[44]\(4),
      Q => \s_reg[45]\(4),
      R => '0'
    );
\s_reg[45][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[44]\(5),
      Q => \s_reg[45]\(5),
      R => '0'
    );
\s_reg[45][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[44]\(6),
      Q => \s_reg[45]\(6),
      R => '0'
    );
\s_reg[45][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[44]\(7),
      Q => \s_reg[45]\(7),
      R => '0'
    );
\s_reg[45][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[44]\(8),
      Q => \s_reg[45]\(8),
      R => '0'
    );
\s_reg[45][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[44]\(9),
      Q => \s_reg[45]\(9),
      R => '0'
    );
\s_reg[46][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[45]\(0),
      Q => \s_reg[46]\(0),
      R => '0'
    );
\s_reg[46][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[45]\(10),
      Q => \s_reg[46]\(10),
      R => '0'
    );
\s_reg[46][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[45]\(1),
      Q => \s_reg[46]\(1),
      R => '0'
    );
\s_reg[46][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[45]\(2),
      Q => \s_reg[46]\(2),
      R => '0'
    );
\s_reg[46][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[45]\(3),
      Q => \s_reg[46]\(3),
      R => '0'
    );
\s_reg[46][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[45]\(4),
      Q => \s_reg[46]\(4),
      R => '0'
    );
\s_reg[46][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[45]\(5),
      Q => \s_reg[46]\(5),
      R => '0'
    );
\s_reg[46][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[45]\(6),
      Q => \s_reg[46]\(6),
      R => '0'
    );
\s_reg[46][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[45]\(7),
      Q => \s_reg[46]\(7),
      R => '0'
    );
\s_reg[46][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[45]\(8),
      Q => \s_reg[46]\(8),
      R => '0'
    );
\s_reg[46][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[45]\(9),
      Q => \s_reg[46]\(9),
      R => '0'
    );
\s_reg[47][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[46]\(0),
      Q => \s_reg[47]\(0),
      R => '0'
    );
\s_reg[47][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[46]\(10),
      Q => \s_reg[47]\(10),
      R => '0'
    );
\s_reg[47][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[46]\(1),
      Q => \s_reg[47]\(1),
      R => '0'
    );
\s_reg[47][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[46]\(2),
      Q => \s_reg[47]\(2),
      R => '0'
    );
\s_reg[47][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[46]\(3),
      Q => \s_reg[47]\(3),
      R => '0'
    );
\s_reg[47][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[46]\(4),
      Q => \s_reg[47]\(4),
      R => '0'
    );
\s_reg[47][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[46]\(5),
      Q => \s_reg[47]\(5),
      R => '0'
    );
\s_reg[47][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[46]\(6),
      Q => \s_reg[47]\(6),
      R => '0'
    );
\s_reg[47][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[46]\(7),
      Q => \s_reg[47]\(7),
      R => '0'
    );
\s_reg[47][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[46]\(8),
      Q => \s_reg[47]\(8),
      R => '0'
    );
\s_reg[47][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[46]\(9),
      Q => \s_reg[47]\(9),
      R => '0'
    );
\s_reg[48][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[47]\(0),
      Q => \s_reg[48]\(0),
      R => '0'
    );
\s_reg[48][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[47]\(10),
      Q => \s_reg[48]\(10),
      R => '0'
    );
\s_reg[48][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[47]\(1),
      Q => \s_reg[48]\(1),
      R => '0'
    );
\s_reg[48][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[47]\(2),
      Q => \s_reg[48]\(2),
      R => '0'
    );
\s_reg[48][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[47]\(3),
      Q => \s_reg[48]\(3),
      R => '0'
    );
\s_reg[48][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[47]\(4),
      Q => \s_reg[48]\(4),
      R => '0'
    );
\s_reg[48][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[47]\(5),
      Q => \s_reg[48]\(5),
      R => '0'
    );
\s_reg[48][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[47]\(6),
      Q => \s_reg[48]\(6),
      R => '0'
    );
\s_reg[48][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[47]\(7),
      Q => \s_reg[48]\(7),
      R => '0'
    );
\s_reg[48][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[47]\(8),
      Q => \s_reg[48]\(8),
      R => '0'
    );
\s_reg[48][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[47]\(9),
      Q => \s_reg[48]\(9),
      R => '0'
    );
\s_reg[49][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[48]\(0),
      Q => \s_reg[49]\(0),
      R => '0'
    );
\s_reg[49][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[48]\(10),
      Q => \s_reg[49]\(10),
      R => '0'
    );
\s_reg[49][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[48]\(1),
      Q => \s_reg[49]\(1),
      R => '0'
    );
\s_reg[49][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[48]\(2),
      Q => \s_reg[49]\(2),
      R => '0'
    );
\s_reg[49][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[48]\(3),
      Q => \s_reg[49]\(3),
      R => '0'
    );
\s_reg[49][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[48]\(4),
      Q => \s_reg[49]\(4),
      R => '0'
    );
\s_reg[49][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[48]\(5),
      Q => \s_reg[49]\(5),
      R => '0'
    );
\s_reg[49][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[48]\(6),
      Q => \s_reg[49]\(6),
      R => '0'
    );
\s_reg[49][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[48]\(7),
      Q => \s_reg[49]\(7),
      R => '0'
    );
\s_reg[49][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[48]\(8),
      Q => \s_reg[49]\(8),
      R => '0'
    );
\s_reg[49][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[48]\(9),
      Q => \s_reg[49]\(9),
      R => '0'
    );
\s_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\(0),
      Q => \s_reg[4]\(0),
      R => '0'
    );
\s_reg[4][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\(10),
      Q => \s_reg[4]\(10),
      R => '0'
    );
\s_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\(1),
      Q => \s_reg[4]\(1),
      R => '0'
    );
\s_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\(2),
      Q => \s_reg[4]\(2),
      R => '0'
    );
\s_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\(3),
      Q => \s_reg[4]\(3),
      R => '0'
    );
\s_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\(4),
      Q => \s_reg[4]\(4),
      R => '0'
    );
\s_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\(5),
      Q => \s_reg[4]\(5),
      R => '0'
    );
\s_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\(6),
      Q => \s_reg[4]\(6),
      R => '0'
    );
\s_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\(7),
      Q => \s_reg[4]\(7),
      R => '0'
    );
\s_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\(8),
      Q => \s_reg[4]\(8),
      R => '0'
    );
\s_reg[4][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\(9),
      Q => \s_reg[4]\(9),
      R => '0'
    );
\s_reg[50][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[49]\(0),
      Q => \s_reg[50]\(0),
      R => '0'
    );
\s_reg[50][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[49]\(10),
      Q => \s_reg[50]\(10),
      R => '0'
    );
\s_reg[50][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[49]\(1),
      Q => \s_reg[50]\(1),
      R => '0'
    );
\s_reg[50][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[49]\(2),
      Q => \s_reg[50]\(2),
      R => '0'
    );
\s_reg[50][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[49]\(3),
      Q => \s_reg[50]\(3),
      R => '0'
    );
\s_reg[50][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[49]\(4),
      Q => \s_reg[50]\(4),
      R => '0'
    );
\s_reg[50][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[49]\(5),
      Q => \s_reg[50]\(5),
      R => '0'
    );
\s_reg[50][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[49]\(6),
      Q => \s_reg[50]\(6),
      R => '0'
    );
\s_reg[50][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[49]\(7),
      Q => \s_reg[50]\(7),
      R => '0'
    );
\s_reg[50][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[49]\(8),
      Q => \s_reg[50]\(8),
      R => '0'
    );
\s_reg[50][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[49]\(9),
      Q => \s_reg[50]\(9),
      R => '0'
    );
\s_reg[51][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[50]\(0),
      Q => \s_reg[51]\(0),
      R => '0'
    );
\s_reg[51][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[50]\(10),
      Q => \s_reg[51]\(10),
      R => '0'
    );
\s_reg[51][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[50]\(1),
      Q => \s_reg[51]\(1),
      R => '0'
    );
\s_reg[51][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[50]\(2),
      Q => \s_reg[51]\(2),
      R => '0'
    );
\s_reg[51][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[50]\(3),
      Q => \s_reg[51]\(3),
      R => '0'
    );
\s_reg[51][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[50]\(4),
      Q => \s_reg[51]\(4),
      R => '0'
    );
\s_reg[51][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[50]\(5),
      Q => \s_reg[51]\(5),
      R => '0'
    );
\s_reg[51][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[50]\(6),
      Q => \s_reg[51]\(6),
      R => '0'
    );
\s_reg[51][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[50]\(7),
      Q => \s_reg[51]\(7),
      R => '0'
    );
\s_reg[51][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[50]\(8),
      Q => \s_reg[51]\(8),
      R => '0'
    );
\s_reg[51][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[50]\(9),
      Q => \s_reg[51]\(9),
      R => '0'
    );
\s_reg[52][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[51]\(0),
      Q => \s_reg[52]\(0),
      R => '0'
    );
\s_reg[52][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[51]\(10),
      Q => \s_reg[52]\(10),
      R => '0'
    );
\s_reg[52][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[51]\(1),
      Q => \s_reg[52]\(1),
      R => '0'
    );
\s_reg[52][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[51]\(2),
      Q => \s_reg[52]\(2),
      R => '0'
    );
\s_reg[52][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[51]\(3),
      Q => \s_reg[52]\(3),
      R => '0'
    );
\s_reg[52][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[51]\(4),
      Q => \s_reg[52]\(4),
      R => '0'
    );
\s_reg[52][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[51]\(5),
      Q => \s_reg[52]\(5),
      R => '0'
    );
\s_reg[52][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[51]\(6),
      Q => \s_reg[52]\(6),
      R => '0'
    );
\s_reg[52][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[51]\(7),
      Q => \s_reg[52]\(7),
      R => '0'
    );
\s_reg[52][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[51]\(8),
      Q => \s_reg[52]\(8),
      R => '0'
    );
\s_reg[52][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[51]\(9),
      Q => \s_reg[52]\(9),
      R => '0'
    );
\s_reg[53][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[52]\(0),
      Q => \s_reg[53]\(0),
      R => '0'
    );
\s_reg[53][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[52]\(10),
      Q => \s_reg[53]\(10),
      R => '0'
    );
\s_reg[53][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[52]\(1),
      Q => \s_reg[53]\(1),
      R => '0'
    );
\s_reg[53][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[52]\(2),
      Q => \s_reg[53]\(2),
      R => '0'
    );
\s_reg[53][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[52]\(3),
      Q => \s_reg[53]\(3),
      R => '0'
    );
\s_reg[53][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[52]\(4),
      Q => \s_reg[53]\(4),
      R => '0'
    );
\s_reg[53][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[52]\(5),
      Q => \s_reg[53]\(5),
      R => '0'
    );
\s_reg[53][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[52]\(6),
      Q => \s_reg[53]\(6),
      R => '0'
    );
\s_reg[53][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[52]\(7),
      Q => \s_reg[53]\(7),
      R => '0'
    );
\s_reg[53][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[52]\(8),
      Q => \s_reg[53]\(8),
      R => '0'
    );
\s_reg[53][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[52]\(9),
      Q => \s_reg[53]\(9),
      R => '0'
    );
\s_reg[54][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[53]\(0),
      Q => \s_reg[54]\(0),
      R => '0'
    );
\s_reg[54][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[53]\(10),
      Q => \s_reg[54]\(10),
      R => '0'
    );
\s_reg[54][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[53]\(1),
      Q => \s_reg[54]\(1),
      R => '0'
    );
\s_reg[54][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[53]\(2),
      Q => \s_reg[54]\(2),
      R => '0'
    );
\s_reg[54][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[53]\(3),
      Q => \s_reg[54]\(3),
      R => '0'
    );
\s_reg[54][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[53]\(4),
      Q => \s_reg[54]\(4),
      R => '0'
    );
\s_reg[54][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[53]\(5),
      Q => \s_reg[54]\(5),
      R => '0'
    );
\s_reg[54][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[53]\(6),
      Q => \s_reg[54]\(6),
      R => '0'
    );
\s_reg[54][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[53]\(7),
      Q => \s_reg[54]\(7),
      R => '0'
    );
\s_reg[54][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[53]\(8),
      Q => \s_reg[54]\(8),
      R => '0'
    );
\s_reg[54][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[53]\(9),
      Q => \s_reg[54]\(9),
      R => '0'
    );
\s_reg[55][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[54]\(0),
      Q => \s_reg[55]\(0),
      R => '0'
    );
\s_reg[55][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[54]\(10),
      Q => \s_reg[55]\(10),
      R => '0'
    );
\s_reg[55][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[54]\(1),
      Q => \s_reg[55]\(1),
      R => '0'
    );
\s_reg[55][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[54]\(2),
      Q => \s_reg[55]\(2),
      R => '0'
    );
\s_reg[55][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[54]\(3),
      Q => \s_reg[55]\(3),
      R => '0'
    );
\s_reg[55][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[54]\(4),
      Q => \s_reg[55]\(4),
      R => '0'
    );
\s_reg[55][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[54]\(5),
      Q => \s_reg[55]\(5),
      R => '0'
    );
\s_reg[55][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[54]\(6),
      Q => \s_reg[55]\(6),
      R => '0'
    );
\s_reg[55][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[54]\(7),
      Q => \s_reg[55]\(7),
      R => '0'
    );
\s_reg[55][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[54]\(8),
      Q => \s_reg[55]\(8),
      R => '0'
    );
\s_reg[55][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[54]\(9),
      Q => \s_reg[55]\(9),
      R => '0'
    );
\s_reg[56][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[55]\(0),
      Q => \s_reg[56]\(0),
      R => '0'
    );
\s_reg[56][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[55]\(10),
      Q => \s_reg[56]\(10),
      R => '0'
    );
\s_reg[56][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[55]\(1),
      Q => \s_reg[56]\(1),
      R => '0'
    );
\s_reg[56][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[55]\(2),
      Q => \s_reg[56]\(2),
      R => '0'
    );
\s_reg[56][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[55]\(3),
      Q => \s_reg[56]\(3),
      R => '0'
    );
\s_reg[56][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[55]\(4),
      Q => \s_reg[56]\(4),
      R => '0'
    );
\s_reg[56][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[55]\(5),
      Q => \s_reg[56]\(5),
      R => '0'
    );
\s_reg[56][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[55]\(6),
      Q => \s_reg[56]\(6),
      R => '0'
    );
\s_reg[56][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[55]\(7),
      Q => \s_reg[56]\(7),
      R => '0'
    );
\s_reg[56][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[55]\(8),
      Q => \s_reg[56]\(8),
      R => '0'
    );
\s_reg[56][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[55]\(9),
      Q => \s_reg[56]\(9),
      R => '0'
    );
\s_reg[57][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[56]\(0),
      Q => \s_reg[57]\(0),
      R => '0'
    );
\s_reg[57][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[56]\(10),
      Q => \s_reg[57]\(10),
      R => '0'
    );
\s_reg[57][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[56]\(1),
      Q => \s_reg[57]\(1),
      R => '0'
    );
\s_reg[57][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[56]\(2),
      Q => \s_reg[57]\(2),
      R => '0'
    );
\s_reg[57][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[56]\(3),
      Q => \s_reg[57]\(3),
      R => '0'
    );
\s_reg[57][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[56]\(4),
      Q => \s_reg[57]\(4),
      R => '0'
    );
\s_reg[57][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[56]\(5),
      Q => \s_reg[57]\(5),
      R => '0'
    );
\s_reg[57][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[56]\(6),
      Q => \s_reg[57]\(6),
      R => '0'
    );
\s_reg[57][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[56]\(7),
      Q => \s_reg[57]\(7),
      R => '0'
    );
\s_reg[57][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[56]\(8),
      Q => \s_reg[57]\(8),
      R => '0'
    );
\s_reg[57][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[56]\(9),
      Q => \s_reg[57]\(9),
      R => '0'
    );
\s_reg[58][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[57]\(0),
      Q => \s_reg[58]\(0),
      R => '0'
    );
\s_reg[58][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[57]\(10),
      Q => \s_reg[58]\(10),
      R => '0'
    );
\s_reg[58][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[57]\(1),
      Q => \s_reg[58]\(1),
      R => '0'
    );
\s_reg[58][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[57]\(2),
      Q => \s_reg[58]\(2),
      R => '0'
    );
\s_reg[58][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[57]\(3),
      Q => \s_reg[58]\(3),
      R => '0'
    );
\s_reg[58][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[57]\(4),
      Q => \s_reg[58]\(4),
      R => '0'
    );
\s_reg[58][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[57]\(5),
      Q => \s_reg[58]\(5),
      R => '0'
    );
\s_reg[58][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[57]\(6),
      Q => \s_reg[58]\(6),
      R => '0'
    );
\s_reg[58][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[57]\(7),
      Q => \s_reg[58]\(7),
      R => '0'
    );
\s_reg[58][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[57]\(8),
      Q => \s_reg[58]\(8),
      R => '0'
    );
\s_reg[58][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[57]\(9),
      Q => \s_reg[58]\(9),
      R => '0'
    );
\s_reg[59][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[58]\(0),
      Q => \s_reg[59]\(0),
      R => '0'
    );
\s_reg[59][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[58]\(10),
      Q => \s_reg[59]\(10),
      R => '0'
    );
\s_reg[59][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[58]\(1),
      Q => \s_reg[59]\(1),
      R => '0'
    );
\s_reg[59][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[58]\(2),
      Q => \s_reg[59]\(2),
      R => '0'
    );
\s_reg[59][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[58]\(3),
      Q => \s_reg[59]\(3),
      R => '0'
    );
\s_reg[59][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[58]\(4),
      Q => \s_reg[59]\(4),
      R => '0'
    );
\s_reg[59][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[58]\(5),
      Q => \s_reg[59]\(5),
      R => '0'
    );
\s_reg[59][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[58]\(6),
      Q => \s_reg[59]\(6),
      R => '0'
    );
\s_reg[59][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[58]\(7),
      Q => \s_reg[59]\(7),
      R => '0'
    );
\s_reg[59][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[58]\(8),
      Q => \s_reg[59]\(8),
      R => '0'
    );
\s_reg[59][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[58]\(9),
      Q => \s_reg[59]\(9),
      R => '0'
    );
\s_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\(0),
      Q => \s_reg[5]\(0),
      R => '0'
    );
\s_reg[5][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\(10),
      Q => \s_reg[5]\(10),
      R => '0'
    );
\s_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\(1),
      Q => \s_reg[5]\(1),
      R => '0'
    );
\s_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\(2),
      Q => \s_reg[5]\(2),
      R => '0'
    );
\s_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\(3),
      Q => \s_reg[5]\(3),
      R => '0'
    );
\s_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\(4),
      Q => \s_reg[5]\(4),
      R => '0'
    );
\s_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\(5),
      Q => \s_reg[5]\(5),
      R => '0'
    );
\s_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\(6),
      Q => \s_reg[5]\(6),
      R => '0'
    );
\s_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\(7),
      Q => \s_reg[5]\(7),
      R => '0'
    );
\s_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\(8),
      Q => \s_reg[5]\(8),
      R => '0'
    );
\s_reg[5][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\(9),
      Q => \s_reg[5]\(9),
      R => '0'
    );
\s_reg[60][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[59]\(0),
      Q => \s_reg[60]\(0),
      R => '0'
    );
\s_reg[60][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[59]\(10),
      Q => \s_reg[60]\(10),
      R => '0'
    );
\s_reg[60][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[59]\(1),
      Q => \s_reg[60]\(1),
      R => '0'
    );
\s_reg[60][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[59]\(2),
      Q => \s_reg[60]\(2),
      R => '0'
    );
\s_reg[60][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[59]\(3),
      Q => \s_reg[60]\(3),
      R => '0'
    );
\s_reg[60][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[59]\(4),
      Q => \s_reg[60]\(4),
      R => '0'
    );
\s_reg[60][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[59]\(5),
      Q => \s_reg[60]\(5),
      R => '0'
    );
\s_reg[60][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[59]\(6),
      Q => \s_reg[60]\(6),
      R => '0'
    );
\s_reg[60][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[59]\(7),
      Q => \s_reg[60]\(7),
      R => '0'
    );
\s_reg[60][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[59]\(8),
      Q => \s_reg[60]\(8),
      R => '0'
    );
\s_reg[60][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[59]\(9),
      Q => \s_reg[60]\(9),
      R => '0'
    );
\s_reg[61][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[60]\(0),
      Q => \s_reg[61]\(0),
      R => '0'
    );
\s_reg[61][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[60]\(10),
      Q => \s_reg[61]\(10),
      R => '0'
    );
\s_reg[61][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[60]\(1),
      Q => \s_reg[61]\(1),
      R => '0'
    );
\s_reg[61][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[60]\(2),
      Q => \s_reg[61]\(2),
      R => '0'
    );
\s_reg[61][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[60]\(3),
      Q => \s_reg[61]\(3),
      R => '0'
    );
\s_reg[61][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[60]\(4),
      Q => \s_reg[61]\(4),
      R => '0'
    );
\s_reg[61][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[60]\(5),
      Q => \s_reg[61]\(5),
      R => '0'
    );
\s_reg[61][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[60]\(6),
      Q => \s_reg[61]\(6),
      R => '0'
    );
\s_reg[61][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[60]\(7),
      Q => \s_reg[61]\(7),
      R => '0'
    );
\s_reg[61][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[60]\(8),
      Q => \s_reg[61]\(8),
      R => '0'
    );
\s_reg[61][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[60]\(9),
      Q => \s_reg[61]\(9),
      R => '0'
    );
\s_reg[62][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[61]\(0),
      Q => \s_reg[62]\(0),
      R => '0'
    );
\s_reg[62][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[61]\(10),
      Q => \s_reg[62]\(10),
      R => '0'
    );
\s_reg[62][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[61]\(1),
      Q => \s_reg[62]\(1),
      R => '0'
    );
\s_reg[62][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[61]\(2),
      Q => \s_reg[62]\(2),
      R => '0'
    );
\s_reg[62][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[61]\(3),
      Q => \s_reg[62]\(3),
      R => '0'
    );
\s_reg[62][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[61]\(4),
      Q => \s_reg[62]\(4),
      R => '0'
    );
\s_reg[62][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[61]\(5),
      Q => \s_reg[62]\(5),
      R => '0'
    );
\s_reg[62][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[61]\(6),
      Q => \s_reg[62]\(6),
      R => '0'
    );
\s_reg[62][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[61]\(7),
      Q => \s_reg[62]\(7),
      R => '0'
    );
\s_reg[62][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[61]\(8),
      Q => \s_reg[62]\(8),
      R => '0'
    );
\s_reg[62][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[61]\(9),
      Q => \s_reg[62]\(9),
      R => '0'
    );
\s_reg[63][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[62]\(0),
      Q => \s_reg[63]\(0),
      R => '0'
    );
\s_reg[63][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[62]\(10),
      Q => \s_reg[63]\(10),
      R => '0'
    );
\s_reg[63][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[62]\(1),
      Q => \s_reg[63]\(1),
      R => '0'
    );
\s_reg[63][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[62]\(2),
      Q => \s_reg[63]\(2),
      R => '0'
    );
\s_reg[63][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[62]\(3),
      Q => \s_reg[63]\(3),
      R => '0'
    );
\s_reg[63][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[62]\(4),
      Q => \s_reg[63]\(4),
      R => '0'
    );
\s_reg[63][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[62]\(5),
      Q => \s_reg[63]\(5),
      R => '0'
    );
\s_reg[63][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[62]\(6),
      Q => \s_reg[63]\(6),
      R => '0'
    );
\s_reg[63][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[62]\(7),
      Q => \s_reg[63]\(7),
      R => '0'
    );
\s_reg[63][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[62]\(8),
      Q => \s_reg[63]\(8),
      R => '0'
    );
\s_reg[63][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[62]\(9),
      Q => \s_reg[63]\(9),
      R => '0'
    );
\s_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\(0),
      Q => \s_reg[6]\(0),
      R => '0'
    );
\s_reg[6][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\(10),
      Q => \s_reg[6]\(10),
      R => '0'
    );
\s_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\(1),
      Q => \s_reg[6]\(1),
      R => '0'
    );
\s_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\(2),
      Q => \s_reg[6]\(2),
      R => '0'
    );
\s_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\(3),
      Q => \s_reg[6]\(3),
      R => '0'
    );
\s_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\(4),
      Q => \s_reg[6]\(4),
      R => '0'
    );
\s_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\(5),
      Q => \s_reg[6]\(5),
      R => '0'
    );
\s_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\(6),
      Q => \s_reg[6]\(6),
      R => '0'
    );
\s_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\(7),
      Q => \s_reg[6]\(7),
      R => '0'
    );
\s_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\(8),
      Q => \s_reg[6]\(8),
      R => '0'
    );
\s_reg[6][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\(9),
      Q => \s_reg[6]\(9),
      R => '0'
    );
\s_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\(0),
      Q => \s_reg[7]\(0),
      R => '0'
    );
\s_reg[7][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\(10),
      Q => \s_reg[7]\(10),
      R => '0'
    );
\s_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\(1),
      Q => \s_reg[7]\(1),
      R => '0'
    );
\s_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\(2),
      Q => \s_reg[7]\(2),
      R => '0'
    );
\s_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\(3),
      Q => \s_reg[7]\(3),
      R => '0'
    );
\s_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\(4),
      Q => \s_reg[7]\(4),
      R => '0'
    );
\s_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\(5),
      Q => \s_reg[7]\(5),
      R => '0'
    );
\s_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\(6),
      Q => \s_reg[7]\(6),
      R => '0'
    );
\s_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\(7),
      Q => \s_reg[7]\(7),
      R => '0'
    );
\s_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\(8),
      Q => \s_reg[7]\(8),
      R => '0'
    );
\s_reg[7][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\(9),
      Q => \s_reg[7]\(9),
      R => '0'
    );
\s_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\(0),
      Q => \s_reg[8]\(0),
      R => '0'
    );
\s_reg[8][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\(10),
      Q => \s_reg[8]\(10),
      R => '0'
    );
\s_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\(1),
      Q => \s_reg[8]\(1),
      R => '0'
    );
\s_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\(2),
      Q => \s_reg[8]\(2),
      R => '0'
    );
\s_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\(3),
      Q => \s_reg[8]\(3),
      R => '0'
    );
\s_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\(4),
      Q => \s_reg[8]\(4),
      R => '0'
    );
\s_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\(5),
      Q => \s_reg[8]\(5),
      R => '0'
    );
\s_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\(6),
      Q => \s_reg[8]\(6),
      R => '0'
    );
\s_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\(7),
      Q => \s_reg[8]\(7),
      R => '0'
    );
\s_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\(8),
      Q => \s_reg[8]\(8),
      R => '0'
    );
\s_reg[8][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\(9),
      Q => \s_reg[8]\(9),
      R => '0'
    );
\s_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\(0),
      Q => \s_reg[9]\(0),
      R => '0'
    );
\s_reg[9][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\(10),
      Q => \s_reg[9]\(10),
      R => '0'
    );
\s_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\(1),
      Q => \s_reg[9]\(1),
      R => '0'
    );
\s_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\(2),
      Q => \s_reg[9]\(2),
      R => '0'
    );
\s_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\(3),
      Q => \s_reg[9]\(3),
      R => '0'
    );
\s_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\(4),
      Q => \s_reg[9]\(4),
      R => '0'
    );
\s_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\(5),
      Q => \s_reg[9]\(5),
      R => '0'
    );
\s_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\(6),
      Q => \s_reg[9]\(6),
      R => '0'
    );
\s_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\(7),
      Q => \s_reg[9]\(7),
      R => '0'
    );
\s_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\(8),
      Q => \s_reg[9]\(8),
      R => '0'
    );
\s_reg[9][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\(9),
      Q => \s_reg[9]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_enc8b10b is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    k : in STD_LOGIC;
    q : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_enc8b10b : entity is "pdts_enc8b10b";
end design_1_pdts_endpoint_stdlog_0_0_pdts_enc8b10b;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_enc8b10b is
  signal alt6 : STD_LOGIC;
  signal dataOut : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal dataOut112_out : STD_LOGIC;
  signal dataOut122_out : STD_LOGIC;
  signal dataOut17_out : STD_LOGIC;
  signal disp : STD_LOGIC;
  signal dispOut1 : STD_LOGIC;
  signal dispOut143_out : STD_LOGIC;
  signal dispOut240_out : STD_LOGIC;
  signal disp_i_1_n_0 : STD_LOGIC;
  signal disp_i_3_n_0 : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_41_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of disp_i_3 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of disp_i_4 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \q[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \q[5]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q[5]_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q[9]_i_3\ : label is "soft_lutpair19";
begin
disp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000009C9C9C6C"
    )
        port map (
      I0 => dispOut143_out,
      I1 => disp,
      I2 => en,
      I3 => disp_i_3_n_0,
      I4 => dispOut1,
      I5 => rst,
      O => disp_i_1_n_0
    );
disp_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE8818137"
    )
        port map (
      I0 => d(4),
      I1 => d(2),
      I2 => d(3),
      I3 => d(1),
      I4 => d(0),
      I5 => k,
      O => dispOut143_out
    );
disp_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => d(5),
      I1 => d(6),
      O => disp_i_3_n_0
    );
disp_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => d(7),
      I1 => d(5),
      I2 => d(6),
      O => dispOut1
    );
disp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => disp_i_1_n_0,
      Q => disp,
      R => '0'
    );
\q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dataOut17_out,
      I1 => d(0),
      O => dataOut(0)
    );
\q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9555AAA9"
    )
        port map (
      I0 => dataOut17_out,
      I1 => d(2),
      I2 => d(3),
      I3 => d(0),
      I4 => d(1),
      O => dataOut(1)
    );
\q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555A9AAA9A9"
    )
        port map (
      I0 => dataOut17_out,
      I1 => d(0),
      I2 => d(1),
      I3 => d(4),
      I4 => d(3),
      I5 => d(2),
      O => dataOut(2)
    );
\q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9555AAAA"
    )
        port map (
      I0 => dataOut17_out,
      I1 => d(2),
      I2 => d(1),
      I3 => d(0),
      I4 => d(3),
      O => dataOut(3)
    );
\q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A595A595996"
    )
        port map (
      I0 => dataOut17_out,
      I1 => d(3),
      I2 => d(4),
      I3 => d(2),
      I4 => d(1),
      I5 => d(0),
      O => dataOut(4)
    );
\q[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dataOut17_out,
      I1 => dataOut112_out,
      O => dataOut(5)
    );
\q[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCFCCCCAAAAAAAA"
    )
        port map (
      I0 => dispOut240_out,
      I1 => p_41_in,
      I2 => d(3),
      I3 => d(4),
      I4 => p_11_in,
      I5 => disp,
      O => dataOut17_out
    );
\q[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9016176880161768"
    )
        port map (
      I0 => d(1),
      I1 => d(0),
      I2 => d(2),
      I3 => d(4),
      I4 => d(3),
      I5 => k,
      O => dataOut112_out
    );
\q[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00108117"
    )
        port map (
      I0 => d(0),
      I1 => d(1),
      I2 => d(3),
      I3 => d(2),
      I4 => d(4),
      O => dispOut240_out
    );
\q[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEAEAABAAAAAAAA"
    )
        port map (
      I0 => k,
      I1 => d(0),
      I2 => d(1),
      I3 => d(3),
      I4 => d(2),
      I5 => d(4),
      O => p_41_in
    );
\q[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => d(2),
      I1 => d(1),
      I2 => d(0),
      O => p_11_in
    );
\q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0FF00FF1F00FF00"
    )
        port map (
      I0 => alt6,
      I1 => k,
      I2 => d(6),
      I3 => d(5),
      I4 => d(7),
      I5 => dataOut122_out,
      O => dataOut(6)
    );
\q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6665"
    )
        port map (
      I0 => dataOut122_out,
      I1 => d(6),
      I2 => d(5),
      I3 => d(7),
      O => dataOut(7)
    );
\q[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dataOut122_out,
      I1 => d(7),
      O => dataOut(8)
    );
\q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFFF00FE0000FF0"
    )
        port map (
      I0 => alt6,
      I1 => k,
      I2 => d(6),
      I3 => d(5),
      I4 => d(7),
      I5 => dataOut122_out,
      O => dataOut(9)
    );
\q[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011428800000"
    )
        port map (
      I0 => disp,
      I1 => d(0),
      I2 => d(1),
      I3 => d(2),
      I4 => d(3),
      I5 => d(4),
      O => alt6
    );
\q[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BC0C02B"
    )
        port map (
      I0 => k,
      I1 => d(6),
      I2 => d(5),
      I3 => dispOut143_out,
      I4 => disp,
      O => dataOut122_out
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(0),
      Q => q(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(1),
      Q => q(1),
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(2),
      Q => q(2),
      R => '0'
    );
\q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(3),
      Q => q(3),
      R => '0'
    );
\q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(4),
      Q => q(4),
      R => '0'
    );
\q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(5),
      Q => q(5),
      R => '0'
    );
\q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(6),
      Q => q(6),
      R => '0'
    );
\q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(7),
      Q => q(7),
      R => '0'
    );
\q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(8),
      Q => q(8),
      R => '0'
    );
\q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => dataOut(9),
      Q => q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_idle_gen is
  port (
    \acmdw[last]\ : out STD_LOGIC;
    \acmd_out[d]1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_idle_gen : entity is "pdts_idle_gen";
end design_1_pdts_endpoint_stdlog_0_0_pdts_idle_gen;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_idle_gen is
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^acmdw[last]\ : STD_LOGIC;
  signal \ctr[5]_i_2_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_2__0_n_0\ : STD_LOGIC;
  signal ctr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ctr[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ctr[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \ctr[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ctr[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ctr[5]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ctr[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ctr[7]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of txphy_i_21 : label is "soft_lutpair27";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \acmdw[last]\ <= \^acmdw[last]\;
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => ctr_reg(4),
      I1 => ctr_reg(5),
      I2 => ctr_reg(6),
      I3 => ctr_reg(7),
      I4 => \FSM_sequential_state[1]_i_3_n_0\,
      O => \^acmdw[last]\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ctr_reg(1),
      I1 => ctr_reg(0),
      I2 => ctr_reg(3),
      I3 => ctr_reg(2),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\ctr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^acmdw[last]\,
      I1 => ctr_reg(0),
      O => p_0_in(0)
    );
\ctr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \^acmdw[last]\,
      I1 => ctr_reg(0),
      I2 => ctr_reg(1),
      O => p_0_in(1)
    );
\ctr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \^acmdw[last]\,
      I1 => ctr_reg(0),
      I2 => ctr_reg(1),
      I3 => ctr_reg(2),
      O => p_0_in(2)
    );
\ctr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \^acmdw[last]\,
      I1 => ctr_reg(1),
      I2 => ctr_reg(0),
      I3 => ctr_reg(2),
      I4 => ctr_reg(3),
      O => p_0_in(3)
    );
\ctr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => ctr_reg(3),
      I1 => ctr_reg(1),
      I2 => ctr_reg(0),
      I3 => ctr_reg(2),
      I4 => \^acmdw[last]\,
      I5 => ctr_reg(4),
      O => p_0_in(4)
    );
\ctr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \ctr[5]_i_2_n_0\,
      I1 => \^acmdw[last]\,
      I2 => ctr_reg(5),
      O => p_0_in(5)
    );
\ctr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => ctr_reg(4),
      I1 => ctr_reg(2),
      I2 => ctr_reg(0),
      I3 => ctr_reg(1),
      I4 => ctr_reg(3),
      O => \ctr[5]_i_2_n_0\
    );
\ctr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \ctr[7]_i_2__0_n_0\,
      I1 => \^acmdw[last]\,
      I2 => ctr_reg(6),
      O => p_0_in(6)
    );
\ctr[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => ctr_reg(6),
      I1 => \ctr[7]_i_2__0_n_0\,
      I2 => \^acmdw[last]\,
      I3 => ctr_reg(7),
      O => p_0_in(7)
    );
\ctr[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ctr_reg(5),
      I1 => ctr_reg(3),
      I2 => ctr_reg(1),
      I3 => ctr_reg(0),
      I4 => ctr_reg(2),
      I5 => ctr_reg(4),
      O => \ctr[7]_i_2__0_n_0\
    );
\ctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_in(0),
      Q => ctr_reg(0),
      R => \out\(0)
    );
\ctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_in(1),
      Q => ctr_reg(1),
      R => \out\(0)
    );
\ctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_in(2),
      Q => ctr_reg(2),
      R => \out\(0)
    );
\ctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_in(3),
      Q => ctr_reg(3),
      R => \out\(0)
    );
\ctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_in(4),
      Q => ctr_reg(4),
      R => \out\(0)
    );
\ctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_in(5),
      Q => ctr_reg(5),
      R => \out\(0)
    );
\ctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_in(6),
      Q => ctr_reg(6),
      R => \out\(0)
    );
\ctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_in(7),
      Q => ctr_reg(7),
      R => \out\(0)
    );
\r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(7),
      I3 => \^q\(3),
      O => p_0_out(0)
    );
\r_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => E(0),
      D => p_0_out(0),
      Q => \^q\(0),
      S => \out\(0)
    );
\r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(0),
      Q => \^q\(1),
      R => \out\(0)
    );
\r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(1),
      Q => \^q\(2),
      R => \out\(0)
    );
\r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(2),
      Q => \^q\(3),
      R => \out\(0)
    );
\r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(3),
      Q => \^q\(4),
      R => \out\(0)
    );
\r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(4),
      Q => \^q\(5),
      R => \out\(0)
    );
\r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(5),
      Q => \^q\(6),
      R => \out\(0)
    );
\r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(6),
      Q => \^q\(7),
      R => \out\(0)
    );
txphy_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => ctr_reg(4),
      I1 => ctr_reg(5),
      I2 => ctr_reg(6),
      I3 => ctr_reg(7),
      I4 => \FSM_sequential_state[1]_i_3_n_0\,
      O => \acmd_out[d]1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_rx_div_mmcm is
  port (
    phase_locked : out STD_LOGIC;
    clk : out STD_LOGIC;
    rec_clk : in STD_LOGIC;
    phase_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_rx_div_mmcm : entity is "pdts_rx_div_mmcm";
end design_1_pdts_endpoint_stdlog_0_0_pdts_rx_div_mmcm;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_rx_div_mmcm is
  signal bufgcp_n_0 : STD_LOGIC;
  signal clkfbin : STD_LOGIC;
  signal clkfbout : STD_LOGIC;
  signal clki : STD_LOGIC;
  signal scpyi : STD_LOGIC;
  signal NLW_mmcm_CDDCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of bufg0 : label is "BUFG";
  attribute box_type : string;
  attribute box_type of bufg0 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of bufgcp : label is "BUFG";
  attribute box_type of bufgcp : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of bufgfb : label is "BUFG";
  attribute box_type of bufgfb : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of mmcm : label is "MMCME2_BASE";
  attribute box_type of mmcm : label is "PRIMITIVE";
begin
bufg0: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => clki,
      O => clk
    );
bufgcp: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => scpyi,
      O => bufgcp_n_0
    );
bufgfb: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => clkfbout,
      O => clkfbin
    );
mmcm: unisim.vcomponents.MMCME4_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 4.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => "FALSE",
      CLKIN1_PERIOD => 3.200000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE_F => 20.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => "FALSE",
      CLKOUT1_DIVIDE => 4,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => "FALSE",
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => "FALSE",
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => "FALSE",
      CLKOUT4_CASCADE => "FALSE",
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => "FALSE",
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => "FALSE",
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => "FALSE",
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CDDCDONE => NLW_mmcm_CDDCDONE_UNCONNECTED,
      CDDCREQ => '0',
      CLKFBIN => clkfbin,
      CLKFBOUT => clkfbout,
      CLKFBOUTB => NLW_mmcm_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => rec_clk,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clki,
      CLKOUT0B => NLW_mmcm_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => scpyi,
      CLKOUT1B => NLW_mmcm_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => phase_locked,
      PSCLK => '0',
      PSDONE => NLW_mmcm_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => phase_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_scmd_merge is
  port (
    active : out STD_LOGIC;
    src : out STD_LOGIC;
    active_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    active0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    src_reg_0 : in STD_LOGIC;
    \^q\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stbo : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_scmd_merge : entity is "pdts_scmd_merge";
end design_1_pdts_endpoint_stdlog_0_0_pdts_scmd_merge;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_scmd_merge is
  signal \^active\ : STD_LOGIC;
  signal \^src\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of active_i_4 : label is "soft_lutpair31";
begin
  active <= \^active\;
  src <= \^src\;
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \^active\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(2),
      O => active_reg_0
    );
active_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \q_reg[2]\
    );
active_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => active0,
      Q => \^active\,
      R => \out\(0)
    );
\spctr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => stbo,
      I1 => \^src\,
      I2 => \out\(0),
      O => SR(0)
    );
src_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => src_reg_0,
      Q => \^src\,
      R => \out\(0)
    );
\w_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(0),
      Q => Q(0),
      R => '0'
    );
\w_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(1),
      Q => Q(1),
      R => '0'
    );
\w_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(2),
      Q => Q(2),
      R => '0'
    );
\w_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(3),
      Q => Q(3),
      R => '0'
    );
\w_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(4),
      Q => Q(4),
      R => '0'
    );
\w_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(5),
      Q => Q(5),
      R => '0'
    );
\w_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(6),
      Q => Q(6),
      R => '0'
    );
\w_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^q\(7),
      Q => Q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_synchro is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug : in STD_LOGIC_VECTOR ( 0 to 0 );
    sclk : in STD_LOGIC;
    rec_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_synchro : entity is "pdts_synchro";
end design_1_pdts_endpoint_stdlog_0_0_pdts_synchro;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_synchro is
  signal da : STD_LOGIC;
  signal db : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
  signal f_en : STD_LOGIC;
  attribute async_reg of f_en : signal is "yes";
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
      C => sclk,
      CE => '1',
      D => debug(0),
      Q => da,
      R => '0'
    );
\db_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => da,
      Q => db,
      R => '0'
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => db,
      Q => f_en,
      R => '0'
    );
\rctr[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => f_en,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_synchro_1 is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    rec_clk : in STD_LOGIC;
    sclk : in STD_LOGIC;
    td : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_synchro_1 : entity is "pdts_synchro";
end design_1_pdts_endpoint_stdlog_0_0_pdts_synchro_1;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_synchro_1 is
  signal da : STD_LOGIC;
  signal db : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
  signal \^out\ : STD_LOGIC;
  attribute async_reg of \out\ : signal is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \db_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \db_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \db_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \q_reg[0]\ : label is std.standard.true;
  attribute KEEP of \q_reg[0]\ : label is "yes";
begin
  \out\ <= \^out\;
\cctr[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\,
      I1 => td,
      O => E(0)
    );
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
      Q => \^out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txd : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    tx_en : in STD_LOGIC;
    \^q\ : in STD_LOGIC;
    sclk : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0\ : entity is "pdts_synchro";
end \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0\;

architecture STRUCTURE of \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0\ is
  signal da : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \da[3]_i_2_n_0\ : STD_LOGIC;
  signal db : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
  signal \^out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg of \^out\ : signal is "yes";
  signal p_2_out : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_4_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \da[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \da[1]_i_1\ : label is "soft_lutpair56";
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
  \out\(3 downto 0) <= \^out\(3 downto 0);
\da[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(5),
      I3 => Q(0),
      O => p_4_in
    );
\da[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(6),
      I2 => Q(0),
      I3 => Q(5),
      I4 => Q(4),
      O => p_2_out(1)
    );
\da[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(5),
      I4 => Q(2),
      I5 => Q(4),
      O => p_2_out(2)
    );
\da[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(6),
      I2 => Q(1),
      I3 => \da[3]_i_2_n_0\,
      I4 => Q(2),
      I5 => Q(4),
      O => p_2_out(3)
    );
\da[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(5),
      O => \da[3]_i_2_n_0\
    );
\da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => p_4_in,
      Q => da(0),
      R => '0'
    );
\da_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => p_2_out(1),
      Q => da(1),
      R => '0'
    );
\da_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => p_2_out(2),
      Q => da(2),
      R => '0'
    );
\da_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => p_2_out(3),
      Q => da(3),
      R => '0'
    );
\db_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => da(0),
      Q => db(0),
      R => '0'
    );
\db_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => da(1),
      Q => db(1),
      R => '0'
    );
\db_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => da(2),
      Q => db(2),
      R => '0'
    );
\db_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => da(3),
      Q => db(3),
      R => '0'
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => db(0),
      Q => \^out\(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => db(1),
      Q => \^out\(1),
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => db(2),
      Q => \^out\(2),
      R => '0'
    );
\q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => db(3),
      Q => \^out\(3),
      R => '0'
    );
txd_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^out\(2),
      I1 => tx_en,
      I2 => \^q\,
      O => txd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0_0\ is
  port (
    debug : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \FSM_onehot_state_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_onehot_state_reg[5]\ : in STD_LOGIC;
    adj_req : in STD_LOGIC;
    \da_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    sclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0_0\ : entity is "pdts_synchro";
end \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0_0\;

architecture STRUCTURE of \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0_0\ is
  signal \FSM_onehot_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_6_n_0\ : STD_LOGIC;
  signal da : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal db : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
  signal \^debug\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg of \^debug\ : signal is "yes";
  signal \^q_reg[1]_0\ : STD_LOGIC;
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
  debug(3 downto 0) <= \^debug\(3 downto 0);
  \q_reg[1]_0\ <= \^q_reg[1]_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \^q_reg[1]_0\,
      I1 => Q(0),
      I2 => \FSM_onehot_state_reg[0]\,
      I3 => \FSM_onehot_state_reg[0]_0\,
      I4 => \FSM_onehot_state[0]_i_5_n_0\,
      I5 => \FSM_onehot_state[0]_i_6_n_0\,
      O => E(0)
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^debug\(2),
      I1 => \FSM_onehot_state_reg[5]\,
      I2 => \^debug\(3),
      I3 => \^debug\(1),
      O => \^q_reg[1]_0\
    );
\FSM_onehot_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFFFCAAAACFCC"
    )
        port map (
      I0 => Q(6),
      I1 => Q(4),
      I2 => adj_req,
      I3 => Q(3),
      I4 => \^debug\(3),
      I5 => Q(0),
      O => \FSM_onehot_state[0]_i_5_n_0\
    );
\FSM_onehot_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_1\,
      I1 => \FSM_onehot_state_reg[0]_2\,
      I2 => \^debug\(2),
      I3 => Q(4),
      I4 => \FSM_onehot_state_reg[5]\,
      I5 => Q(5),
      O => \FSM_onehot_state[0]_i_6_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF00"
    )
        port map (
      I0 => \^debug\(2),
      I1 => \FSM_onehot_state_reg[5]\,
      I2 => \^debug\(3),
      I3 => Q(0),
      O => D(0)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => Q(0),
      I1 => \^debug\(1),
      I2 => \^debug\(2),
      I3 => \FSM_onehot_state_reg[5]\,
      I4 => \^debug\(3),
      O => D(1)
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(4),
      I1 => \^debug\(3),
      I2 => \FSM_onehot_state_reg[5]\,
      O => D(2)
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFFFFEEEEEFEE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => \^debug\(3),
      I3 => Q(4),
      I4 => \FSM_onehot_state_reg[5]\,
      I5 => Q(3),
      O => D(3)
    );
\da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \da_reg[3]_0\(0),
      Q => da(0),
      R => '0'
    );
\da_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \da_reg[3]_0\(1),
      Q => da(1),
      R => '0'
    );
\da_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \da_reg[3]_0\(2),
      Q => da(2),
      R => '0'
    );
\da_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
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
      Q => \^debug\(3),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(1),
      Q => \^debug\(2),
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(2),
      Q => \^debug\(1),
      R => '0'
    );
\q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(3),
      Q => \^debug\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized1\ is
  port (
    \out\ : out STD_LOGIC;
    srst_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[15]\ : out STD_LOGIC;
    \da_reg[0]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    sclk : in STD_LOGIC;
    srst : in STD_LOGIC;
    \s_reg[4]\ : in STD_LOGIC;
    adj_req : in STD_LOGIC;
    ud : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized1\ : entity is "pdts_synchro";
end \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized1\;

architecture STRUCTURE of \design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized1\ is
  signal da : STD_LOGIC;
  signal db : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
  signal \^out\ : STD_LOGIC;
  attribute async_reg of \out\ : signal is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \db_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \db_reg[0]\ : label is "yes";
  attribute SHREG_EXTRACT of \db_reg[0]\ : label is "no";
  attribute ASYNC_REG_boolean of \q_reg[0]\ : label is std.standard.true;
  attribute KEEP of \q_reg[0]\ : label is "yes";
begin
  \out\ <= \^out\;
adj_req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011101010001010"
    )
        port map (
      I0 => srst,
      I1 => \s_reg[4]\,
      I2 => adj_req,
      I3 => ud,
      I4 => \^out\,
      I5 => Q(0),
      O => srst_0
    );
\da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \da_reg[0]_0\,
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
\fdel_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \s_reg[4]\,
      I1 => \^out\,
      I2 => srst,
      I3 => ud,
      O => E(0)
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db,
      Q => \^out\,
      R => '0'
    );
tx_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => Q(1),
      I1 => ud,
      I2 => \^out\,
      I3 => \s_reg[4]\,
      I4 => tx_en,
      O => \q_reg[15]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_tstamp is
  port (
    lock_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tstamp_i_reg[0]_0\ : out STD_LOGIC;
    tstamp : out STD_LOGIC_VECTOR ( 62 downto 0 );
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_stb : in STD_LOGIC;
    slen : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_first : in STD_LOGIC;
    q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_tstamp : entity is "pdts_tstamp";
end design_1_pdts_endpoint_stdlog_0_0_pdts_tstamp;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_tstamp is
  signal ctr0 : STD_LOGIC;
  signal \ctr[6]_i_2_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_3_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_4_n_0\ : STD_LOGIC;
  signal ctr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data : STD_LOGIC_VECTOR ( 63 downto 1 );
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
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
  signal pkt_end : STD_LOGIC;
  signal pkt_end_d : STD_LOGIC;
  signal pkt_end_i_1_n_0 : STD_LOGIC;
  signal pkt_end_i_2_n_0 : STD_LOGIC;
  signal \plusOp__4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal sr : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \sr[63]_i_2_n_0\ : STD_LOGIC;
  signal \sr[63]_i_3_n_0\ : STD_LOGIC;
  signal sr_0 : STD_LOGIC;
  signal \^tstamp\ : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal \tstamp_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \tstamp_i[15]_i_3_n_0\ : STD_LOGIC;
  signal \tstamp_i[15]_i_4_n_0\ : STD_LOGIC;
  signal \tstamp_i[15]_i_5_n_0\ : STD_LOGIC;
  signal \tstamp_i[15]_i_6_n_0\ : STD_LOGIC;
  signal \tstamp_i[15]_i_7_n_0\ : STD_LOGIC;
  signal \tstamp_i[15]_i_8_n_0\ : STD_LOGIC;
  signal \tstamp_i[15]_i_9_n_0\ : STD_LOGIC;
  signal \tstamp_i[23]_i_2_n_0\ : STD_LOGIC;
  signal \tstamp_i[23]_i_3_n_0\ : STD_LOGIC;
  signal \tstamp_i[23]_i_4_n_0\ : STD_LOGIC;
  signal \tstamp_i[23]_i_5_n_0\ : STD_LOGIC;
  signal \tstamp_i[23]_i_6_n_0\ : STD_LOGIC;
  signal \tstamp_i[23]_i_7_n_0\ : STD_LOGIC;
  signal \tstamp_i[23]_i_8_n_0\ : STD_LOGIC;
  signal \tstamp_i[23]_i_9_n_0\ : STD_LOGIC;
  signal \tstamp_i[31]_i_2_n_0\ : STD_LOGIC;
  signal \tstamp_i[31]_i_3_n_0\ : STD_LOGIC;
  signal \tstamp_i[31]_i_4_n_0\ : STD_LOGIC;
  signal \tstamp_i[31]_i_5_n_0\ : STD_LOGIC;
  signal \tstamp_i[31]_i_6_n_0\ : STD_LOGIC;
  signal \tstamp_i[31]_i_7_n_0\ : STD_LOGIC;
  signal \tstamp_i[31]_i_8_n_0\ : STD_LOGIC;
  signal \tstamp_i[31]_i_9_n_0\ : STD_LOGIC;
  signal \tstamp_i[39]_i_2_n_0\ : STD_LOGIC;
  signal \tstamp_i[39]_i_3_n_0\ : STD_LOGIC;
  signal \tstamp_i[39]_i_4_n_0\ : STD_LOGIC;
  signal \tstamp_i[39]_i_5_n_0\ : STD_LOGIC;
  signal \tstamp_i[39]_i_6_n_0\ : STD_LOGIC;
  signal \tstamp_i[39]_i_7_n_0\ : STD_LOGIC;
  signal \tstamp_i[39]_i_8_n_0\ : STD_LOGIC;
  signal \tstamp_i[39]_i_9_n_0\ : STD_LOGIC;
  signal \tstamp_i[47]_i_2_n_0\ : STD_LOGIC;
  signal \tstamp_i[47]_i_3_n_0\ : STD_LOGIC;
  signal \tstamp_i[47]_i_4_n_0\ : STD_LOGIC;
  signal \tstamp_i[47]_i_5_n_0\ : STD_LOGIC;
  signal \tstamp_i[47]_i_6_n_0\ : STD_LOGIC;
  signal \tstamp_i[47]_i_7_n_0\ : STD_LOGIC;
  signal \tstamp_i[47]_i_8_n_0\ : STD_LOGIC;
  signal \tstamp_i[47]_i_9_n_0\ : STD_LOGIC;
  signal \tstamp_i[55]_i_2_n_0\ : STD_LOGIC;
  signal \tstamp_i[55]_i_3_n_0\ : STD_LOGIC;
  signal \tstamp_i[55]_i_4_n_0\ : STD_LOGIC;
  signal \tstamp_i[55]_i_5_n_0\ : STD_LOGIC;
  signal \tstamp_i[55]_i_6_n_0\ : STD_LOGIC;
  signal \tstamp_i[55]_i_7_n_0\ : STD_LOGIC;
  signal \tstamp_i[55]_i_8_n_0\ : STD_LOGIC;
  signal \tstamp_i[55]_i_9_n_0\ : STD_LOGIC;
  signal \tstamp_i[63]_i_10_n_0\ : STD_LOGIC;
  signal \tstamp_i[63]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i[63]_i_3_n_0\ : STD_LOGIC;
  signal \tstamp_i[63]_i_4_n_0\ : STD_LOGIC;
  signal \tstamp_i[63]_i_5_n_0\ : STD_LOGIC;
  signal \tstamp_i[63]_i_6_n_0\ : STD_LOGIC;
  signal \tstamp_i[63]_i_7_n_0\ : STD_LOGIC;
  signal \tstamp_i[63]_i_8_n_0\ : STD_LOGIC;
  signal \tstamp_i[63]_i_9_n_0\ : STD_LOGIC;
  signal \tstamp_i[7]_i_10_n_0\ : STD_LOGIC;
  signal \tstamp_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \tstamp_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \tstamp_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \tstamp_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \tstamp_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \tstamp_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \tstamp_i[7]_i_8_n_0\ : STD_LOGIC;
  signal \tstamp_i[7]_i_9_n_0\ : STD_LOGIC;
  signal \^tstamp_i_reg[0]_0\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \tstamp_i_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \tstamp_i_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_10\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_11\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_12\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_13\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_14\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_15\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_8\ : STD_LOGIC;
  signal \tstamp_i_reg[31]_i_1_n_9\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_10\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_11\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_12\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_13\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_14\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_15\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_8\ : STD_LOGIC;
  signal \tstamp_i_reg[39]_i_1_n_9\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_10\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_11\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_12\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_13\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_14\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_15\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_8\ : STD_LOGIC;
  signal \tstamp_i_reg[47]_i_1_n_9\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_10\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_11\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_12\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_13\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_14\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_15\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_4\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_5\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_6\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_7\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_8\ : STD_LOGIC;
  signal \tstamp_i_reg[55]_i_1_n_9\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_1\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_10\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_11\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_12\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_13\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_14\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_15\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_2\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_3\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_4\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_5\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_6\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_7\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_8\ : STD_LOGIC;
  signal \tstamp_i_reg[63]_i_2_n_9\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \tstamp_i_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal NLW_lock1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_lock1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_lock1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_lock1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_tstamp_i_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctr[0]_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \ctr[1]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \ctr[2]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \ctr[3]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \ctr[4]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \ctr[6]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of init_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of lock_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of pkt_end_i_1 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of pkt_end_i_2 : label is "soft_lutpair63";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \sr[63]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \sr[63]_i_3\ : label is "soft_lutpair63";
  attribute ADDER_THRESHOLD of \tstamp_i_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \tstamp_i_reg[23]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \tstamp_i_reg[31]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \tstamp_i_reg[39]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \tstamp_i_reg[47]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \tstamp_i_reg[55]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \tstamp_i_reg[63]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \tstamp_i_reg[7]_i_1\ : label is 16;
begin
  lock_reg_0(0) <= \^lock_reg_0\(0);
  tstamp(62 downto 0) <= \^tstamp\(62 downto 0);
  \tstamp_i_reg[0]_0\ <= \^tstamp_i_reg[0]_0\;
\ctr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg(0),
      O => \plusOp__4\(0)
    );
\ctr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ctr_reg(0),
      I1 => ctr_reg(1),
      O => \plusOp__4\(1)
    );
\ctr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ctr_reg(1),
      I1 => ctr_reg(0),
      I2 => ctr_reg(2),
      O => \plusOp__4\(2)
    );
\ctr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ctr_reg(0),
      I1 => ctr_reg(1),
      I2 => ctr_reg(2),
      I3 => ctr_reg(3),
      O => \plusOp__4\(3)
    );
\ctr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ctr_reg(2),
      I1 => ctr_reg(1),
      I2 => ctr_reg(0),
      I3 => ctr_reg(3),
      I4 => ctr_reg(4),
      O => \plusOp__4\(4)
    );
\ctr[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ctr_reg(3),
      I1 => ctr_reg(0),
      I2 => ctr_reg(1),
      I3 => ctr_reg(2),
      I4 => ctr_reg(4),
      I5 => ctr_reg(5),
      O => \plusOp__4\(5)
    );
\ctr[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ctr_reg(4),
      I1 => ctr_reg(2),
      I2 => \ctr[6]_i_2_n_0\,
      I3 => ctr_reg(3),
      I4 => ctr_reg(5),
      I5 => ctr_reg(6),
      O => \plusOp__4\(6)
    );
\ctr[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ctr_reg(0),
      I1 => ctr_reg(1),
      O => \ctr[6]_i_2_n_0\
    );
\ctr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAA"
    )
        port map (
      I0 => \ctr[7]_i_3_n_0\,
      I1 => slen(0),
      I2 => s_stb,
      I3 => s_first,
      I4 => ctr_reg(6),
      I5 => ctr_reg(7),
      O => ctr0
    );
\ctr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ctr[7]_i_4_n_0\,
      I1 => ctr_reg(6),
      I2 => ctr_reg(7),
      O => \plusOp__4\(7)
    );
\ctr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ctr_reg(5),
      I1 => ctr_reg(4),
      I2 => ctr_reg(3),
      I3 => ctr_reg(2),
      I4 => ctr_reg(0),
      I5 => ctr_reg(1),
      O => \ctr[7]_i_3_n_0\
    );
\ctr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ctr_reg(5),
      I1 => ctr_reg(3),
      I2 => ctr_reg(0),
      I3 => ctr_reg(1),
      I4 => ctr_reg(2),
      I5 => ctr_reg(4),
      O => \ctr[7]_i_4_n_0\
    );
\ctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctr0,
      D => \plusOp__4\(0),
      Q => ctr_reg(0),
      R => \out\(0)
    );
\ctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctr0,
      D => \plusOp__4\(1),
      Q => ctr_reg(1),
      R => \out\(0)
    );
\ctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctr0,
      D => \plusOp__4\(2),
      Q => ctr_reg(2),
      R => \out\(0)
    );
\ctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctr0,
      D => \plusOp__4\(3),
      Q => ctr_reg(3),
      R => \out\(0)
    );
\ctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctr0,
      D => \plusOp__4\(4),
      Q => ctr_reg(4),
      R => \out\(0)
    );
\ctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctr0,
      D => \plusOp__4\(5),
      Q => ctr_reg(5),
      R => \out\(0)
    );
\ctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctr0,
      D => \plusOp__4\(6),
      Q => ctr_reg(6),
      R => \out\(0)
    );
\ctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctr0,
      D => \plusOp__4\(7),
      Q => ctr_reg(7),
      R => \out\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sr(8),
      O => \i__carry_i_1_n_0\
    );
init_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => pkt_end,
      I1 => \^lock_reg_0\(0),
      I2 => init,
      O => init_i_1_n_0
    );
init_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => init_i_1_n_0,
      Q => init,
      R => \out\(0)
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
      I0 => \^tstamp\(45),
      I1 => data(46),
      I2 => \^tstamp\(44),
      I3 => data(45),
      I4 => \^tstamp\(46),
      I5 => data(47),
      O => \lock1_carry__0_i_1_n_0\
    );
\lock1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(42),
      I1 => data(43),
      I2 => \^tstamp\(41),
      I3 => data(42),
      I4 => \^tstamp\(43),
      I5 => data(44),
      O => \lock1_carry__0_i_2_n_0\
    );
\lock1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(39),
      I1 => data(40),
      I2 => \^tstamp\(38),
      I3 => data(39),
      I4 => \^tstamp\(40),
      I5 => data(41),
      O => \lock1_carry__0_i_3_n_0\
    );
\lock1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(36),
      I1 => data(37),
      I2 => \^tstamp\(35),
      I3 => data(36),
      I4 => \^tstamp\(37),
      I5 => data(38),
      O => \lock1_carry__0_i_4_n_0\
    );
\lock1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(33),
      I1 => data(34),
      I2 => \^tstamp\(32),
      I3 => data(33),
      I4 => \^tstamp\(34),
      I5 => data(35),
      O => \lock1_carry__0_i_5_n_0\
    );
\lock1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(30),
      I1 => data(31),
      I2 => \^tstamp\(29),
      I3 => data(30),
      I4 => \^tstamp\(31),
      I5 => data(32),
      O => \lock1_carry__0_i_6_n_0\
    );
\lock1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(27),
      I1 => data(28),
      I2 => \^tstamp\(26),
      I3 => data(27),
      I4 => \^tstamp\(28),
      I5 => data(29),
      O => \lock1_carry__0_i_7_n_0\
    );
\lock1_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(24),
      I1 => data(25),
      I2 => \^tstamp\(23),
      I3 => data(24),
      I4 => \^tstamp\(25),
      I5 => data(26),
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
      I0 => data(63),
      I1 => \^tstamp\(62),
      O => \lock1_carry__1_i_1_n_0\
    );
\lock1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(60),
      I1 => data(61),
      I2 => \^tstamp\(59),
      I3 => data(60),
      I4 => \^tstamp\(61),
      I5 => data(62),
      O => \lock1_carry__1_i_2_n_0\
    );
\lock1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(57),
      I1 => data(58),
      I2 => \^tstamp\(56),
      I3 => data(57),
      I4 => \^tstamp\(58),
      I5 => data(59),
      O => \lock1_carry__1_i_3_n_0\
    );
\lock1_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(54),
      I1 => data(55),
      I2 => \^tstamp\(53),
      I3 => data(54),
      I4 => \^tstamp\(55),
      I5 => data(56),
      O => \lock1_carry__1_i_4_n_0\
    );
\lock1_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(51),
      I1 => data(52),
      I2 => \^tstamp\(50),
      I3 => data(51),
      I4 => \^tstamp\(52),
      I5 => data(53),
      O => \lock1_carry__1_i_5_n_0\
    );
\lock1_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(48),
      I1 => data(49),
      I2 => \^tstamp\(47),
      I3 => data(48),
      I4 => \^tstamp\(49),
      I5 => data(50),
      O => \lock1_carry__1_i_6_n_0\
    );
lock1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(21),
      I1 => data(22),
      I2 => \^tstamp\(20),
      I3 => data(21),
      I4 => \^tstamp\(22),
      I5 => data(23),
      O => lock1_carry_i_1_n_0
    );
lock1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(18),
      I1 => data(19),
      I2 => \^tstamp\(17),
      I3 => data(18),
      I4 => \^tstamp\(19),
      I5 => data(20),
      O => lock1_carry_i_2_n_0
    );
lock1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(15),
      I1 => data(16),
      I2 => \^tstamp\(14),
      I3 => data(15),
      I4 => \^tstamp\(16),
      I5 => data(17),
      O => lock1_carry_i_3_n_0
    );
lock1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(12),
      I1 => data(13),
      I2 => \^tstamp\(11),
      I3 => data(12),
      I4 => \^tstamp\(13),
      I5 => data(14),
      O => lock1_carry_i_4_n_0
    );
lock1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(9),
      I1 => data(10),
      I2 => \^tstamp\(8),
      I3 => data(9),
      I4 => \^tstamp\(10),
      I5 => data(11),
      O => lock1_carry_i_5_n_0
    );
lock1_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(6),
      I1 => data(7),
      I2 => \^tstamp\(5),
      I3 => data(6),
      I4 => \^tstamp\(7),
      I5 => data(8),
      O => lock1_carry_i_6_n_0
    );
lock1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(3),
      I1 => data(4),
      I2 => \^tstamp\(2),
      I3 => data(3),
      I4 => \^tstamp\(4),
      I5 => data(5),
      O => lock1_carry_i_7_n_0
    );
lock1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990000000000990"
    )
        port map (
      I0 => \^tstamp\(0),
      I1 => data(1),
      I2 => sr(0),
      I3 => \^tstamp_i_reg[0]_0\,
      I4 => \^tstamp\(1),
      I5 => data(2),
      O => lock1_carry_i_8_n_0
    );
lock_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02CECECE"
    )
        port map (
      I0 => pkt_end,
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => pkt_end_d,
      I4 => lock1,
      O => lock_i_1_n_0
    );
lock_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => lock_i_1_n_0,
      Q => \^lock_reg_0\(0),
      R => \out\(0)
    );
pkt_end_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pkt_end,
      Q => pkt_end_d,
      R => '0'
    );
pkt_end_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => ctr_reg(4),
      I1 => ctr_reg(5),
      I2 => ctr_reg(6),
      I3 => ctr_reg(7),
      I4 => pkt_end_i_2_n_0,
      O => pkt_end_i_1_n_0
    );
pkt_end_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ctr_reg(1),
      I1 => ctr_reg(0),
      I2 => ctr_reg(3),
      I3 => ctr_reg(2),
      O => pkt_end_i_2_n_0
    );
pkt_end_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pkt_end_i_1_n_0,
      Q => pkt_end,
      R => '0'
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => sr(0),
      CI_TOP => '0',
      CO(7) => \plusOp_inferred__0/i__carry_n_0\,
      CO(6) => \plusOp_inferred__0/i__carry_n_1\,
      CO(5) => \plusOp_inferred__0/i__carry_n_2\,
      CO(4) => \plusOp_inferred__0/i__carry_n_3\,
      CO(3) => \plusOp_inferred__0/i__carry_n_4\,
      CO(2) => \plusOp_inferred__0/i__carry_n_5\,
      CO(1) => \plusOp_inferred__0/i__carry_n_6\,
      CO(0) => \plusOp_inferred__0/i__carry_n_7\,
      DI(7) => sr(8),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => data(8 downto 1),
      S(7) => \i__carry_i_1_n_0\,
      S(6 downto 0) => sr(7 downto 1)
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
      O(7 downto 0) => data(16 downto 9),
      S(7 downto 0) => sr(16 downto 9)
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
      O(7 downto 0) => data(24 downto 17),
      S(7 downto 0) => sr(24 downto 17)
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
      O(7 downto 0) => data(32 downto 25),
      S(7 downto 0) => sr(32 downto 25)
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
      O(7 downto 0) => data(40 downto 33),
      S(7 downto 0) => sr(40 downto 33)
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
      O(7 downto 0) => data(48 downto 41),
      S(7 downto 0) => sr(48 downto 41)
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
      O(7 downto 0) => data(56 downto 49),
      S(7 downto 0) => sr(56 downto 49)
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
      O(6 downto 0) => data(63 downto 57),
      S(7) => '0',
      S(6 downto 0) => sr(63 downto 57)
    );
\sr[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => s_stb,
      I1 => \out\(0),
      I2 => \sr[63]_i_2_n_0\,
      I3 => ctr_reg(5),
      I4 => \sr[63]_i_3_n_0\,
      I5 => ctr0,
      O => sr_0
    );
\sr[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ctr_reg(6),
      I1 => ctr_reg(7),
      O => \sr[63]_i_2_n_0\
    );
\sr[63]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => ctr_reg(1),
      I1 => ctr_reg(3),
      I2 => ctr_reg(2),
      I3 => ctr_reg(4),
      O => \sr[63]_i_3_n_0\
    );
\sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(8),
      Q => sr(0),
      R => '0'
    );
\sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(18),
      Q => sr(10),
      R => '0'
    );
\sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(19),
      Q => sr(11),
      R => '0'
    );
\sr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(20),
      Q => sr(12),
      R => '0'
    );
\sr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(21),
      Q => sr(13),
      R => '0'
    );
\sr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(22),
      Q => sr(14),
      R => '0'
    );
\sr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(23),
      Q => sr(15),
      R => '0'
    );
\sr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(24),
      Q => sr(16),
      R => '0'
    );
\sr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(25),
      Q => sr(17),
      R => '0'
    );
\sr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(26),
      Q => sr(18),
      R => '0'
    );
\sr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(27),
      Q => sr(19),
      R => '0'
    );
\sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(9),
      Q => sr(1),
      R => '0'
    );
\sr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(28),
      Q => sr(20),
      R => '0'
    );
\sr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(29),
      Q => sr(21),
      R => '0'
    );
\sr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(30),
      Q => sr(22),
      R => '0'
    );
\sr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(31),
      Q => sr(23),
      R => '0'
    );
\sr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(32),
      Q => sr(24),
      R => '0'
    );
\sr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(33),
      Q => sr(25),
      R => '0'
    );
\sr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(34),
      Q => sr(26),
      R => '0'
    );
\sr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(35),
      Q => sr(27),
      R => '0'
    );
\sr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(36),
      Q => sr(28),
      R => '0'
    );
\sr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(37),
      Q => sr(29),
      R => '0'
    );
\sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(10),
      Q => sr(2),
      R => '0'
    );
\sr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(38),
      Q => sr(30),
      R => '0'
    );
\sr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(39),
      Q => sr(31),
      R => '0'
    );
\sr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(40),
      Q => sr(32),
      R => '0'
    );
\sr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(41),
      Q => sr(33),
      R => '0'
    );
\sr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(42),
      Q => sr(34),
      R => '0'
    );
\sr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(43),
      Q => sr(35),
      R => '0'
    );
\sr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(44),
      Q => sr(36),
      R => '0'
    );
\sr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(45),
      Q => sr(37),
      R => '0'
    );
\sr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(46),
      Q => sr(38),
      R => '0'
    );
\sr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(47),
      Q => sr(39),
      R => '0'
    );
\sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(11),
      Q => sr(3),
      R => '0'
    );
\sr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(48),
      Q => sr(40),
      R => '0'
    );
\sr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(49),
      Q => sr(41),
      R => '0'
    );
\sr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(50),
      Q => sr(42),
      R => '0'
    );
\sr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(51),
      Q => sr(43),
      R => '0'
    );
\sr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(52),
      Q => sr(44),
      R => '0'
    );
\sr_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(53),
      Q => sr(45),
      R => '0'
    );
\sr_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(54),
      Q => sr(46),
      R => '0'
    );
\sr_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(55),
      Q => sr(47),
      R => '0'
    );
\sr_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(56),
      Q => sr(48),
      R => '0'
    );
\sr_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(57),
      Q => sr(49),
      R => '0'
    );
\sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(12),
      Q => sr(4),
      R => '0'
    );
\sr_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(58),
      Q => sr(50),
      R => '0'
    );
\sr_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(59),
      Q => sr(51),
      R => '0'
    );
\sr_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(60),
      Q => sr(52),
      R => '0'
    );
\sr_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(61),
      Q => sr(53),
      R => '0'
    );
\sr_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(62),
      Q => sr(54),
      R => '0'
    );
\sr_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(63),
      Q => sr(55),
      R => '0'
    );
\sr_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => q(0),
      Q => sr(56),
      R => '0'
    );
\sr_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => q(1),
      Q => sr(57),
      R => '0'
    );
\sr_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => q(2),
      Q => sr(58),
      R => '0'
    );
\sr_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => q(3),
      Q => sr(59),
      R => '0'
    );
\sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(13),
      Q => sr(5),
      R => '0'
    );
\sr_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => q(4),
      Q => sr(60),
      R => '0'
    );
\sr_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => q(5),
      Q => sr(61),
      R => '0'
    );
\sr_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => q(6),
      Q => sr(62),
      R => '0'
    );
\sr_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => q(7),
      Q => sr(63),
      R => '0'
    );
\sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(14),
      Q => sr(6),
      R => '0'
    );
\sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(15),
      Q => sr(7),
      R => '0'
    );
\sr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(16),
      Q => sr(8),
      R => '0'
    );
\sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sr_0,
      D => sr(17),
      Q => sr(9),
      R => '0'
    );
\tstamp_i[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(15),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(14),
      O => \tstamp_i[15]_i_2_n_0\
    );
\tstamp_i[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(14),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(13),
      O => \tstamp_i[15]_i_3_n_0\
    );
\tstamp_i[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(13),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(12),
      O => \tstamp_i[15]_i_4_n_0\
    );
\tstamp_i[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(12),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(11),
      O => \tstamp_i[15]_i_5_n_0\
    );
\tstamp_i[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(11),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(10),
      O => \tstamp_i[15]_i_6_n_0\
    );
\tstamp_i[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(10),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(9),
      O => \tstamp_i[15]_i_7_n_0\
    );
\tstamp_i[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(9),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(8),
      O => \tstamp_i[15]_i_8_n_0\
    );
\tstamp_i[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(8),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(7),
      O => \tstamp_i[15]_i_9_n_0\
    );
\tstamp_i[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(23),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(22),
      O => \tstamp_i[23]_i_2_n_0\
    );
\tstamp_i[23]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(22),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(21),
      O => \tstamp_i[23]_i_3_n_0\
    );
\tstamp_i[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(21),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(20),
      O => \tstamp_i[23]_i_4_n_0\
    );
\tstamp_i[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(20),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(19),
      O => \tstamp_i[23]_i_5_n_0\
    );
\tstamp_i[23]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(19),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(18),
      O => \tstamp_i[23]_i_6_n_0\
    );
\tstamp_i[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(18),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(17),
      O => \tstamp_i[23]_i_7_n_0\
    );
\tstamp_i[23]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(17),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(16),
      O => \tstamp_i[23]_i_8_n_0\
    );
\tstamp_i[23]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(16),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(15),
      O => \tstamp_i[23]_i_9_n_0\
    );
\tstamp_i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(31),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(30),
      O => \tstamp_i[31]_i_2_n_0\
    );
\tstamp_i[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(30),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(29),
      O => \tstamp_i[31]_i_3_n_0\
    );
\tstamp_i[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(29),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(28),
      O => \tstamp_i[31]_i_4_n_0\
    );
\tstamp_i[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(28),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(27),
      O => \tstamp_i[31]_i_5_n_0\
    );
\tstamp_i[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(27),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(26),
      O => \tstamp_i[31]_i_6_n_0\
    );
\tstamp_i[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(26),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(25),
      O => \tstamp_i[31]_i_7_n_0\
    );
\tstamp_i[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(25),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(24),
      O => \tstamp_i[31]_i_8_n_0\
    );
\tstamp_i[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(24),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(23),
      O => \tstamp_i[31]_i_9_n_0\
    );
\tstamp_i[39]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(39),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(38),
      O => \tstamp_i[39]_i_2_n_0\
    );
\tstamp_i[39]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(38),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(37),
      O => \tstamp_i[39]_i_3_n_0\
    );
\tstamp_i[39]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(37),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(36),
      O => \tstamp_i[39]_i_4_n_0\
    );
\tstamp_i[39]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(36),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(35),
      O => \tstamp_i[39]_i_5_n_0\
    );
\tstamp_i[39]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(35),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(34),
      O => \tstamp_i[39]_i_6_n_0\
    );
\tstamp_i[39]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(34),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(33),
      O => \tstamp_i[39]_i_7_n_0\
    );
\tstamp_i[39]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(33),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(32),
      O => \tstamp_i[39]_i_8_n_0\
    );
\tstamp_i[39]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(32),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(31),
      O => \tstamp_i[39]_i_9_n_0\
    );
\tstamp_i[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(47),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(46),
      O => \tstamp_i[47]_i_2_n_0\
    );
\tstamp_i[47]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(46),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(45),
      O => \tstamp_i[47]_i_3_n_0\
    );
\tstamp_i[47]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(45),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(44),
      O => \tstamp_i[47]_i_4_n_0\
    );
\tstamp_i[47]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(44),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(43),
      O => \tstamp_i[47]_i_5_n_0\
    );
\tstamp_i[47]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(43),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(42),
      O => \tstamp_i[47]_i_6_n_0\
    );
\tstamp_i[47]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(42),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(41),
      O => \tstamp_i[47]_i_7_n_0\
    );
\tstamp_i[47]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(41),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(40),
      O => \tstamp_i[47]_i_8_n_0\
    );
\tstamp_i[47]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(40),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(39),
      O => \tstamp_i[47]_i_9_n_0\
    );
\tstamp_i[55]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(55),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(54),
      O => \tstamp_i[55]_i_2_n_0\
    );
\tstamp_i[55]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(54),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(53),
      O => \tstamp_i[55]_i_3_n_0\
    );
\tstamp_i[55]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(53),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(52),
      O => \tstamp_i[55]_i_4_n_0\
    );
\tstamp_i[55]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(52),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(51),
      O => \tstamp_i[55]_i_5_n_0\
    );
\tstamp_i[55]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(51),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(50),
      O => \tstamp_i[55]_i_6_n_0\
    );
\tstamp_i[55]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(50),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(49),
      O => \tstamp_i[55]_i_7_n_0\
    );
\tstamp_i[55]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(49),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(48),
      O => \tstamp_i[55]_i_8_n_0\
    );
\tstamp_i[55]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(48),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(47),
      O => \tstamp_i[55]_i_9_n_0\
    );
\tstamp_i[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => pkt_end,
      I1 => init,
      I2 => \^lock_reg_0\(0),
      O => \tstamp_i[63]_i_1_n_0\
    );
\tstamp_i[63]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(56),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(55),
      O => \tstamp_i[63]_i_10_n_0\
    );
\tstamp_i[63]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(63),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(62),
      O => \tstamp_i[63]_i_3_n_0\
    );
\tstamp_i[63]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(62),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(61),
      O => \tstamp_i[63]_i_4_n_0\
    );
\tstamp_i[63]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(61),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(60),
      O => \tstamp_i[63]_i_5_n_0\
    );
\tstamp_i[63]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(60),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(59),
      O => \tstamp_i[63]_i_6_n_0\
    );
\tstamp_i[63]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(59),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(58),
      O => \tstamp_i[63]_i_7_n_0\
    );
\tstamp_i[63]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(58),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(57),
      O => \tstamp_i[63]_i_8_n_0\
    );
\tstamp_i[63]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(57),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(56),
      O => \tstamp_i[63]_i_9_n_0\
    );
\tstamp_i[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5553"
    )
        port map (
      I0 => \^tstamp_i_reg[0]_0\,
      I1 => sr(0),
      I2 => init,
      I3 => \^lock_reg_0\(0),
      O => \tstamp_i[7]_i_10_n_0\
    );
\tstamp_i[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => sr(0),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp_i_reg[0]_0\,
      O => \tstamp_i[7]_i_2_n_0\
    );
\tstamp_i[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(7),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(6),
      O => \tstamp_i[7]_i_3_n_0\
    );
\tstamp_i[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(6),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(5),
      O => \tstamp_i[7]_i_4_n_0\
    );
\tstamp_i[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(5),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(4),
      O => \tstamp_i[7]_i_5_n_0\
    );
\tstamp_i[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(4),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(3),
      O => \tstamp_i[7]_i_6_n_0\
    );
\tstamp_i[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(3),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(2),
      O => \tstamp_i[7]_i_7_n_0\
    );
\tstamp_i[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(2),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(1),
      O => \tstamp_i[7]_i_8_n_0\
    );
\tstamp_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => data(1),
      I1 => \^lock_reg_0\(0),
      I2 => init,
      I3 => \^tstamp\(0),
      O => \tstamp_i[7]_i_9_n_0\
    );
\tstamp_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[7]_i_1_n_15\,
      Q => \^tstamp_i_reg[0]_0\,
      R => \out\(0)
    );
\tstamp_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[15]_i_1_n_13\,
      Q => \^tstamp\(9),
      R => \out\(0)
    );
\tstamp_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[15]_i_1_n_12\,
      Q => \^tstamp\(10),
      R => \out\(0)
    );
\tstamp_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[15]_i_1_n_11\,
      Q => \^tstamp\(11),
      R => \out\(0)
    );
\tstamp_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[15]_i_1_n_10\,
      Q => \^tstamp\(12),
      R => \out\(0)
    );
\tstamp_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[15]_i_1_n_9\,
      Q => \^tstamp\(13),
      R => \out\(0)
    );
\tstamp_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[15]_i_1_n_8\,
      Q => \^tstamp\(14),
      R => \out\(0)
    );
\tstamp_i_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_i_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \tstamp_i_reg[15]_i_1_n_0\,
      CO(6) => \tstamp_i_reg[15]_i_1_n_1\,
      CO(5) => \tstamp_i_reg[15]_i_1_n_2\,
      CO(4) => \tstamp_i_reg[15]_i_1_n_3\,
      CO(3) => \tstamp_i_reg[15]_i_1_n_4\,
      CO(2) => \tstamp_i_reg[15]_i_1_n_5\,
      CO(1) => \tstamp_i_reg[15]_i_1_n_6\,
      CO(0) => \tstamp_i_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tstamp_i_reg[15]_i_1_n_8\,
      O(6) => \tstamp_i_reg[15]_i_1_n_9\,
      O(5) => \tstamp_i_reg[15]_i_1_n_10\,
      O(4) => \tstamp_i_reg[15]_i_1_n_11\,
      O(3) => \tstamp_i_reg[15]_i_1_n_12\,
      O(2) => \tstamp_i_reg[15]_i_1_n_13\,
      O(1) => \tstamp_i_reg[15]_i_1_n_14\,
      O(0) => \tstamp_i_reg[15]_i_1_n_15\,
      S(7) => \tstamp_i[15]_i_2_n_0\,
      S(6) => \tstamp_i[15]_i_3_n_0\,
      S(5) => \tstamp_i[15]_i_4_n_0\,
      S(4) => \tstamp_i[15]_i_5_n_0\,
      S(3) => \tstamp_i[15]_i_6_n_0\,
      S(2) => \tstamp_i[15]_i_7_n_0\,
      S(1) => \tstamp_i[15]_i_8_n_0\,
      S(0) => \tstamp_i[15]_i_9_n_0\
    );
\tstamp_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[23]_i_1_n_15\,
      Q => \^tstamp\(15),
      R => \out\(0)
    );
\tstamp_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[23]_i_1_n_14\,
      Q => \^tstamp\(16),
      R => \out\(0)
    );
\tstamp_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[23]_i_1_n_13\,
      Q => \^tstamp\(17),
      R => \out\(0)
    );
\tstamp_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[23]_i_1_n_12\,
      Q => \^tstamp\(18),
      R => \out\(0)
    );
\tstamp_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[7]_i_1_n_14\,
      Q => \^tstamp\(0),
      R => \out\(0)
    );
\tstamp_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[23]_i_1_n_11\,
      Q => \^tstamp\(19),
      R => \out\(0)
    );
\tstamp_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[23]_i_1_n_10\,
      Q => \^tstamp\(20),
      R => \out\(0)
    );
\tstamp_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[23]_i_1_n_9\,
      Q => \^tstamp\(21),
      R => \out\(0)
    );
\tstamp_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[23]_i_1_n_8\,
      Q => \^tstamp\(22),
      R => \out\(0)
    );
\tstamp_i_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_i_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \tstamp_i_reg[23]_i_1_n_0\,
      CO(6) => \tstamp_i_reg[23]_i_1_n_1\,
      CO(5) => \tstamp_i_reg[23]_i_1_n_2\,
      CO(4) => \tstamp_i_reg[23]_i_1_n_3\,
      CO(3) => \tstamp_i_reg[23]_i_1_n_4\,
      CO(2) => \tstamp_i_reg[23]_i_1_n_5\,
      CO(1) => \tstamp_i_reg[23]_i_1_n_6\,
      CO(0) => \tstamp_i_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tstamp_i_reg[23]_i_1_n_8\,
      O(6) => \tstamp_i_reg[23]_i_1_n_9\,
      O(5) => \tstamp_i_reg[23]_i_1_n_10\,
      O(4) => \tstamp_i_reg[23]_i_1_n_11\,
      O(3) => \tstamp_i_reg[23]_i_1_n_12\,
      O(2) => \tstamp_i_reg[23]_i_1_n_13\,
      O(1) => \tstamp_i_reg[23]_i_1_n_14\,
      O(0) => \tstamp_i_reg[23]_i_1_n_15\,
      S(7) => \tstamp_i[23]_i_2_n_0\,
      S(6) => \tstamp_i[23]_i_3_n_0\,
      S(5) => \tstamp_i[23]_i_4_n_0\,
      S(4) => \tstamp_i[23]_i_5_n_0\,
      S(3) => \tstamp_i[23]_i_6_n_0\,
      S(2) => \tstamp_i[23]_i_7_n_0\,
      S(1) => \tstamp_i[23]_i_8_n_0\,
      S(0) => \tstamp_i[23]_i_9_n_0\
    );
\tstamp_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[31]_i_1_n_15\,
      Q => \^tstamp\(23),
      R => \out\(0)
    );
\tstamp_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[31]_i_1_n_14\,
      Q => \^tstamp\(24),
      R => \out\(0)
    );
\tstamp_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[31]_i_1_n_13\,
      Q => \^tstamp\(25),
      R => \out\(0)
    );
\tstamp_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[31]_i_1_n_12\,
      Q => \^tstamp\(26),
      R => \out\(0)
    );
\tstamp_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[31]_i_1_n_11\,
      Q => \^tstamp\(27),
      R => \out\(0)
    );
\tstamp_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[31]_i_1_n_10\,
      Q => \^tstamp\(28),
      R => \out\(0)
    );
\tstamp_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[7]_i_1_n_13\,
      Q => \^tstamp\(1),
      R => \out\(0)
    );
\tstamp_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[31]_i_1_n_9\,
      Q => \^tstamp\(29),
      R => \out\(0)
    );
\tstamp_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[31]_i_1_n_8\,
      Q => \^tstamp\(30),
      R => \out\(0)
    );
\tstamp_i_reg[31]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_i_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \tstamp_i_reg[31]_i_1_n_0\,
      CO(6) => \tstamp_i_reg[31]_i_1_n_1\,
      CO(5) => \tstamp_i_reg[31]_i_1_n_2\,
      CO(4) => \tstamp_i_reg[31]_i_1_n_3\,
      CO(3) => \tstamp_i_reg[31]_i_1_n_4\,
      CO(2) => \tstamp_i_reg[31]_i_1_n_5\,
      CO(1) => \tstamp_i_reg[31]_i_1_n_6\,
      CO(0) => \tstamp_i_reg[31]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tstamp_i_reg[31]_i_1_n_8\,
      O(6) => \tstamp_i_reg[31]_i_1_n_9\,
      O(5) => \tstamp_i_reg[31]_i_1_n_10\,
      O(4) => \tstamp_i_reg[31]_i_1_n_11\,
      O(3) => \tstamp_i_reg[31]_i_1_n_12\,
      O(2) => \tstamp_i_reg[31]_i_1_n_13\,
      O(1) => \tstamp_i_reg[31]_i_1_n_14\,
      O(0) => \tstamp_i_reg[31]_i_1_n_15\,
      S(7) => \tstamp_i[31]_i_2_n_0\,
      S(6) => \tstamp_i[31]_i_3_n_0\,
      S(5) => \tstamp_i[31]_i_4_n_0\,
      S(4) => \tstamp_i[31]_i_5_n_0\,
      S(3) => \tstamp_i[31]_i_6_n_0\,
      S(2) => \tstamp_i[31]_i_7_n_0\,
      S(1) => \tstamp_i[31]_i_8_n_0\,
      S(0) => \tstamp_i[31]_i_9_n_0\
    );
\tstamp_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[39]_i_1_n_15\,
      Q => \^tstamp\(31),
      R => \out\(0)
    );
\tstamp_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[39]_i_1_n_14\,
      Q => \^tstamp\(32),
      R => \out\(0)
    );
\tstamp_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[39]_i_1_n_13\,
      Q => \^tstamp\(33),
      R => \out\(0)
    );
\tstamp_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[39]_i_1_n_12\,
      Q => \^tstamp\(34),
      R => \out\(0)
    );
\tstamp_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[39]_i_1_n_11\,
      Q => \^tstamp\(35),
      R => \out\(0)
    );
\tstamp_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[39]_i_1_n_10\,
      Q => \^tstamp\(36),
      R => \out\(0)
    );
\tstamp_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[39]_i_1_n_9\,
      Q => \^tstamp\(37),
      R => \out\(0)
    );
\tstamp_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[39]_i_1_n_8\,
      Q => \^tstamp\(38),
      R => \out\(0)
    );
\tstamp_i_reg[39]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_i_reg[31]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \tstamp_i_reg[39]_i_1_n_0\,
      CO(6) => \tstamp_i_reg[39]_i_1_n_1\,
      CO(5) => \tstamp_i_reg[39]_i_1_n_2\,
      CO(4) => \tstamp_i_reg[39]_i_1_n_3\,
      CO(3) => \tstamp_i_reg[39]_i_1_n_4\,
      CO(2) => \tstamp_i_reg[39]_i_1_n_5\,
      CO(1) => \tstamp_i_reg[39]_i_1_n_6\,
      CO(0) => \tstamp_i_reg[39]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tstamp_i_reg[39]_i_1_n_8\,
      O(6) => \tstamp_i_reg[39]_i_1_n_9\,
      O(5) => \tstamp_i_reg[39]_i_1_n_10\,
      O(4) => \tstamp_i_reg[39]_i_1_n_11\,
      O(3) => \tstamp_i_reg[39]_i_1_n_12\,
      O(2) => \tstamp_i_reg[39]_i_1_n_13\,
      O(1) => \tstamp_i_reg[39]_i_1_n_14\,
      O(0) => \tstamp_i_reg[39]_i_1_n_15\,
      S(7) => \tstamp_i[39]_i_2_n_0\,
      S(6) => \tstamp_i[39]_i_3_n_0\,
      S(5) => \tstamp_i[39]_i_4_n_0\,
      S(4) => \tstamp_i[39]_i_5_n_0\,
      S(3) => \tstamp_i[39]_i_6_n_0\,
      S(2) => \tstamp_i[39]_i_7_n_0\,
      S(1) => \tstamp_i[39]_i_8_n_0\,
      S(0) => \tstamp_i[39]_i_9_n_0\
    );
\tstamp_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[7]_i_1_n_12\,
      Q => \^tstamp\(2),
      R => \out\(0)
    );
\tstamp_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[47]_i_1_n_15\,
      Q => \^tstamp\(39),
      R => \out\(0)
    );
\tstamp_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[47]_i_1_n_14\,
      Q => \^tstamp\(40),
      R => \out\(0)
    );
\tstamp_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[47]_i_1_n_13\,
      Q => \^tstamp\(41),
      R => \out\(0)
    );
\tstamp_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[47]_i_1_n_12\,
      Q => \^tstamp\(42),
      R => \out\(0)
    );
\tstamp_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[47]_i_1_n_11\,
      Q => \^tstamp\(43),
      R => \out\(0)
    );
\tstamp_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[47]_i_1_n_10\,
      Q => \^tstamp\(44),
      R => \out\(0)
    );
\tstamp_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[47]_i_1_n_9\,
      Q => \^tstamp\(45),
      R => \out\(0)
    );
\tstamp_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[47]_i_1_n_8\,
      Q => \^tstamp\(46),
      R => \out\(0)
    );
\tstamp_i_reg[47]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_i_reg[39]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \tstamp_i_reg[47]_i_1_n_0\,
      CO(6) => \tstamp_i_reg[47]_i_1_n_1\,
      CO(5) => \tstamp_i_reg[47]_i_1_n_2\,
      CO(4) => \tstamp_i_reg[47]_i_1_n_3\,
      CO(3) => \tstamp_i_reg[47]_i_1_n_4\,
      CO(2) => \tstamp_i_reg[47]_i_1_n_5\,
      CO(1) => \tstamp_i_reg[47]_i_1_n_6\,
      CO(0) => \tstamp_i_reg[47]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tstamp_i_reg[47]_i_1_n_8\,
      O(6) => \tstamp_i_reg[47]_i_1_n_9\,
      O(5) => \tstamp_i_reg[47]_i_1_n_10\,
      O(4) => \tstamp_i_reg[47]_i_1_n_11\,
      O(3) => \tstamp_i_reg[47]_i_1_n_12\,
      O(2) => \tstamp_i_reg[47]_i_1_n_13\,
      O(1) => \tstamp_i_reg[47]_i_1_n_14\,
      O(0) => \tstamp_i_reg[47]_i_1_n_15\,
      S(7) => \tstamp_i[47]_i_2_n_0\,
      S(6) => \tstamp_i[47]_i_3_n_0\,
      S(5) => \tstamp_i[47]_i_4_n_0\,
      S(4) => \tstamp_i[47]_i_5_n_0\,
      S(3) => \tstamp_i[47]_i_6_n_0\,
      S(2) => \tstamp_i[47]_i_7_n_0\,
      S(1) => \tstamp_i[47]_i_8_n_0\,
      S(0) => \tstamp_i[47]_i_9_n_0\
    );
\tstamp_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[55]_i_1_n_15\,
      Q => \^tstamp\(47),
      R => \out\(0)
    );
\tstamp_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[55]_i_1_n_14\,
      Q => \^tstamp\(48),
      R => \out\(0)
    );
\tstamp_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[7]_i_1_n_11\,
      Q => \^tstamp\(3),
      R => \out\(0)
    );
\tstamp_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[55]_i_1_n_13\,
      Q => \^tstamp\(49),
      R => \out\(0)
    );
\tstamp_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[55]_i_1_n_12\,
      Q => \^tstamp\(50),
      R => \out\(0)
    );
\tstamp_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[55]_i_1_n_11\,
      Q => \^tstamp\(51),
      R => \out\(0)
    );
\tstamp_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[55]_i_1_n_10\,
      Q => \^tstamp\(52),
      R => \out\(0)
    );
\tstamp_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[55]_i_1_n_9\,
      Q => \^tstamp\(53),
      R => \out\(0)
    );
\tstamp_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[55]_i_1_n_8\,
      Q => \^tstamp\(54),
      R => \out\(0)
    );
\tstamp_i_reg[55]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_i_reg[47]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \tstamp_i_reg[55]_i_1_n_0\,
      CO(6) => \tstamp_i_reg[55]_i_1_n_1\,
      CO(5) => \tstamp_i_reg[55]_i_1_n_2\,
      CO(4) => \tstamp_i_reg[55]_i_1_n_3\,
      CO(3) => \tstamp_i_reg[55]_i_1_n_4\,
      CO(2) => \tstamp_i_reg[55]_i_1_n_5\,
      CO(1) => \tstamp_i_reg[55]_i_1_n_6\,
      CO(0) => \tstamp_i_reg[55]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tstamp_i_reg[55]_i_1_n_8\,
      O(6) => \tstamp_i_reg[55]_i_1_n_9\,
      O(5) => \tstamp_i_reg[55]_i_1_n_10\,
      O(4) => \tstamp_i_reg[55]_i_1_n_11\,
      O(3) => \tstamp_i_reg[55]_i_1_n_12\,
      O(2) => \tstamp_i_reg[55]_i_1_n_13\,
      O(1) => \tstamp_i_reg[55]_i_1_n_14\,
      O(0) => \tstamp_i_reg[55]_i_1_n_15\,
      S(7) => \tstamp_i[55]_i_2_n_0\,
      S(6) => \tstamp_i[55]_i_3_n_0\,
      S(5) => \tstamp_i[55]_i_4_n_0\,
      S(4) => \tstamp_i[55]_i_5_n_0\,
      S(3) => \tstamp_i[55]_i_6_n_0\,
      S(2) => \tstamp_i[55]_i_7_n_0\,
      S(1) => \tstamp_i[55]_i_8_n_0\,
      S(0) => \tstamp_i[55]_i_9_n_0\
    );
\tstamp_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[63]_i_2_n_15\,
      Q => \^tstamp\(55),
      R => \out\(0)
    );
\tstamp_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[63]_i_2_n_14\,
      Q => \^tstamp\(56),
      R => \out\(0)
    );
\tstamp_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[63]_i_2_n_13\,
      Q => \^tstamp\(57),
      R => \out\(0)
    );
\tstamp_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[63]_i_2_n_12\,
      Q => \^tstamp\(58),
      R => \out\(0)
    );
\tstamp_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[7]_i_1_n_10\,
      Q => \^tstamp\(4),
      R => \out\(0)
    );
\tstamp_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[63]_i_2_n_11\,
      Q => \^tstamp\(59),
      R => \out\(0)
    );
\tstamp_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[63]_i_2_n_10\,
      Q => \^tstamp\(60),
      R => \out\(0)
    );
\tstamp_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[63]_i_2_n_9\,
      Q => \^tstamp\(61),
      R => \out\(0)
    );
\tstamp_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[63]_i_2_n_8\,
      Q => \^tstamp\(62),
      R => \out\(0)
    );
\tstamp_i_reg[63]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \tstamp_i_reg[55]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_tstamp_i_reg[63]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \tstamp_i_reg[63]_i_2_n_1\,
      CO(5) => \tstamp_i_reg[63]_i_2_n_2\,
      CO(4) => \tstamp_i_reg[63]_i_2_n_3\,
      CO(3) => \tstamp_i_reg[63]_i_2_n_4\,
      CO(2) => \tstamp_i_reg[63]_i_2_n_5\,
      CO(1) => \tstamp_i_reg[63]_i_2_n_6\,
      CO(0) => \tstamp_i_reg[63]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tstamp_i_reg[63]_i_2_n_8\,
      O(6) => \tstamp_i_reg[63]_i_2_n_9\,
      O(5) => \tstamp_i_reg[63]_i_2_n_10\,
      O(4) => \tstamp_i_reg[63]_i_2_n_11\,
      O(3) => \tstamp_i_reg[63]_i_2_n_12\,
      O(2) => \tstamp_i_reg[63]_i_2_n_13\,
      O(1) => \tstamp_i_reg[63]_i_2_n_14\,
      O(0) => \tstamp_i_reg[63]_i_2_n_15\,
      S(7) => \tstamp_i[63]_i_3_n_0\,
      S(6) => \tstamp_i[63]_i_4_n_0\,
      S(5) => \tstamp_i[63]_i_5_n_0\,
      S(4) => \tstamp_i[63]_i_6_n_0\,
      S(3) => \tstamp_i[63]_i_7_n_0\,
      S(2) => \tstamp_i[63]_i_8_n_0\,
      S(1) => \tstamp_i[63]_i_9_n_0\,
      S(0) => \tstamp_i[63]_i_10_n_0\
    );
\tstamp_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[7]_i_1_n_9\,
      Q => \^tstamp\(5),
      R => \out\(0)
    );
\tstamp_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[7]_i_1_n_8\,
      Q => \^tstamp\(6),
      R => \out\(0)
    );
\tstamp_i_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \tstamp_i_reg[7]_i_1_n_0\,
      CO(6) => \tstamp_i_reg[7]_i_1_n_1\,
      CO(5) => \tstamp_i_reg[7]_i_1_n_2\,
      CO(4) => \tstamp_i_reg[7]_i_1_n_3\,
      CO(3) => \tstamp_i_reg[7]_i_1_n_4\,
      CO(2) => \tstamp_i_reg[7]_i_1_n_5\,
      CO(1) => \tstamp_i_reg[7]_i_1_n_6\,
      CO(0) => \tstamp_i_reg[7]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \tstamp_i[7]_i_2_n_0\,
      O(7) => \tstamp_i_reg[7]_i_1_n_8\,
      O(6) => \tstamp_i_reg[7]_i_1_n_9\,
      O(5) => \tstamp_i_reg[7]_i_1_n_10\,
      O(4) => \tstamp_i_reg[7]_i_1_n_11\,
      O(3) => \tstamp_i_reg[7]_i_1_n_12\,
      O(2) => \tstamp_i_reg[7]_i_1_n_13\,
      O(1) => \tstamp_i_reg[7]_i_1_n_14\,
      O(0) => \tstamp_i_reg[7]_i_1_n_15\,
      S(7) => \tstamp_i[7]_i_3_n_0\,
      S(6) => \tstamp_i[7]_i_4_n_0\,
      S(5) => \tstamp_i[7]_i_5_n_0\,
      S(4) => \tstamp_i[7]_i_6_n_0\,
      S(3) => \tstamp_i[7]_i_7_n_0\,
      S(2) => \tstamp_i[7]_i_8_n_0\,
      S(1) => \tstamp_i[7]_i_9_n_0\,
      S(0) => \tstamp_i[7]_i_10_n_0\
    );
\tstamp_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[15]_i_1_n_15\,
      Q => \^tstamp\(7),
      R => \out\(0)
    );
\tstamp_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tstamp_i[63]_i_1_n_0\,
      D => \tstamp_i_reg[15]_i_1_n_14\,
      Q => \^tstamp\(8),
      R => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_adjust is
  port (
    adj_req : out STD_LOGIC;
    tx_en : out STD_LOGIC;
    adj_ack_i : out STD_LOGIC;
    tx_dis : out STD_LOGIC;
    \fdel_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \cdel_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \da_reg[0]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    sclk : in STD_LOGIC;
    srst : in STD_LOGIC;
    \s_reg[4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \s_reg[4][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_adjust : entity is "pdts_adjust";
end design_1_pdts_endpoint_stdlog_0_0_pdts_adjust;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_adjust is
  signal \^adj_req\ : STD_LOGIC;
  signal cdel_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal fdel_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fdel_i_0 : STD_LOGIC;
  signal sync_n_1 : STD_LOGIC;
  signal sync_n_3 : STD_LOGIC;
  signal \^tx_en\ : STD_LOGIC;
  signal u : STD_LOGIC;
  signal ud : STD_LOGIC;
begin
  adj_req <= \^adj_req\;
  tx_en <= \^tx_en\;
adj_req_reg: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => sync_n_1,
      Q => \^adj_req\,
      R => '0'
    );
\cdel_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => fdel_i_0,
      D => Q(4),
      Q => cdel_i(0),
      R => '0'
    );
\cdel_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => fdel_i_0,
      D => Q(5),
      Q => cdel_i(1),
      R => '0'
    );
\cdel_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => fdel_i_0,
      D => Q(6),
      Q => cdel_i(2),
      R => '0'
    );
\cdel_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => fdel_i_0,
      D => Q(7),
      Q => cdel_i(3),
      R => '0'
    );
\cdel_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => fdel_i_0,
      D => Q(8),
      Q => cdel_i(4),
      R => '0'
    );
\cdel_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => fdel_i_0,
      D => Q(9),
      Q => cdel_i(5),
      R => '0'
    );
\cdel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \s_reg[4]\,
      D => cdel_i(0),
      Q => \cdel_reg[5]_0\(0),
      R => srst
    );
\cdel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \s_reg[4]\,
      D => cdel_i(1),
      Q => \cdel_reg[5]_0\(1),
      R => srst
    );
\cdel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \s_reg[4]\,
      D => cdel_i(2),
      Q => \cdel_reg[5]_0\(2),
      R => srst
    );
\cdel_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \s_reg[4]\,
      D => cdel_i(3),
      Q => \cdel_reg[5]_0\(3),
      R => srst
    );
\cdel_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \s_reg[4]\,
      D => cdel_i(4),
      Q => \cdel_reg[5]_0\(4),
      R => srst
    );
\cdel_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \s_reg[4]\,
      D => cdel_i(5),
      Q => \cdel_reg[5]_0\(5),
      R => srst
    );
\fdel_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => fdel_i_0,
      D => Q(0),
      Q => fdel_i(0),
      R => '0'
    );
\fdel_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => fdel_i_0,
      D => Q(1),
      Q => fdel_i(1),
      R => '0'
    );
\fdel_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => fdel_i_0,
      D => Q(2),
      Q => fdel_i(2),
      R => '0'
    );
\fdel_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => fdel_i_0,
      D => Q(3),
      Q => fdel_i(3),
      R => '0'
    );
\fdel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \s_reg[4]\,
      D => fdel_i(0),
      Q => \fdel_reg[3]_0\(0),
      R => srst
    );
\fdel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \s_reg[4]\,
      D => fdel_i(1),
      Q => \fdel_reg[3]_0\(1),
      R => srst
    );
\fdel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \s_reg[4]\,
      D => fdel_i(2),
      Q => \fdel_reg[3]_0\(2),
      R => srst
    );
\fdel_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => \s_reg[4]\,
      D => fdel_i(3),
      Q => \fdel_reg[3]_0\(3),
      R => srst
    );
\s_reg[3][0]_srl3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^adj_req\,
      I1 => \s_reg[4][0]\(0),
      O => adj_ack_i
    );
sync: entity work.\design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized1\
     port map (
      E(0) => fdel_i_0,
      Q(1 downto 0) => Q(11 downto 10),
      adj_req => \^adj_req\,
      clk => clk,
      \da_reg[0]_0\ => \da_reg[0]\,
      \out\ => u,
      \q_reg[15]\ => sync_n_3,
      \s_reg[4]\ => \s_reg[4]\,
      sclk => sclk,
      srst => srst,
      srst_0 => sync_n_1,
      tx_en => \^tx_en\,
      ud => ud
    );
tx_dis_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_en\,
      O => tx_dis
    );
tx_en_reg: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => sync_n_3,
      Q => \^tx_en\,
      R => srst
    );
ud_reg: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => u,
      Q => ud,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_cksum is
  port (
    d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \smode__1\ : out STD_LOGIC;
    \actr_i_reg[7]\ : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_tx_inferred_i_1 : in STD_LOGIC;
    d_tx_inferred_i_7 : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    d_tx_inferred_i_7_0 : in STD_LOGIC;
    smode_r : in STD_LOGIC;
    active : in STD_LOGIC;
    s_stb : in STD_LOGIC;
    \lfsr_q_reg[0]\ : in STD_LOGIC;
    s_first : in STD_LOGIC;
    s_ok : in STD_LOGIC;
    \acmd_out[d]1\ : in STD_LOGIC;
    \lfsr_q_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \lfsr_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txphy_i_31 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txphy_i_31_0 : in STD_LOGIC;
    stbo : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_cksum : entity is "pdts_cksum";
end design_1_pdts_endpoint_stdlog_0_0_pdts_cksum;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_cksum is
begin
crc: entity work.design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16
     port map (
      Q(6 downto 0) => Q(6 downto 0),
      SS(0) => SS(0),
      \acmd_out[d]1\ => \acmd_out[d]1\,
      active => active,
      \actr_i_reg[7]\ => \actr_i_reg[7]\,
      addr(7 downto 0) => addr(7 downto 0),
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      d_tx_inferred_i_1 => d_tx_inferred_i_1,
      d_tx_inferred_i_7 => d_tx_inferred_i_7,
      d_tx_inferred_i_7_0 => d_tx_inferred_i_7_0,
      \lfsr_q_reg[0]_0\ => \lfsr_q_reg[0]\,
      \lfsr_q_reg[0]_1\(2 downto 0) => \lfsr_q_reg[0]_0\(2 downto 0),
      \lfsr_q_reg[8]_0\(7 downto 0) => \lfsr_q_reg[8]\(7 downto 0),
      s_first => s_first,
      s_ok => s_ok,
      s_stb => s_stb,
      smode_r => smode_r,
      smode_r_reg => \smode__1\,
      stbo => stbo,
      sw(6 downto 0) => sw(6 downto 0),
      txphy_i_31_0(7 downto 0) => txphy_i_31(7 downto 0),
      txphy_i_31_1 => txphy_i_31_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_cksum_2 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ks : out STD_LOGIC;
    ka : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[0]_0\ : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC;
    \state_reg[0]_2\ : in STD_LOGIC;
    \err114_out__4\ : in STD_LOGIC;
    \err1__6\ : in STD_LOGIC;
    \err116_out__2\ : in STD_LOGIC;
    stbo : in STD_LOGIC;
    \^q\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    k : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_cksum_2 : entity is "pdts_cksum";
end design_1_pdts_endpoint_stdlog_0_0_pdts_cksum_2;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_cksum_2 is
begin
crc: entity work.design_1_pdts_endpoint_stdlog_0_0_outputlogic_crc16_3
     port map (
      D(1 downto 0) => D(1 downto 0),
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      SS(0) => ka,
      clk => clk,
      \err114_out__4\ => \err114_out__4\,
      \err116_out__2\ => \err116_out__2\,
      \err1__6\ => \err1__6\,
      k => k,
      ks => ks,
      \^q\(7 downto 0) => \^q\(7 downto 0),
      \state_reg[0]\(0) => \state_reg[0]\(0),
      \state_reg[0]_0\ => \state_reg[0]_0\,
      \state_reg[0]_1\ => \state_reg[0]_1\,
      \state_reg[0]_2\ => \state_reg[0]_2\,
      \state_reg[1]\(0) => \state_reg[1]\(0),
      stbo => stbo
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_ep_startup is
  port (
    debug : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_reg[4]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txd : out STD_LOGIC;
    sclk : in STD_LOGIC;
    rec_clk : in STD_LOGIC;
    rx_err_f_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    adj_ack_i : in STD_LOGIC;
    pll_locked : in STD_LOGIC;
    cdr_lol : in STD_LOGIC;
    srst : in STD_LOGIC;
    cdr_los : in STD_LOGIC;
    sfp_los : in STD_LOGIC;
    adj_req : in STD_LOGIC;
    tx_en : in STD_LOGIC;
    \^q\ : in STD_LOGIC;
    \da_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \da_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_ep_startup : entity is "pdts_ep_startup";
end design_1_pdts_endpoint_stdlog_0_0_pdts_ep_startup;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_ep_startup is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \^q_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cctr : STD_LOGIC;
  signal cctr0 : STD_LOGIC;
  signal \cctr[15]_i_1_n_0\ : STD_LOGIC;
  signal cctr_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cctr_rnd[15]_i_2_n_0\ : STD_LOGIC;
  signal \cctr_rnd[15]_i_3_n_0\ : STD_LOGIC;
  signal chk_n_1 : STD_LOGIC;
  signal chk_n_2 : STD_LOGIC;
  signal chk_n_3 : STD_LOGIC;
  signal chk_n_4 : STD_LOGIC;
  signal chk_n_5 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^debug\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \debug[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \debug[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in7_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \plusOp__28_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp__28_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp__28_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp__28_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp__28_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp__28_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp__28_carry_n_0\ : STD_LOGIC;
  signal \plusOp__28_carry_n_1\ : STD_LOGIC;
  signal \plusOp__28_carry_n_2\ : STD_LOGIC;
  signal \plusOp__28_carry_n_3\ : STD_LOGIC;
  signal \plusOp__28_carry_n_4\ : STD_LOGIC;
  signal \plusOp__28_carry_n_5\ : STD_LOGIC;
  signal \plusOp__28_carry_n_6\ : STD_LOGIC;
  signal \plusOp__28_carry_n_7\ : STD_LOGIC;
  signal \plusOp__7\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \rctr[7]_i_3_n_0\ : STD_LOGIC;
  signal rctr_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \rctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[4]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[5]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[6]\ : STD_LOGIC;
  signal sctr_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sync_sclk_n_4 : STD_LOGIC;
  signal sync_sclk_n_5 : STD_LOGIC;
  signal sync_sclk_n_6 : STD_LOGIC;
  signal sync_sclk_n_7 : STD_LOGIC;
  signal sync_sclk_n_8 : STD_LOGIC;
  signal sync_sclk_n_9 : STD_LOGIC;
  signal t : STD_LOGIC;
  signal td : STD_LOGIC;
  signal \NLW_plusOp__28_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_plusOp__28_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_plusOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_3\ : label is "soft_lutpair57";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[10]\ : label is "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "w_adjust:000000001000,w_align:000100000000,w_freq:001000000000,err_p:000000000010,err_t:100000000000,w_link:000010000000,w_rst:010000000000,w_rdy:000000010000,err_r:000000000100,run:000000000001,w_phase:000000100000,w_lock:000001000000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \plusOp__28_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__28_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \rctr[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rctr[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rctr[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rctr[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \stat[1]_INST_0\ : label is "soft_lutpair57";
begin
  D(0) <= \^d\(0);
  Q(1 downto 0) <= \^q_1\(1 downto 0);
  debug(21 downto 0) <= \^debug\(21 downto 0);
  \out\(3 downto 0) <= \^out\(3 downto 0);
\FSM_onehot_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => p_1_in7_in,
      O => \FSM_onehot_state[0]_i_3_n_0\
    );
\FSM_onehot_state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^debug\(9),
      I1 => \^debug\(10),
      I2 => \^debug\(8),
      I3 => \^debug\(7),
      I4 => \^debug\(6),
      I5 => \FSM_onehot_state[0]_i_9_n_0\,
      O => \FSM_onehot_state[0]_i_7_n_0\
    );
\FSM_onehot_state[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^debug\(19),
      I1 => \^debug\(20),
      I2 => \^debug\(17),
      I3 => \^debug\(18),
      I4 => \^debug\(21),
      I5 => p_0_in,
      O => \FSM_onehot_state[0]_i_8_n_0\
    );
\FSM_onehot_state[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \^debug\(14),
      I1 => \^debug\(13),
      I2 => \^debug\(11),
      I3 => \^debug\(12),
      I4 => \^debug\(16),
      I5 => \^debug\(15),
      O => \FSM_onehot_state[0]_i_9_n_0\
    );
\FSM_onehot_state[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[8]\,
      I1 => p_0_in5_in,
      I2 => p_0_in,
      I3 => \^q_1\(1),
      O => \FSM_onehot_state[7]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_4,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \^q_1\(0),
      R => srst
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_4,
      D => '0',
      Q => \FSM_onehot_state_reg_n_0_[10]\,
      S => srst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_4,
      D => sync_sclk_n_9,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => srst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_4,
      D => sync_sclk_n_8,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => srst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_4,
      D => chk_n_4,
      Q => \^q_1\(1),
      R => srst
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_4,
      D => p_1_in7_in,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => srst
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_4,
      D => sync_sclk_n_7,
      Q => p_1_in7_in,
      R => srst
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_4,
      D => chk_n_3,
      Q => p_0_in5_in,
      R => srst
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_4,
      D => chk_n_2,
      Q => p_1_in,
      R => srst
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_4,
      D => sync_sclk_n_6,
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => srst
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sclk,
      CE => sync_sclk_n_4,
      D => p_1_in,
      Q => p_0_in,
      R => srst
    );
adel: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_del
     port map (
      adj_ack_i => adj_ack_i,
      \s_reg[4]\ => \s_reg[4]\,
      sclk => sclk
    );
\cctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cctr_reg(0),
      O => \plusOp__0\(0)
    );
\cctr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cctr,
      I1 => srst,
      O => \cctr[15]_i_1_n_0\
    );
\cctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(0),
      Q => cctr_reg(0),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(10),
      Q => cctr_reg(10),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(11),
      Q => cctr_reg(11),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(12),
      Q => cctr_reg(12),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(13),
      Q => cctr_reg(13),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(14),
      Q => cctr_reg(14),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(15),
      Q => cctr_reg(15),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(1),
      Q => cctr_reg(1),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(2),
      Q => cctr_reg(2),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(3),
      Q => cctr_reg(3),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(4),
      Q => cctr_reg(4),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(5),
      Q => cctr_reg(5),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(6),
      Q => cctr_reg(6),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(7),
      Q => cctr_reg(7),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(8),
      Q => cctr_reg(8),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr0,
      D => \plusOp__0\(9),
      Q => cctr_reg(9),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_rnd[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cctr_rnd[15]_i_2_n_0\,
      I1 => sctr_reg(1),
      I2 => sctr_reg(0),
      I3 => sctr_reg(3),
      I4 => sctr_reg(2),
      I5 => \cctr_rnd[15]_i_3_n_0\,
      O => cctr
    );
\cctr_rnd[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sctr_reg(12),
      I1 => sctr_reg(13),
      I2 => sctr_reg(10),
      I3 => sctr_reg(11),
      I4 => sctr_reg(15),
      I5 => sctr_reg(14),
      O => \cctr_rnd[15]_i_2_n_0\
    );
\cctr_rnd[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sctr_reg(6),
      I1 => sctr_reg(7),
      I2 => sctr_reg(4),
      I3 => sctr_reg(5),
      I4 => sctr_reg(9),
      I5 => sctr_reg(8),
      O => \cctr_rnd[15]_i_3_n_0\
    );
\cctr_rnd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(0),
      Q => \^debug\(6),
      R => srst
    );
\cctr_rnd_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(10),
      Q => \^debug\(16),
      R => srst
    );
\cctr_rnd_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(11),
      Q => \^debug\(17),
      R => srst
    );
\cctr_rnd_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(12),
      Q => \^debug\(18),
      R => srst
    );
\cctr_rnd_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(13),
      Q => \^debug\(19),
      R => srst
    );
\cctr_rnd_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(14),
      Q => \^debug\(20),
      R => srst
    );
\cctr_rnd_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(15),
      Q => \^debug\(21),
      R => srst
    );
\cctr_rnd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(1),
      Q => \^debug\(7),
      R => srst
    );
\cctr_rnd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(2),
      Q => \^debug\(8),
      R => srst
    );
\cctr_rnd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(3),
      Q => \^debug\(9),
      R => srst
    );
\cctr_rnd_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(4),
      Q => \^debug\(10),
      R => srst
    );
\cctr_rnd_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(5),
      Q => \^debug\(11),
      R => srst
    );
\cctr_rnd_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(6),
      Q => \^debug\(12),
      R => srst
    );
\cctr_rnd_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(7),
      Q => \^debug\(13),
      R => srst
    );
\cctr_rnd_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(8),
      Q => \^debug\(14),
      R => srst
    );
\cctr_rnd_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr,
      D => cctr_reg(9),
      Q => \^debug\(15),
      R => srst
    );
chk: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_chklock
     port map (
      D(2) => chk_n_2,
      D(1) => chk_n_3,
      D(0) => chk_n_4,
      \FSM_onehot_state_reg[3]\ => sync_sclk_n_5,
      \FSM_onehot_state_reg[7]\ => \FSM_onehot_state[7]_i_2_n_0\,
      \FSM_onehot_state_reg[8]\ => chk_n_5,
      Q(7) => \FSM_onehot_state_reg_n_0_[10]\,
      Q(6) => p_0_in,
      Q(5) => \FSM_onehot_state_reg_n_0_[8]\,
      Q(4) => p_0_in5_in,
      Q(3) => \^q_1\(1),
      Q(2) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_state_reg_n_0_[1]\,
      Q(0) => \^q_1\(0),
      cdr_lol => cdr_lol,
      cdr_los => cdr_los,
      \ctrs_reg[0][6]_0\ => chk_n_1,
      debug(0) => \^debug\(1),
      pll_locked => pll_locked,
      sclk => sclk,
      sfp_los => sfp_los,
      srst => srst
    );
\debug[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \debug[1]_INST_0_i_1_n_0\,
      I1 => \^debug\(7),
      I2 => \^debug\(6),
      I3 => \^debug\(9),
      I4 => \^debug\(8),
      I5 => \debug[1]_INST_0_i_2_n_0\,
      O => \^debug\(0)
    );
\debug[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^debug\(18),
      I1 => \^debug\(19),
      I2 => \^debug\(16),
      I3 => \^debug\(17),
      I4 => \^debug\(21),
      I5 => \^debug\(20),
      O => \debug[1]_INST_0_i_1_n_0\
    );
\debug[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \^debug\(12),
      I1 => \^debug\(13),
      I2 => \^debug\(11),
      I3 => \^debug\(10),
      I4 => \^debug\(15),
      I5 => \^debug\(14),
      O => \debug[1]_INST_0_i_2_n_0\
    );
\plusOp__28_carry\: unisim.vcomponents.CARRY8
     port map (
      CI => cctr_reg(0),
      CI_TOP => '0',
      CO(7) => \plusOp__28_carry_n_0\,
      CO(6) => \plusOp__28_carry_n_1\,
      CO(5) => \plusOp__28_carry_n_2\,
      CO(4) => \plusOp__28_carry_n_3\,
      CO(3) => \plusOp__28_carry_n_4\,
      CO(2) => \plusOp__28_carry_n_5\,
      CO(1) => \plusOp__28_carry_n_6\,
      CO(0) => \plusOp__28_carry_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \plusOp__0\(8 downto 1),
      S(7 downto 0) => cctr_reg(8 downto 1)
    );
\plusOp__28_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \plusOp__28_carry_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_plusOp__28_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \plusOp__28_carry__0_n_2\,
      CO(4) => \plusOp__28_carry__0_n_3\,
      CO(3) => \plusOp__28_carry__0_n_4\,
      CO(2) => \plusOp__28_carry__0_n_5\,
      CO(1) => \plusOp__28_carry__0_n_6\,
      CO(0) => \plusOp__28_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_plusOp__28_carry__0_O_UNCONNECTED\(7),
      O(6 downto 0) => \plusOp__0\(15 downto 9),
      S(7) => '0',
      S(6 downto 0) => cctr_reg(15 downto 9)
    );
plusOp_carry: unisim.vcomponents.CARRY8
     port map (
      CI => sctr_reg(0),
      CI_TOP => '0',
      CO(7) => plusOp_carry_n_0,
      CO(6) => plusOp_carry_n_1,
      CO(5) => plusOp_carry_n_2,
      CO(4) => plusOp_carry_n_3,
      CO(3) => plusOp_carry_n_4,
      CO(2) => plusOp_carry_n_5,
      CO(1) => plusOp_carry_n_6,
      CO(0) => plusOp_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => plusOp(8 downto 1),
      S(7 downto 0) => sctr_reg(8 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => plusOp_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \plusOp_carry__0_n_2\,
      CO(4) => \plusOp_carry__0_n_3\,
      CO(3) => \plusOp_carry__0_n_4\,
      CO(2) => \plusOp_carry__0_n_5\,
      CO(1) => \plusOp_carry__0_n_6\,
      CO(0) => \plusOp_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_plusOp_carry__0_O_UNCONNECTED\(7),
      O(6 downto 0) => plusOp(15 downto 9),
      S(7) => '0',
      S(6 downto 0) => sctr_reg(15 downto 9)
    );
\rctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rctr_reg_n_0_[0]\,
      O => \plusOp__7\(0)
    );
\rctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rctr_reg_n_0_[0]\,
      I1 => \rctr_reg_n_0_[1]\,
      O => \plusOp__7\(1)
    );
\rctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rctr_reg_n_0_[0]\,
      I1 => \rctr_reg_n_0_[1]\,
      I2 => \rctr_reg_n_0_[2]\,
      O => \plusOp__7\(2)
    );
\rctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \rctr_reg_n_0_[1]\,
      I1 => \rctr_reg_n_0_[0]\,
      I2 => \rctr_reg_n_0_[2]\,
      I3 => \rctr_reg_n_0_[3]\,
      O => \plusOp__7\(3)
    );
\rctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \rctr_reg_n_0_[2]\,
      I1 => \rctr_reg_n_0_[0]\,
      I2 => \rctr_reg_n_0_[1]\,
      I3 => \rctr_reg_n_0_[3]\,
      I4 => \rctr_reg_n_0_[4]\,
      O => \plusOp__7\(4)
    );
\rctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \rctr_reg_n_0_[3]\,
      I1 => \rctr_reg_n_0_[1]\,
      I2 => \rctr_reg_n_0_[0]\,
      I3 => \rctr_reg_n_0_[2]\,
      I4 => \rctr_reg_n_0_[4]\,
      I5 => \rctr_reg_n_0_[5]\,
      O => \plusOp__7\(5)
    );
\rctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rctr[7]_i_3_n_0\,
      I1 => \rctr_reg_n_0_[6]\,
      O => \plusOp__7\(6)
    );
\rctr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rctr[7]_i_3_n_0\,
      I1 => \rctr_reg_n_0_[6]\,
      I2 => rctr_reg(7),
      O => \plusOp__7\(7)
    );
\rctr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rctr_reg_n_0_[5]\,
      I1 => \rctr_reg_n_0_[3]\,
      I2 => \rctr_reg_n_0_[1]\,
      I3 => \rctr_reg_n_0_[0]\,
      I4 => \rctr_reg_n_0_[2]\,
      I5 => \rctr_reg_n_0_[4]\,
      O => \rctr[7]_i_3_n_0\
    );
\rctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \plusOp__7\(0),
      Q => \rctr_reg_n_0_[0]\,
      R => clear
    );
\rctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \plusOp__7\(1),
      Q => \rctr_reg_n_0_[1]\,
      R => clear
    );
\rctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \plusOp__7\(2),
      Q => \rctr_reg_n_0_[2]\,
      R => clear
    );
\rctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \plusOp__7\(3),
      Q => \rctr_reg_n_0_[3]\,
      R => clear
    );
\rctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \plusOp__7\(4),
      Q => \rctr_reg_n_0_[4]\,
      R => clear
    );
\rctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \plusOp__7\(5),
      Q => \rctr_reg_n_0_[5]\,
      R => clear
    );
\rctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rec_clk,
      CE => '1',
      D => \plusOp__7\(6),
      Q => \rctr_reg_n_0_[6]\,
      R => clear
    );
\rctr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => rec_clk,
      CE => '1',
      D => \plusOp__7\(7),
      Q => rctr_reg(7),
      S => clear
    );
rx_err_f_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rx_err_f_reg_0,
      Q => \^d\(0),
      R => \^out\(2)
    );
\sctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sctr_reg(0),
      O => plusOp(0)
    );
\sctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(0),
      Q => sctr_reg(0),
      R => srst
    );
\sctr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(10),
      Q => sctr_reg(10),
      R => srst
    );
\sctr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(11),
      Q => sctr_reg(11),
      R => srst
    );
\sctr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(12),
      Q => sctr_reg(12),
      R => srst
    );
\sctr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(13),
      Q => sctr_reg(13),
      R => srst
    );
\sctr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(14),
      Q => sctr_reg(14),
      R => srst
    );
\sctr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(15),
      Q => sctr_reg(15),
      R => srst
    );
\sctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(1),
      Q => sctr_reg(1),
      R => srst
    );
\sctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(2),
      Q => sctr_reg(2),
      R => srst
    );
\sctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(3),
      Q => sctr_reg(3),
      R => srst
    );
\sctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(4),
      Q => sctr_reg(4),
      R => srst
    );
\sctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(5),
      Q => sctr_reg(5),
      R => srst
    );
\sctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(6),
      Q => sctr_reg(6),
      R => srst
    );
\sctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(7),
      Q => sctr_reg(7),
      R => srst
    );
\sctr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(8),
      Q => sctr_reg(8),
      R => srst
    );
\sctr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => plusOp(9),
      Q => sctr_reg(9),
      R => srst
    );
\stat[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \^q_1\(1),
      I2 => p_1_in,
      I3 => p_0_in5_in,
      O => stat(0)
    );
\stat[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q_1\(1),
      I1 => p_0_in,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => p_1_in7_in,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => stat(1)
    );
\stat[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => p_1_in7_in,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => stat(2)
    );
\stat[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \^q_1\(0),
      O => stat(3)
    );
sync_c: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_synchro
     port map (
      SR(0) => clear,
      debug(0) => \^debug\(1),
      rec_clk => rec_clk,
      sclk => sclk
    );
sync_clk: entity work.\design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0\
     port map (
      Q(6) => \FSM_onehot_state_reg_n_0_[10]\,
      Q(5) => p_0_in,
      Q(4) => \FSM_onehot_state_reg_n_0_[8]\,
      Q(3) => p_1_in,
      Q(2) => p_0_in5_in,
      Q(1) => p_1_in7_in,
      Q(0) => \^q_1\(1),
      clk => clk,
      \out\(3 downto 0) => \^out\(3 downto 0),
      \^q\ => \^q\,
      sclk => sclk,
      tx_en => tx_en,
      txd => txd
    );
sync_sclk: entity work.\design_1_pdts_endpoint_stdlog_0_0_pdts_synchro__parameterized0_0\
     port map (
      D(3) => sync_sclk_n_6,
      D(2) => sync_sclk_n_7,
      D(1) => sync_sclk_n_8,
      D(0) => sync_sclk_n_9,
      E(0) => sync_sclk_n_4,
      \FSM_onehot_state_reg[0]\ => \FSM_onehot_state[0]_i_3_n_0\,
      \FSM_onehot_state_reg[0]_0\ => chk_n_5,
      \FSM_onehot_state_reg[0]_1\ => \FSM_onehot_state[0]_i_7_n_0\,
      \FSM_onehot_state_reg[0]_2\ => \FSM_onehot_state[0]_i_8_n_0\,
      \FSM_onehot_state_reg[5]\ => chk_n_1,
      Q(6) => \FSM_onehot_state_reg_n_0_[8]\,
      Q(5) => p_1_in,
      Q(4) => p_0_in5_in,
      Q(3) => \^q_1\(1),
      Q(2) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_state_reg_n_0_[1]\,
      Q(0) => \^q_1\(0),
      adj_req => adj_req,
      clk => clk,
      \da_reg[3]_0\(3) => \da_reg[3]\(0),
      \da_reg[3]_0\(2) => \^d\(0),
      \da_reg[3]_0\(1 downto 0) => \da_reg[1]\(1 downto 0),
      debug(3 downto 0) => \^debug\(5 downto 2),
      \q_reg[1]_0\ => sync_sclk_n_5,
      sclk => sclk
    );
sync_t: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_synchro_1
     port map (
      E(0) => cctr0,
      Q(0) => rctr_reg(7),
      \out\ => t,
      rec_clk => rec_clk,
      sclk => sclk,
      td => td
    );
td_reg: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => t,
      Q => td,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_rx_phy is
  port (
    rxclk : in STD_LOGIC;
    rxd : in STD_LOGIC;
    fdel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cdel : in STD_LOGIC_VECTOR ( 5 downto 0 );
    fdel_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    edge : out STD_LOGIC;
    clk : in STD_LOGIC;
    rec_rst : in STD_LOGIC;
    rst : in STD_LOGIC;
    phase_rst : out STD_LOGIC;
    phase_locked : in STD_LOGIC;
    aligned : out STD_LOGIC;
    rx_locked : out STD_LOGIC;
    q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    k : out STD_LOGIC;
    stbo : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_rx_phy : entity is "pdts_rx_phy";
  attribute UPSTREAM_MODE : string;
  attribute UPSTREAM_MODE of design_1_pdts_endpoint_stdlog_0_0_pdts_rx_phy : entity is "FALSE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_pdts_endpoint_stdlog_0_0_pdts_rx_phy : entity is "soft";
end design_1_pdts_endpoint_stdlog_0_0_pdts_rx_phy;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_rx_phy is
  signal \<const0>\ : STD_LOGIC;
  signal aligned_i : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of aligned_i : signal is std.standard.true;
  signal aligned_i_i_1_n_0 : STD_LOGIC;
  signal c : STD_LOGIC;
  attribute MARK_DEBUG of c : signal is std.standard.true;
  signal c_del_n_1 : STD_LOGIC;
  signal c_del_n_10 : STD_LOGIC;
  signal c_del_n_2 : STD_LOGIC;
  signal c_del_n_3 : STD_LOGIC;
  signal c_del_n_4 : STD_LOGIC;
  signal c_del_n_5 : STD_LOGIC;
  signal c_del_n_6 : STD_LOGIC;
  signal c_del_n_7 : STD_LOGIC;
  signal c_del_n_8 : STD_LOGIC;
  signal c_del_n_9 : STD_LOGIC;
  signal c_inferred_i_2_n_0 : STD_LOGIC;
  signal c_inferred_i_3_n_0 : STD_LOGIC;
  signal cctr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cerr : STD_LOGIC;
  attribute MARK_DEBUG of cerr : signal is std.standard.true;
  signal derr : STD_LOGIC;
  attribute MARK_DEBUG of derr : signal is std.standard.true;
  signal ectr0 : STD_LOGIC;
  signal ectr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal eok : STD_LOGIC;
  attribute MARK_DEBUG of eok : signal is std.standard.true;
  signal eok_inferred_i_2_n_0 : STD_LOGIC;
  signal kctr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal kctr0 : STD_LOGIC;
  signal \kctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \kctr[1]_i_2_n_0\ : STD_LOGIC;
  signal kok : STD_LOGIC;
  attribute MARK_DEBUG of kok : signal is std.standard.true;
  signal \p_0_in__0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pr : STD_LOGIC;
  attribute MARK_DEBUG of pr : signal is std.standard.true;
  signal prst : STD_LOGIC;
  attribute MARK_DEBUG of prst : signal is std.standard.true;
  signal \s[15]_0\ : STD_LOGIC;
  signal sctr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sctr0 : STD_LOGIC;
  signal \sctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \sctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \sctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \sctr_reg_n_0_[3]\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal stb : STD_LOGIC;
  attribute MARK_DEBUG of stb : signal is std.standard.true;
  signal stbd : STD_LOGIC;
  signal stbo0 : STD_LOGIC;
  signal tc : STD_LOGIC;
  attribute MARK_DEBUG of tc : signal is std.standard.true;
  signal tc_inferred_i_2_n_0 : STD_LOGIC;
  signal w : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute MARK_DEBUG of w : signal is std.standard.true;
  signal wa : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute KEEP : string;
  attribute KEEP of aligned_i_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of aligned_i_reg : label is "true";
  attribute DEL_RADIX : integer;
  attribute DEL_RADIX of c_del : label is 6;
  attribute KEEP_HIERARCHY of c_del : label is "soft";
  attribute WIDTH : integer;
  attribute WIDTH of c_del : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cctr[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cctr[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cctr[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cctr[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cctr[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cctr[7]_i_1\ : label is "soft_lutpair14";
  attribute KEEP_HIERARCHY of dec : label is "soft";
  attribute SOFT_HLUTNM of \ectr[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ectr[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ectr[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ectr[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ectr[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ectr[7]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \kctr[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \kctr[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sctr[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sctr[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sctr[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sctr[3]_i_3\ : label is "soft_lutpair11";
  attribute KEEP of \w_reg[0]\ : label is "yes";
  attribute KEEP of \w_reg[1]\ : label is "yes";
  attribute KEEP of \w_reg[2]\ : label is "yes";
  attribute KEEP of \w_reg[3]\ : label is "yes";
  attribute KEEP of \w_reg[4]\ : label is "yes";
  attribute KEEP of \w_reg[5]\ : label is "yes";
  attribute KEEP of \w_reg[6]\ : label is "yes";
  attribute KEEP of \w_reg[7]\ : label is "yes";
  attribute KEEP of \w_reg[8]\ : label is "yes";
  attribute KEEP of \w_reg[9]\ : label is "yes";
begin
  aligned <= aligned_i;
  edge <= \<const0>\;
  fdel_out(3) <= \<const0>\;
  fdel_out(2) <= \<const0>\;
  fdel_out(1) <= \<const0>\;
  fdel_out(0) <= \<const0>\;
  rx_locked <= eok;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
aligned_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => kok,
      I1 => tc,
      I2 => aligned_i,
      O => aligned_i_i_1_n_0
    );
aligned_i_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => aligned_i_i_1_n_0,
      Q => aligned_i,
      R => sctr0
    );
c_del: entity work.\design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized1\
     port map (
      a(5 downto 0) => cdel(5 downto 0),
      clk => clk,
      d(10) => stb,
      d(9 downto 0) => w(9 downto 0),
      q(10) => stbd,
      q(9) => c_del_n_1,
      q(8) => c_del_n_2,
      q(7) => c_del_n_3,
      q(6) => c_del_n_4,
      q(5) => c_del_n_5,
      q(4) => c_del_n_6,
      q(3) => c_del_n_7,
      q(2) => c_del_n_8,
      q(1) => c_del_n_9,
      q(0) => c_del_n_10
    );
c_inferred_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000000000300"
    )
        port map (
      I0 => c_inferred_i_2_n_0,
      I1 => w(3),
      I2 => w(5),
      I3 => c_inferred_i_3_n_0,
      I4 => w(2),
      I5 => w(6),
      O => c
    );
c_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => w(4),
      I1 => w(1),
      I2 => w(7),
      I3 => w(9),
      I4 => w(0),
      I5 => w(8),
      O => c_inferred_i_2_n_0
    );
c_inferred_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => w(4),
      I1 => w(1),
      I2 => w(7),
      I3 => w(9),
      I4 => w(0),
      I5 => w(8),
      O => c_inferred_i_3_n_0
    );
\cctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cctr_reg(0),
      O => plusOp(0)
    );
\cctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cctr_reg(0),
      I1 => cctr_reg(1),
      O => plusOp(1)
    );
\cctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cctr_reg(1),
      I1 => cctr_reg(0),
      I2 => cctr_reg(2),
      O => plusOp(2)
    );
\cctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cctr_reg(2),
      I1 => cctr_reg(0),
      I2 => cctr_reg(1),
      I3 => cctr_reg(3),
      O => plusOp(3)
    );
\cctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cctr_reg(3),
      I1 => cctr_reg(1),
      I2 => cctr_reg(0),
      I3 => cctr_reg(2),
      I4 => cctr_reg(4),
      O => plusOp(4)
    );
\cctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cctr_reg(4),
      I1 => cctr_reg(2),
      I2 => cctr_reg(0),
      I3 => cctr_reg(1),
      I4 => cctr_reg(3),
      I5 => cctr_reg(5),
      O => plusOp(5)
    );
\cctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tc_inferred_i_2_n_0,
      I1 => cctr_reg(6),
      O => plusOp(6)
    );
\cctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => cctr_reg(6),
      I1 => tc_inferred_i_2_n_0,
      I2 => cctr_reg(7),
      O => plusOp(7)
    );
\cctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(0),
      Q => cctr_reg(0),
      R => sctr0
    );
\cctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(1),
      Q => cctr_reg(1),
      R => sctr0
    );
\cctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(2),
      Q => cctr_reg(2),
      R => sctr0
    );
\cctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(3),
      Q => cctr_reg(3),
      R => sctr0
    );
\cctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(4),
      Q => cctr_reg(4),
      R => sctr0
    );
\cctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(5),
      Q => cctr_reg(5),
      R => sctr0
    );
\cctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(6),
      Q => cctr_reg(6),
      R => sctr0
    );
\cctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(7),
      Q => cctr_reg(7),
      R => sctr0
    );
dec: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_dec8b10b
     port map (
      cerr => cerr,
      clk => clk,
      d(9) => c_del_n_1,
      d(8) => c_del_n_2,
      d(7) => c_del_n_3,
      d(6) => c_del_n_4,
      d(5) => c_del_n_5,
      d(4) => c_del_n_6,
      d(3) => c_del_n_7,
      d(2) => c_del_n_8,
      d(1) => c_del_n_9,
      d(0) => c_del_n_10,
      derr => derr,
      en => stbd,
      k => k,
      q(7 downto 0) => q(7 downto 0),
      rst => rst
    );
\ectr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ectr_reg(0),
      O => \plusOp__0\(0)
    );
\ectr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ectr_reg(0),
      I1 => ectr_reg(1),
      O => \plusOp__0\(1)
    );
\ectr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ectr_reg(1),
      I1 => ectr_reg(0),
      I2 => ectr_reg(2),
      O => \plusOp__0\(2)
    );
\ectr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ectr_reg(2),
      I1 => ectr_reg(0),
      I2 => ectr_reg(1),
      I3 => ectr_reg(3),
      O => \plusOp__0\(3)
    );
\ectr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ectr_reg(3),
      I1 => ectr_reg(1),
      I2 => ectr_reg(0),
      I3 => ectr_reg(2),
      I4 => ectr_reg(4),
      O => \plusOp__0\(4)
    );
\ectr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ectr_reg(4),
      I1 => ectr_reg(2),
      I2 => ectr_reg(0),
      I3 => ectr_reg(1),
      I4 => ectr_reg(3),
      I5 => ectr_reg(5),
      O => \plusOp__0\(5)
    );
\ectr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => eok_inferred_i_2_n_0,
      I1 => ectr_reg(6),
      O => \plusOp__0\(6)
    );
\ectr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cerr,
      I1 => derr,
      I2 => rst,
      O => ectr0
    );
\ectr[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => eok,
      O => sel
    );
\ectr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => ectr_reg(6),
      I1 => eok_inferred_i_2_n_0,
      I2 => ectr_reg(7),
      O => \plusOp__0\(7)
    );
\ectr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \plusOp__0\(0),
      Q => ectr_reg(0),
      R => ectr0
    );
\ectr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \plusOp__0\(1),
      Q => ectr_reg(1),
      R => ectr0
    );
\ectr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \plusOp__0\(2),
      Q => ectr_reg(2),
      R => ectr0
    );
\ectr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \plusOp__0\(3),
      Q => ectr_reg(3),
      R => ectr0
    );
\ectr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \plusOp__0\(4),
      Q => ectr_reg(4),
      R => ectr0
    );
\ectr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \plusOp__0\(5),
      Q => ectr_reg(5),
      R => ectr0
    );
\ectr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \plusOp__0\(6),
      Q => ectr_reg(6),
      R => ectr0
    );
\ectr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \plusOp__0\(7),
      Q => ectr_reg(7),
      R => ectr0
    );
eok_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ectr_reg(7),
      I1 => ectr_reg(6),
      I2 => eok_inferred_i_2_n_0,
      O => eok
    );
eok_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => ectr_reg(4),
      I1 => ectr_reg(2),
      I2 => ectr_reg(0),
      I3 => ectr_reg(1),
      I4 => ectr_reg(3),
      I5 => ectr_reg(5),
      O => eok_inferred_i_2_n_0
    );
f_del: entity work.\design_1_pdts_endpoint_stdlog_0_0_pdts_del__parameterized0\
     port map (
      D(0) => \s[15]_0\,
      fdel(3 downto 0) => fdel(3 downto 0),
      rxclk => rxclk,
      rxd => rxd
    );
\kctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => kctr(0),
      O => \kctr[0]_i_1_n_0\
    );
\kctr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => stb,
      I1 => kok,
      I2 => c,
      O => kctr0
    );
\kctr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => kctr(0),
      I1 => kctr(1),
      O => \kctr[1]_i_2_n_0\
    );
\kctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => kctr0,
      D => \kctr[0]_i_1_n_0\,
      Q => kctr(0),
      R => sctr0
    );
\kctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => kctr0,
      D => \kctr[1]_i_2_n_0\,
      Q => kctr(1),
      R => sctr0
    );
kok_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => kctr(0),
      I1 => kctr(1),
      O => kok
    );
phase_rst_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pr,
      I1 => phase_locked,
      O => phase_rst
    );
pr_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tc,
      I1 => kok,
      O => pr
    );
prst_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rec_rst,
      I1 => phase_locked,
      O => prst
    );
\sctr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
        port map (
      I0 => \sctr_reg_n_0_[0]\,
      I1 => \sctr_reg_n_0_[2]\,
      I2 => \sctr_reg_n_0_[3]\,
      I3 => \sctr_reg_n_0_[1]\,
      O => sctr(0)
    );
\sctr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A4A"
    )
        port map (
      I0 => \sctr_reg_n_0_[1]\,
      I1 => \sctr_reg_n_0_[2]\,
      I2 => \sctr_reg_n_0_[0]\,
      I3 => \sctr_reg_n_0_[3]\,
      O => sctr(1)
    );
\sctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => \sctr_reg_n_0_[1]\,
      I1 => \sctr_reg_n_0_[2]\,
      I2 => \sctr_reg_n_0_[0]\,
      O => sctr(2)
    );
\sctr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => prst,
      I1 => pr,
      O => sctr0
    );
\sctr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => \sctr_reg_n_0_[0]\,
      I1 => \sctr_reg_n_0_[1]\,
      I2 => \sctr_reg_n_0_[2]\,
      I3 => c,
      I4 => \sctr_reg_n_0_[3]\,
      O => \p_0_in__0\
    );
\sctr[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sctr_reg_n_0_[1]\,
      I1 => \sctr_reg_n_0_[2]\,
      I2 => \sctr_reg_n_0_[0]\,
      I3 => \sctr_reg_n_0_[3]\,
      O => sctr(3)
    );
\sctr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \p_0_in__0\,
      D => sctr(0),
      Q => \sctr_reg_n_0_[0]\,
      S => sctr0
    );
\sctr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \p_0_in__0\,
      D => sctr(1),
      Q => \sctr_reg_n_0_[1]\,
      S => sctr0
    );
\sctr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \p_0_in__0\,
      D => sctr(2),
      Q => \sctr_reg_n_0_[2]\,
      S => sctr0
    );
\sctr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \p_0_in__0\,
      D => sctr(3),
      Q => \sctr_reg_n_0_[3]\,
      S => sctr0
    );
stb_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \sctr_reg_n_0_[1]\,
      I1 => \sctr_reg_n_0_[0]\,
      I2 => \sctr_reg_n_0_[3]\,
      I3 => \sctr_reg_n_0_[2]\,
      O => stb
    );
stbo_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stbd,
      I1 => eok,
      O => stbo0
    );
stbo_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => stbo0,
      Q => stbo,
      R => '0'
    );
tc_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cctr_reg(7),
      I1 => cctr_reg(6),
      I2 => tc_inferred_i_2_n_0,
      O => tc
    );
tc_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cctr_reg(4),
      I1 => cctr_reg(2),
      I2 => cctr_reg(0),
      I3 => cctr_reg(1),
      I4 => cctr_reg(3),
      I5 => cctr_reg(5),
      O => tc_inferred_i_2_n_0
    );
\w_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wa(0),
      Q => w(0),
      R => '0'
    );
\w_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wa(1),
      Q => w(1),
      R => '0'
    );
\w_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wa(2),
      Q => w(2),
      R => '0'
    );
\w_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wa(3),
      Q => w(3),
      R => '0'
    );
\w_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wa(4),
      Q => w(4),
      R => '0'
    );
\w_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wa(5),
      Q => w(5),
      R => '0'
    );
\w_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wa(6),
      Q => w(6),
      R => '0'
    );
\w_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wa(7),
      Q => w(7),
      R => '0'
    );
\w_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wa(8),
      Q => w(8),
      R => '0'
    );
\w_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wa(9),
      Q => w(9),
      R => '0'
    );
\wa_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => wa(1),
      Q => wa(0),
      R => '0'
    );
\wa_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => wa(2),
      Q => wa(1),
      R => '0'
    );
\wa_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => wa(3),
      Q => wa(2),
      R => '0'
    );
\wa_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => wa(4),
      Q => wa(3),
      R => '0'
    );
\wa_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => wa(5),
      Q => wa(4),
      R => '0'
    );
\wa_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => wa(6),
      Q => wa(5),
      R => '0'
    );
\wa_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => wa(7),
      Q => wa(6),
      R => '0'
    );
\wa_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => wa(8),
      Q => wa(7),
      R => '0'
    );
\wa_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => wa(9),
      Q => wa(8),
      R => '0'
    );
\wa_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rxclk,
      CE => '1',
      D => \s[15]_0\,
      Q => wa(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_tx_phy is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    k : in STD_LOGIC;
    stb : in STD_LOGIC;
    txclk : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_tx_phy : entity is "pdts_tx_phy";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_pdts_endpoint_stdlog_0_0_pdts_tx_phy : entity is "soft";
end design_1_pdts_endpoint_stdlog_0_0_pdts_tx_phy;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_tx_phy is
  signal d_tx : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of d_tx : signal is std.standard.true;
  signal rsta : STD_LOGIC;
  signal s : STD_LOGIC;
  signal t : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \t__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal w : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute MARK_DEBUG of w : signal is std.standard.true;
  signal wb : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \wb[0]_i_1_n_0\ : STD_LOGIC;
  signal \wb[1]_i_1_n_0\ : STD_LOGIC;
  signal \wb[2]_i_1_n_0\ : STD_LOGIC;
  signal \wb[3]_i_1_n_0\ : STD_LOGIC;
  signal \wb[4]_i_1_n_0\ : STD_LOGIC;
  signal \wb[5]_i_1_n_0\ : STD_LOGIC;
  signal \wb[6]_i_1_n_0\ : STD_LOGIC;
  signal \wb[7]_i_1_n_0\ : STD_LOGIC;
  signal \wb[8]_i_1_n_0\ : STD_LOGIC;
  signal \wb[9]_i_1_n_0\ : STD_LOGIC;
  signal wc : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute KEEP_HIERARCHY of enc : label is "soft";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \wb[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \wb[9]_i_1\ : label is "soft_lutpair23";
  attribute mark_debug_string : string;
  attribute mark_debug_string of k : signal is "true";
begin
d_tx_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => d(0),
      I1 => k,
      I2 => d(7),
      O => d_tx(7)
    );
d_tx_inferred_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(6),
      I1 => k,
      O => d_tx(6)
    );
d_tx_inferred_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => k,
      I1 => d(5),
      O => d_tx(5)
    );
d_tx_inferred_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => k,
      I1 => d(4),
      O => d_tx(4)
    );
d_tx_inferred_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => k,
      I1 => d(3),
      O => d_tx(3)
    );
d_tx_inferred_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => k,
      I1 => d(2),
      O => d_tx(2)
    );
d_tx_inferred_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(1),
      I1 => k,
      O => d_tx(1)
    );
d_tx_inferred_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => d(0),
      I1 => k,
      O => d_tx(0)
    );
enc: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_enc8b10b
     port map (
      clk => clk,
      d(7 downto 0) => d_tx(7 downto 0),
      en => stb,
      k => k,
      q(9 downto 0) => w(9 downto 0),
      rst => rst
    );
rsta_reg: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => rst,
      Q => rsta,
      R => '0'
    );
s_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => stb,
      Q => s,
      R => '0'
    );
\t_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => txclk,
      CE => '1',
      D => \t__0\(1),
      Q => t(0),
      S => rsta
    );
\t_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \t__0\(2),
      Q => \t__0\(1),
      R => rsta
    );
\t_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \t__0\(3),
      Q => \t__0\(2),
      R => rsta
    );
\t_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \t__0\(4),
      Q => \t__0\(3),
      R => rsta
    );
\t_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => t(0),
      Q => \t__0\(4),
      R => rsta
    );
\wb[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => wc(0),
      I1 => s,
      I2 => t(0),
      I3 => wb(1),
      O => \wb[0]_i_1_n_0\
    );
\wb[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => wc(1),
      I1 => s,
      I2 => t(0),
      I3 => wb(2),
      O => \wb[1]_i_1_n_0\
    );
\wb[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => wc(2),
      I1 => s,
      I2 => t(0),
      I3 => wb(3),
      O => \wb[2]_i_1_n_0\
    );
\wb[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => wc(3),
      I1 => s,
      I2 => t(0),
      I3 => wb(4),
      O => \wb[3]_i_1_n_0\
    );
\wb[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => wc(4),
      I1 => s,
      I2 => t(0),
      I3 => wb(5),
      O => \wb[4]_i_1_n_0\
    );
\wb[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => wc(5),
      I1 => s,
      I2 => t(0),
      I3 => wb(6),
      O => \wb[5]_i_1_n_0\
    );
\wb[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => wc(6),
      I1 => s,
      I2 => t(0),
      I3 => wb(7),
      O => \wb[6]_i_1_n_0\
    );
\wb[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => wc(7),
      I1 => s,
      I2 => t(0),
      I3 => wb(8),
      O => \wb[7]_i_1_n_0\
    );
\wb[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => wc(8),
      I1 => s,
      I2 => t(0),
      I3 => wb(9),
      O => \wb[8]_i_1_n_0\
    );
\wb[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => t(0),
      I1 => s,
      I2 => wc(9),
      O => \wb[9]_i_1_n_0\
    );
\wb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \wb[0]_i_1_n_0\,
      Q => q,
      R => '0'
    );
\wb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \wb[1]_i_1_n_0\,
      Q => wb(1),
      R => '0'
    );
\wb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \wb[2]_i_1_n_0\,
      Q => wb(2),
      R => '0'
    );
\wb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \wb[3]_i_1_n_0\,
      Q => wb(3),
      R => '0'
    );
\wb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \wb[4]_i_1_n_0\,
      Q => wb(4),
      R => '0'
    );
\wb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \wb[5]_i_1_n_0\,
      Q => wb(5),
      R => '0'
    );
\wb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \wb[6]_i_1_n_0\,
      Q => wb(6),
      R => '0'
    );
\wb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \wb[7]_i_1_n_0\,
      Q => wb(7),
      R => '0'
    );
\wb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \wb[8]_i_1_n_0\,
      Q => wb(8),
      R => '0'
    );
\wb_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => \wb[9]_i_1_n_0\,
      Q => wb(9),
      R => '0'
    );
\wc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => w(0),
      Q => wc(0),
      R => '0'
    );
\wc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => w(1),
      Q => wc(1),
      R => '0'
    );
\wc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => w(2),
      Q => wc(2),
      R => '0'
    );
\wc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => w(3),
      Q => wc(3),
      R => '0'
    );
\wc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => w(4),
      Q => wc(4),
      R => '0'
    );
\wc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => w(5),
      Q => wc(5),
      R => '0'
    );
\wc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => w(6),
      Q => wc(6),
      R => '0'
    );
\wc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => w(7),
      Q => wc(7),
      R => '0'
    );
\wc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => w(8),
      Q => wc(8),
      R => '0'
    );
\wc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => txclk,
      CE => '1',
      D => w(9),
      Q => wc(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_rx is
  port (
    \err_reg[0]_0\ : out STD_LOGIC;
    sync_stb : out STD_LOGIC;
    s_stb : out STD_LOGIC;
    active_reg : out STD_LOGIC;
    s_first : out STD_LOGIC;
    \q_reg[1]\ : out STD_LOGIC;
    sync_first : out STD_LOGIC;
    slen : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    a_stb : out STD_LOGIC;
    a_first : out STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stbo : in STD_LOGIC;
    k : in STD_LOGIC;
    active : in STD_LOGIC;
    q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    src_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tgrp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_rx : entity is "pdts_rx";
end design_1_pdts_endpoint_stdlog_0_0_pdts_rx;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_rx is
  signal \^a_first\ : STD_LOGIC;
  signal a_match_i_1_n_0 : STD_LOGIC;
  signal a_match_i_2_n_0 : STD_LOGIC;
  signal a_match_i_3_n_0 : STD_LOGIC;
  signal a_match_i_4_n_0 : STD_LOGIC;
  signal a_match_i_5_n_0 : STD_LOGIC;
  signal a_match_i_6_n_0 : STD_LOGIC;
  signal a_match_i_7_n_0 : STD_LOGIC;
  signal a_match_i_8_n_0 : STD_LOGIC;
  signal a_match_reg_n_0 : STD_LOGIC;
  signal \^a_stb\ : STD_LOGIC;
  signal actr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \c[3]_i_5_n_0\ : STD_LOGIC;
  signal cksum_n_0 : STD_LOGIC;
  signal cstb : STD_LOGIC;
  signal err : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \err114_out__4\ : STD_LOGIC;
  signal \err116_out__2\ : STD_LOGIC;
  signal \err1__6\ : STD_LOGIC;
  signal \err[1]_i_3_n_0\ : STD_LOGIC;
  signal \err[2]_i_4_n_0\ : STD_LOGIC;
  signal \err[2]_i_5_n_0\ : STD_LOGIC;
  signal err_c : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal issue : STD_LOGIC;
  signal ka : STD_LOGIC;
  signal ks : STD_LOGIC;
  signal pend : STD_LOGIC;
  signal pend0 : STD_LOGIC;
  signal \pend1__0\ : STD_LOGIC;
  signal pend_f : STD_LOGIC;
  signal pend_f0 : STD_LOGIC;
  signal pend_f_i_2_n_0 : STD_LOGIC;
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s_first\ : STD_LOGIC;
  signal s_match : STD_LOGIC;
  signal s_match_r_reg_n_0 : STD_LOGIC;
  signal \^s_stb\ : STD_LOGIC;
  signal sctr0 : STD_LOGIC;
  signal \sctr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal sctr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^slen\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal slen_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \slen_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \slen_r[3]_i_3_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state32_in : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_6_n_0\ : STD_LOGIC;
  signal \state[1]_i_7_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal sync_stb_INST_0_i_3_n_0 : STD_LOGIC;
  signal ts : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ts[3]_i_1_n_0\ : STD_LOGIC;
  signal \vctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \vctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \vctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \vctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \vctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \vctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \vctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \vctr_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of a_match_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of a_match_i_8 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \actr[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \actr[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \actr[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \actr[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \actr[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \c[3]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \c[3]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \err[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \err[2]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \err[2]_i_5\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of pend_f_i_2 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of pend_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sctr[0]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \sctr[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \sctr[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sctr[4]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \slen_r[3]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \state[1]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \state[1]_i_7\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of sync_first_INST_0 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of sync_first_INST_0_i_2 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of sync_stb_INST_0 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of sync_stb_INST_0_i_3 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \vctr[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \vctr[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \vctr[3]_i_1\ : label is "soft_lutpair49";
begin
  a_first <= \^a_first\;
  a_stb <= \^a_stb\;
  s_first <= \^s_first\;
  s_stb <= \^s_stb\;
  slen(0) <= \^slen\(0);
a_match_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABABAAA"
    )
        port map (
      I0 => a_match_reg_n_0,
      I1 => a_match_i_2_n_0,
      I2 => a_match_i_3_n_0,
      I3 => a_match_i_4_n_0,
      I4 => a_match_i_5_n_0,
      I5 => ka,
      O => a_match_i_1_n_0
    );
a_match_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => a_match_i_2_n_0
    );
a_match_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => stbo,
      I1 => actr_reg(2),
      I2 => actr_reg(0),
      I3 => actr_reg(1),
      I4 => actr_reg(4),
      I5 => actr_reg(3),
      O => a_match_i_3_n_0
    );
a_match_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041000A4B"
    )
        port map (
      I0 => actr_reg(0),
      I1 => addr(6),
      I2 => q(6),
      I3 => addr(7),
      I4 => q(7),
      I5 => a_match_i_6_n_0,
      O => a_match_i_4_n_0
    );
a_match_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => q(6),
      I1 => q(7),
      I2 => q(4),
      I3 => q(5),
      I4 => \^slen\(0),
      O => a_match_i_5_n_0
    );
a_match_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFBBEFBA"
    )
        port map (
      I0 => a_match_i_7_n_0,
      I1 => actr_reg(0),
      I2 => addr(2),
      I3 => q(2),
      I4 => addr(5),
      I5 => q(5),
      O => a_match_i_6_n_0
    );
a_match_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEFFF5B4"
    )
        port map (
      I0 => actr_reg(0),
      I1 => addr(0),
      I2 => q(0),
      I3 => addr(1),
      I4 => q(1),
      I5 => a_match_i_8_n_0,
      O => a_match_i_7_n_0
    );
a_match_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFA6FF6"
    )
        port map (
      I0 => q(4),
      I1 => addr(4),
      I2 => q(3),
      I3 => addr(3),
      I4 => actr_reg(0),
      O => a_match_i_8_n_0
    );
a_match_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_match_i_1_n_0,
      Q => a_match_reg_n_0,
      R => '0'
    );
active_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \^s_stb\,
      I1 => active,
      I2 => q(0),
      I3 => q(1),
      I4 => src_reg,
      I5 => \^s_first\,
      O => active_reg
    );
\actr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => actr_reg(0),
      O => \plusOp__3\(0)
    );
\actr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => actr_reg(0),
      I1 => actr_reg(1),
      O => \plusOp__3\(1)
    );
\actr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => actr_reg(0),
      I1 => actr_reg(1),
      I2 => actr_reg(2),
      O => \plusOp__3\(2)
    );
\actr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => actr_reg(1),
      I1 => actr_reg(0),
      I2 => actr_reg(2),
      I3 => actr_reg(3),
      O => \plusOp__3\(3)
    );
\actr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => actr_reg(2),
      I1 => actr_reg(0),
      I2 => actr_reg(1),
      I3 => actr_reg(3),
      I4 => actr_reg(4),
      O => \plusOp__3\(4)
    );
\actr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cstb,
      D => \plusOp__3\(0),
      Q => actr_reg(0),
      R => ka
    );
\actr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cstb,
      D => \plusOp__3\(1),
      Q => actr_reg(1),
      R => ka
    );
\actr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cstb,
      D => \plusOp__3\(2),
      Q => actr_reg(2),
      R => ka
    );
\actr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cstb,
      D => \plusOp__3\(3),
      Q => actr_reg(3),
      R => ka
    );
\actr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cstb,
      D => \plusOp__3\(4),
      Q => actr_reg(4),
      R => ka
    );
\c[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^a_stb\,
      I1 => \^a_first\,
      I2 => \out\(0),
      O => SR(0)
    );
\c[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \c[3]_i_5_n_0\,
      I1 => actr_reg(2),
      I2 => actr_reg(3),
      I3 => actr_reg(4),
      I4 => actr_reg(1),
      O => \^a_stb\
    );
\c[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => actr_reg(3),
      I1 => actr_reg(4),
      I2 => actr_reg(2),
      I3 => actr_reg(1),
      I4 => actr_reg(0),
      I5 => \c[3]_i_5_n_0\,
      O => \^a_first\
    );
\c[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => a_match_reg_n_0,
      I1 => stbo,
      I2 => k,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \c[3]_i_5_n_0\
    );
cksum: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_cksum_2
     port map (
      D(1 downto 0) => state(1 downto 0),
      E(0) => cksum_n_0,
      Q(1) => \state_reg_n_0_[1]\,
      Q(0) => \state_reg_n_0_[0]\,
      clk => clk,
      \err114_out__4\ => \err114_out__4\,
      \err116_out__2\ => \err116_out__2\,
      \err1__6\ => \err1__6\,
      k => k,
      ka => ka,
      ks => ks,
      \^q\(7 downto 0) => q(7 downto 0),
      \state_reg[0]\(0) => err_c(0),
      \state_reg[0]_0\ => \state[1]_i_3_n_0\,
      \state_reg[0]_1\ => \state[1]_i_4_n_0\,
      \state_reg[0]_2\ => \state[1]_i_6_n_0\,
      \state_reg[1]\(0) => cstb,
      stbo => stbo
    );
\err[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000060"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \err1__6\,
      I3 => \err114_out__4\,
      I4 => \err116_out__2\,
      O => err_c(1)
    );
\err[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \err[1]_i_3_n_0\,
      I1 => actr_reg(4),
      I2 => actr_reg(3),
      I3 => sctr_reg(4),
      I4 => sctr_reg(3),
      O => \err1__6\
    );
\err[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => sctr_reg(4),
      I1 => sctr_reg(1),
      I2 => sctr_reg(2),
      I3 => actr_reg(4),
      I4 => actr_reg(1),
      I5 => actr_reg(2),
      O => \err[1]_i_3_n_0\
    );
\err[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \err116_out__2\,
      I1 => \err114_out__4\,
      O => err_c(2)
    );
\err[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000E0000000000"
    )
        port map (
      I0 => ka,
      I1 => ks,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => sctr_reg(4),
      I5 => \err[2]_i_4_n_0\,
      O => \err116_out__2\
    );
\err[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001F00000000"
    )
        port map (
      I0 => actr_reg(1),
      I1 => actr_reg(0),
      I2 => actr_reg(2),
      I3 => a_match_i_2_n_0,
      I4 => \err[2]_i_5_n_0\,
      I5 => ka,
      O => \err114_out__4\
    );
\err[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444444D"
    )
        port map (
      I0 => sctr_reg(3),
      I1 => \^slen\(0),
      I2 => sctr_reg(1),
      I3 => sctr_reg(2),
      I4 => sctr_reg(0),
      O => \err[2]_i_4_n_0\
    );
\err[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => actr_reg(3),
      I1 => actr_reg(4),
      O => \err[2]_i_5_n_0\
    );
\err_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_c(0),
      Q => err(0),
      R => '0'
    );
\err_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_c(1),
      Q => err(1),
      R => '0'
    );
\err_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_c(2),
      Q => err(2),
      R => '0'
    );
pend_f_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888A8888888"
    )
        port map (
      I0 => pend_f_i_2_n_0,
      I1 => pend_f,
      I2 => sctr0,
      I3 => sctr_reg(0),
      I4 => s_match_r_reg_n_0,
      I5 => state32_in,
      O => pend_f0
    );
pend_f_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => issue,
      I1 => \out\(0),
      O => pend_f_i_2_n_0
    );
pend_f_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pend_f0,
      Q => pend_f,
      R => '0'
    );
pend_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11101010"
    )
        port map (
      I0 => \out\(0),
      I1 => issue,
      I2 => pend,
      I3 => sctr0,
      I4 => s_match_r_reg_n_0,
      O => pend0
    );
pend_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pend0,
      Q => pend,
      R => '0'
    );
\q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \c[3]_i_5_n_0\,
      I1 => actr_reg(0),
      I2 => actr_reg(1),
      I3 => actr_reg(2),
      I4 => actr_reg(4),
      I5 => actr_reg(3),
      O => E(0)
    );
rx_err_f_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => err(0),
      I1 => err(2),
      I2 => err(1),
      I3 => D(0),
      O => \err_reg[0]_0\
    );
s_match_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFAFA0C0C0AFA0"
    )
        port map (
      I0 => q(6),
      I1 => q(7),
      I2 => tgrp(1),
      I3 => q(4),
      I4 => tgrp(0),
      I5 => q(5),
      O => s_match
    );
s_match_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
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
\sctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sctr_reg(0),
      I1 => sctr_reg(1),
      O => \plusOp__2\(1)
    );
\sctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sctr_reg(0),
      I1 => sctr_reg(1),
      I2 => sctr_reg(2),
      O => \plusOp__2\(2)
    );
\sctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sctr_reg(1),
      I1 => sctr_reg(0),
      I2 => sctr_reg(2),
      I3 => sctr_reg(3),
      O => \plusOp__2\(3)
    );
\sctr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => stbo,
      O => sctr0
    );
\sctr[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => sctr_reg(2),
      I1 => sctr_reg(0),
      I2 => sctr_reg(1),
      I3 => sctr_reg(3),
      I4 => sctr_reg(4),
      O => \plusOp__2\(4)
    );
\sctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sctr0,
      D => \sctr[0]_i_1__0_n_0\,
      Q => sctr_reg(0),
      R => ks
    );
\sctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sctr0,
      D => \plusOp__2\(1),
      Q => sctr_reg(1),
      R => ks
    );
\sctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sctr0,
      D => \plusOp__2\(2),
      Q => sctr_reg(2),
      R => ks
    );
\sctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sctr0,
      D => \plusOp__2\(3),
      Q => sctr_reg(3),
      R => ks
    );
\sctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sctr0,
      D => \plusOp__2\(4),
      Q => sctr_reg(4),
      R => ks
    );
\slen_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slen_r[3]_i_3_n_0\,
      I1 => sctr_reg(4),
      I2 => sctr_reg(1),
      I3 => sctr_reg(2),
      I4 => sctr_reg(3),
      I5 => sctr_reg(0),
      O => \slen_r[3]_i_1_n_0\
    );
\slen_r[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => q(3),
      I1 => q(2),
      I2 => q(0),
      I3 => q(1),
      O => \^slen\(0)
    );
\slen_r[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      O => \slen_r[3]_i_3_n_0\
    );
\slen_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slen_r[3]_i_1_n_0\,
      D => '1',
      Q => slen_r(0),
      R => '0'
    );
\slen_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \slen_r[3]_i_1_n_0\,
      D => \^slen\(0),
      Q => slen_r(3),
      R => '0'
    );
\state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => stbo,
      I1 => \state[1]_i_7_n_0\,
      I2 => sctr_reg(4),
      I3 => sctr_reg(3),
      I4 => sctr_reg(2),
      I5 => sctr_reg(1),
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^slen\(0),
      I1 => stbo,
      I2 => state32_in,
      I3 => sctr_reg(0),
      O => \state[1]_i_4_n_0\
    );
\state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => ks,
      I1 => ka,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      O => \state[1]_i_6_n_0\
    );
\state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => sctr_reg(3),
      I1 => slen_r(3),
      I2 => sctr_reg(0),
      I3 => slen_r(0),
      O => \state[1]_i_7_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cksum_n_0,
      D => state(0),
      Q => \state_reg_n_0_[0]\,
      R => \out\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cksum_n_0,
      D => state(1),
      Q => \state_reg_n_0_[1]\,
      R => \out\(0)
    );
sync_first_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_first\,
      I1 => D(1),
      O => sync_first
    );
sync_first_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888A8888888"
    )
        port map (
      I0 => issue,
      I1 => pend_f,
      I2 => sctr0,
      I3 => sctr_reg(0),
      I4 => s_match_r_reg_n_0,
      I5 => state32_in,
      O => \^s_first\
    );
sync_first_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sctr_reg(1),
      I1 => sctr_reg(2),
      I2 => sctr_reg(3),
      I3 => sctr_reg(4),
      O => state32_in
    );
sync_stb_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_stb\,
      I1 => D(1),
      O => sync_stb
    );
sync_stb_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888A88888888888"
    )
        port map (
      I0 => issue,
      I1 => pend,
      I2 => stbo,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => s_match_r_reg_n_0,
      O => \^s_stb\
    );
sync_stb_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => ts(3),
      I1 => \vctr_reg_n_0_[3]\,
      I2 => ts(2),
      I3 => \vctr_reg_n_0_[2]\,
      I4 => sync_stb_INST_0_i_3_n_0,
      O => issue
    );
sync_stb_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \vctr_reg_n_0_[0]\,
      I1 => ts(0),
      I2 => \vctr_reg_n_0_[1]\,
      I3 => ts(1),
      O => sync_stb_INST_0_i_3_n_0
    );
\ts[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => sctr_reg(0),
      I1 => \slen_r[3]_i_3_n_0\,
      I2 => sctr_reg(4),
      I3 => sctr_reg(3),
      I4 => sctr_reg(2),
      I5 => sctr_reg(1),
      O => \ts[3]_i_1_n_0\
    );
\ts_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ts[3]_i_1_n_0\,
      D => q(0),
      Q => ts(0),
      R => '0'
    );
\ts_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ts[3]_i_1_n_0\,
      D => q(1),
      Q => ts(1),
      R => '0'
    );
\ts_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ts[3]_i_1_n_0\,
      D => q(2),
      Q => ts(2),
      R => '0'
    );
\ts_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \ts[3]_i_1_n_0\,
      D => q(3),
      Q => ts(3),
      R => '0'
    );
txphy_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => src_reg,
      I1 => q(1),
      I2 => q(0),
      I3 => active,
      I4 => \pend1__0\,
      I5 => issue,
      O => \q_reg[1]\
    );
txphy_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => s_match_r_reg_n_0,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => stbo,
      I4 => pend,
      O => \pend1__0\
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
      INIT => X"3C2C"
    )
        port map (
      I0 => \vctr_reg_n_0_[3]\,
      I1 => \vctr_reg_n_0_[1]\,
      I2 => \vctr_reg_n_0_[0]\,
      I3 => \vctr_reg_n_0_[2]\,
      O => \vctr[1]_i_1_n_0\
    );
\vctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \vctr_reg_n_0_[1]\,
      I1 => \vctr_reg_n_0_[0]\,
      I2 => \vctr_reg_n_0_[2]\,
      O => \vctr[2]_i_1_n_0\
    );
\vctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \vctr_reg_n_0_[3]\,
      I1 => \vctr_reg_n_0_[1]\,
      I2 => \vctr_reg_n_0_[0]\,
      I3 => \vctr_reg_n_0_[2]\,
      O => \vctr[3]_i_1_n_0\
    );
\vctr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \vctr[0]_i_1_n_0\,
      Q => \vctr_reg_n_0_[0]\,
      S => stbo
    );
\vctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \vctr[1]_i_1_n_0\,
      Q => \vctr_reg_n_0_[1]\,
      R => stbo
    );
\vctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \vctr[2]_i_1_n_0\,
      Q => \vctr_reg_n_0_[2]\,
      R => stbo
    );
\vctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \vctr[3]_i_1_n_0\,
      Q => \vctr_reg_n_0_[3]\,
      R => stbo
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_tx is
  port (
    s_ok_reg_0 : out STD_LOGIC;
    active0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    k : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    src_reg : in STD_LOGIC;
    active : in STD_LOGIC;
    src : in STD_LOGIC;
    stbo : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txphy_i_7 : in STD_LOGIC;
    s_first : in STD_LOGIC;
    s_stb : in STD_LOGIC;
    \lfsr_q_reg[0]\ : in STD_LOGIC;
    \acmd_out[d]1\ : in STD_LOGIC;
    \lfsr_q_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \acmdw[last]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_tx : entity is "pdts_tx";
end design_1_pdts_endpoint_stdlog_0_0_pdts_tx;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_tx is
  signal \FSM_sequential_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal active_i_2_n_0 : STD_LOGIC;
  signal actr_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \actr_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \actr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \actr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \actr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \actr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \actr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \actr_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \actr_i[7]_i_3_n_0\ : STD_LOGIC;
  signal cksum_n_9 : STD_LOGIC;
  signal icsum0 : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal \plusOp__5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__6\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_ok : STD_LOGIC;
  signal s_ok_i_1_n_0 : STD_LOGIC;
  signal sctr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \smode__1\ : STD_LOGIC;
  signal smode_r : STD_LOGIC;
  signal smode_r_i_1_n_0 : STD_LOGIC;
  signal \spctr[3]_i_2_n_0\ : STD_LOGIC;
  signal spctr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__14\ : STD_LOGIC;
  signal sw : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sw0 : STD_LOGIC;
  signal \sw[7]_i_1_n_0\ : STD_LOGIC;
  signal trans : STD_LOGIC;
  signal trans_i_1_n_0 : STD_LOGIC;
  signal trans_reg_n_0 : STD_LOGIC;
  signal txphy_i_11_n_0 : STD_LOGIC;
  signal txphy_i_12_n_0 : STD_LOGIC;
  signal txphy_i_19_n_0 : STD_LOGIC;
  signal txphy_i_23_n_0 : STD_LOGIC;
  signal \w[7]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_12\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair73";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "start:110,st_k:001,st_a:101,st_s:100,st_d:010,st_e:011,st_c:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "start:110,st_k:001,st_a:101,st_s:100,st_d:010,st_e:011,st_c:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "start:110,st_k:001,st_a:101,st_s:100,st_d:010,st_e:011,st_c:000";
  attribute SOFT_HLUTNM of active_i_2 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \actr_i[0]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \actr_i[1]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \actr_i[2]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \actr_i[3]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \actr_i[5]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \actr_i[6]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \actr_i[7]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \r[7]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \sctr[0]_i_1__1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sctr[1]_i_1__0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sctr[2]_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sctr[3]_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \spctr[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \spctr[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \spctr[2]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \spctr[3]_i_3\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of txphy_i_12 : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of txphy_i_19 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \w[7]_i_2\ : label is "soft_lutpair77";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"225F"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \acmdw[last]\,
      I3 => \state__0\(2),
      O => \state__1\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0310"
    )
        port map (
      I0 => \acmdw[last]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      O => \state__1\(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \smode__1\,
      I1 => stbo,
      I2 => \state__14\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => actr_i(5),
      I1 => actr_i(6),
      I2 => actr_i(7),
      I3 => trans_reg_n_0,
      I4 => actr_i(4),
      O => \FSM_sequential_state[2]_i_11_n_0\
    );
\FSM_sequential_state[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => actr_i(3),
      I1 => trans_reg_n_0,
      I2 => actr_i(2),
      O => \FSM_sequential_state[2]_i_12_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \state__1\(2)
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAFBFAABAAFBAAA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_6_n_0\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \FSM_sequential_state[2]_i_7_n_0\,
      I5 => \FSM_sequential_state[2]_i_8_n_0\,
      O => \state__14\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404440"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \acmdw[last]\,
      I3 => \FSM_sequential_state[2]_i_9_n_0\,
      I4 => cksum_n_9,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000100"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_11_n_0\,
      I1 => actr_i(1),
      I2 => trans_reg_n_0,
      I3 => actr_i(0),
      I4 => \FSM_sequential_state[2]_i_12_n_0\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCCCCD"
    )
        port map (
      I0 => actr_i(3),
      I1 => trans_reg_n_0,
      I2 => actr_i(2),
      I3 => actr_i(1),
      I4 => actr_i(0),
      I5 => \FSM_sequential_state[2]_i_11_n_0\,
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => actr_i(1),
      I1 => actr_i(4),
      I2 => actr_i(0),
      I3 => actr_i(2),
      I4 => trans_reg_n_0,
      I5 => actr_i(3),
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      D => \state__1\(0),
      Q => \state__0\(0),
      R => \out\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      D => \state__1\(1),
      Q => \state__0\(1),
      S => \out\(0)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      D => \state__1\(2),
      Q => \state__0\(2),
      S => \out\(0)
    );
active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F0F77007F007F00"
    )
        port map (
      I0 => src,
      I1 => active_i_2_n_0,
      I2 => smode_r,
      I3 => active,
      I4 => src_reg,
      I5 => s_ok,
      O => active0
    );
active_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => stbo,
      I1 => spctr_reg(0),
      I2 => spctr_reg(2),
      I3 => spctr_reg(1),
      I4 => spctr_reg(3),
      O => active_i_2_n_0
    );
\actr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => trans_reg_n_0,
      I1 => actr_i(0),
      O => icsum0
    );
\actr_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => actr_i(0),
      I1 => trans_reg_n_0,
      I2 => actr_i(1),
      O => \actr_i[1]_i_1_n_0\
    );
\actr_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => actr_i(0),
      I1 => actr_i(1),
      I2 => trans_reg_n_0,
      I3 => actr_i(2),
      O => \actr_i[2]_i_1_n_0\
    );
\actr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => actr_i(1),
      I1 => actr_i(0),
      I2 => actr_i(2),
      I3 => trans_reg_n_0,
      I4 => actr_i(3),
      O => \actr_i[3]_i_1_n_0\
    );
\actr_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => actr_i(2),
      I1 => actr_i(0),
      I2 => actr_i(1),
      I3 => actr_i(3),
      I4 => trans_reg_n_0,
      I5 => actr_i(4),
      O => \actr_i[4]_i_1_n_0\
    );
\actr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \actr_i[7]_i_3_n_0\,
      I1 => trans_reg_n_0,
      I2 => actr_i(5),
      O => \actr_i[5]_i_1_n_0\
    );
\actr_i[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \actr_i[7]_i_3_n_0\,
      I1 => actr_i(5),
      I2 => trans_reg_n_0,
      I3 => actr_i(6),
      O => \actr_i[6]_i_1_n_0\
    );
\actr_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stbo,
      I1 => \smode__1\,
      O => p_8_in
    );
\actr_i[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => actr_i(5),
      I1 => \actr_i[7]_i_3_n_0\,
      I2 => actr_i(6),
      I3 => trans_reg_n_0,
      I4 => actr_i(7),
      O => \actr_i[7]_i_2_n_0\
    );
\actr_i[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => actr_i(4),
      I1 => actr_i(2),
      I2 => actr_i(0),
      I3 => trans_reg_n_0,
      I4 => actr_i(1),
      I5 => actr_i(3),
      O => \actr_i[7]_i_3_n_0\
    );
\actr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_8_in,
      D => icsum0,
      Q => actr_i(0),
      R => '0'
    );
\actr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_8_in,
      D => \actr_i[1]_i_1_n_0\,
      Q => actr_i(1),
      R => '0'
    );
\actr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_8_in,
      D => \actr_i[2]_i_1_n_0\,
      Q => actr_i(2),
      R => '0'
    );
\actr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_8_in,
      D => \actr_i[3]_i_1_n_0\,
      Q => actr_i(3),
      R => '0'
    );
\actr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_8_in,
      D => \actr_i[4]_i_1_n_0\,
      Q => actr_i(4),
      R => '0'
    );
\actr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_8_in,
      D => \actr_i[5]_i_1_n_0\,
      Q => actr_i(5),
      R => '0'
    );
\actr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_8_in,
      D => \actr_i[6]_i_1_n_0\,
      Q => actr_i(6),
      R => '0'
    );
\actr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_8_in,
      D => \actr_i[7]_i_2_n_0\,
      Q => actr_i(7),
      R => '0'
    );
cksum: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_cksum
     port map (
      Q(6 downto 0) => Q(7 downto 1),
      SS(0) => p_0_in5_in,
      \acmd_out[d]1\ => \acmd_out[d]1\,
      active => active,
      \actr_i_reg[7]\ => cksum_n_9,
      addr(7 downto 0) => addr(7 downto 0),
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      d_tx_inferred_i_1 => txphy_i_19_n_0,
      d_tx_inferred_i_7 => txphy_i_11_n_0,
      d_tx_inferred_i_7_0 => txphy_i_12_n_0,
      \lfsr_q_reg[0]\ => \lfsr_q_reg[0]\,
      \lfsr_q_reg[0]_0\(2 downto 0) => \state__0\(2 downto 0),
      \lfsr_q_reg[8]\(7 downto 0) => \lfsr_q_reg[8]\(7 downto 0),
      s_first => s_first,
      s_ok => s_ok,
      s_stb => s_stb,
      \smode__1\ => \smode__1\,
      smode_r => smode_r,
      stbo => stbo,
      sw(6 downto 0) => sw(7 downto 1),
      txphy_i_31(7 downto 0) => actr_i(7 downto 0),
      txphy_i_31_0 => trans_reg_n_0
    );
\r[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00240000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \smode__1\,
      I4 => stbo,
      O => \FSM_sequential_state_reg[2]_0\(0)
    );
s_ok_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00020000"
    )
        port map (
      I0 => stbo,
      I1 => \smode__1\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => s_ok,
      O => s_ok_i_1_n_0
    );
s_ok_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_ok_i_1_n_0,
      Q => s_ok,
      R => \out\(0)
    );
\sctr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sctr_reg(0),
      O => \plusOp__6\(0)
    );
\sctr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sctr_reg(0),
      I1 => sctr_reg(1),
      O => \plusOp__6\(1)
    );
\sctr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sctr_reg(0),
      I1 => sctr_reg(1),
      I2 => sctr_reg(2),
      O => \plusOp__6\(2)
    );
\sctr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sctr_reg(1),
      I1 => sctr_reg(0),
      I2 => sctr_reg(2),
      I3 => sctr_reg(3),
      O => \plusOp__6\(3)
    );
\sctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \plusOp__6\(0),
      Q => sctr_reg(0),
      R => stbo
    );
\sctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \plusOp__6\(1),
      Q => sctr_reg(1),
      R => stbo
    );
\sctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \plusOp__6\(2),
      Q => sctr_reg(2),
      R => stbo
    );
\sctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \plusOp__6\(3),
      Q => sctr_reg(3),
      R => stbo
    );
smode_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
        port map (
      I0 => \smode__1\,
      I1 => \out\(0),
      I2 => src,
      I3 => stbo,
      O => smode_r_i_1_n_0
    );
smode_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => smode_r_i_1_n_0,
      Q => smode_r,
      R => '0'
    );
\spctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spctr_reg(0),
      O => \plusOp__5\(0)
    );
\spctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => spctr_reg(0),
      I1 => spctr_reg(1),
      O => \plusOp__5\(1)
    );
\spctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => spctr_reg(0),
      I1 => spctr_reg(1),
      I2 => spctr_reg(2),
      O => \plusOp__5\(2)
    );
\spctr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stbo,
      I1 => \smode__1\,
      O => \spctr[3]_i_2_n_0\
    );
\spctr[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => spctr_reg(1),
      I1 => spctr_reg(0),
      I2 => spctr_reg(2),
      I3 => spctr_reg(3),
      O => \plusOp__5\(3)
    );
\spctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \spctr[3]_i_2_n_0\,
      D => \plusOp__5\(0),
      Q => spctr_reg(0),
      R => SR(0)
    );
\spctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \spctr[3]_i_2_n_0\,
      D => \plusOp__5\(1),
      Q => spctr_reg(1),
      R => SR(0)
    );
\spctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \spctr[3]_i_2_n_0\,
      D => \plusOp__5\(2),
      Q => spctr_reg(2),
      R => SR(0)
    );
\spctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \spctr[3]_i_2_n_0\,
      D => \plusOp__5\(3),
      Q => spctr_reg(3),
      R => SR(0)
    );
src_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555777FAA008880"
    )
        port map (
      I0 => active_i_2_n_0,
      I1 => s_ok,
      I2 => src_reg,
      I3 => active,
      I4 => smode_r,
      I5 => src,
      O => s_ok_reg_0
    );
\sw[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \smode__1\,
      I1 => smode_r,
      O => sw0
    );
\sw[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => smode_r,
      I1 => \smode__1\,
      I2 => src,
      O => \sw[7]_i_1_n_0\
    );
\sw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sw0,
      D => sctr_reg(0),
      Q => sw(0),
      R => '0'
    );
\sw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sw0,
      D => sctr_reg(1),
      Q => sw(1),
      R => '0'
    );
\sw_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sw0,
      D => sctr_reg(2),
      Q => sw(2),
      R => '0'
    );
\sw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sw0,
      D => sctr_reg(3),
      Q => sw(3),
      R => '0'
    );
\sw_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sw0,
      D => Q(4),
      Q => sw(4),
      R => \sw[7]_i_1_n_0\
    );
\sw_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sw0,
      D => Q(5),
      Q => sw(5),
      R => \sw[7]_i_1_n_0\
    );
\sw_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sw0,
      D => Q(6),
      Q => sw(6),
      R => \sw[7]_i_1_n_0\
    );
\sw_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sw0,
      D => Q(7),
      Q => sw(7),
      R => \sw[7]_i_1_n_0\
    );
trans_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => trans,
      I1 => \smode__1\,
      I2 => stbo,
      I3 => \out\(0),
      I4 => trans_reg_n_0,
      O => trans_i_1_n_0
    );
trans_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB30B8"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_8_n_0\,
      I1 => \state__0\(2),
      I2 => \FSM_sequential_state[2]_i_6_n_0\,
      I3 => \state__0\(1),
      I4 => \FSM_sequential_state[2]_i_7_n_0\,
      O => trans
    );
trans_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trans_i_1_n_0,
      Q => trans_reg_n_0,
      R => '0'
    );
txphy_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444444400000000"
    )
        port map (
      I0 => \w[7]_i_2_n_0\,
      I1 => txphy_i_23_n_0,
      I2 => txphy_i_7,
      I3 => s_first,
      I4 => s_ok,
      I5 => spctr_reg(0),
      O => txphy_i_11_n_0
    );
txphy_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => spctr_reg(3),
      I1 => spctr_reg(1),
      I2 => spctr_reg(2),
      I3 => src,
      O => txphy_i_12_n_0
    );
txphy_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0DD00DD"
    )
        port map (
      I0 => spctr_reg(0),
      I1 => sw(0),
      I2 => Q(0),
      I3 => \w[7]_i_2_n_0\,
      I4 => src,
      O => txphy_i_19_n_0
    );
txphy_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => active,
      I1 => s_ok,
      I2 => smode_r,
      O => txphy_i_23_n_0
    );
txphy_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => spctr_reg(3),
      I1 => spctr_reg(1),
      I2 => spctr_reg(2),
      I3 => spctr_reg(0),
      I4 => \smode__1\,
      I5 => p_0_in5_in,
      O => k
    );
\w[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAAAAAAAAAAAAA"
    )
        port map (
      I0 => src_reg,
      I1 => \w[7]_i_2_n_0\,
      I2 => spctr_reg(0),
      I3 => stbo,
      I4 => \smode__1\,
      I5 => src,
      O => E(0)
    );
\w[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => spctr_reg(2),
      I1 => spctr_reg(1),
      I2 => spctr_reg(3),
      O => \w[7]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint is
  port (
    debug : out STD_LOGIC_VECTOR ( 21 downto 0 );
    rst : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sync_stb : out STD_LOGIC;
    sync_first : out STD_LOGIC;
    tx_dis : out STD_LOGIC;
    txd : out STD_LOGIC;
    rec_clk : in STD_LOGIC;
    rec_d : in STD_LOGIC;
    sclk : in STD_LOGIC;
    srst : in STD_LOGIC;
    pll_locked : in STD_LOGIC;
    cdr_lol : in STD_LOGIC;
    cdr_los : in STD_LOGIC;
    sfp_los : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tgrp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint : entity is "pdts_endpoint";
end design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint is
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal a_first : STD_LOGIC;
  signal a_stb : STD_LOGIC;
  signal \acmd_out[d]1\ : STD_LOGIC;
  signal acmd_rx_n_0 : STD_LOGIC;
  signal acmd_rx_n_1 : STD_LOGIC;
  signal acmd_rx_n_10 : STD_LOGIC;
  signal acmd_rx_n_11 : STD_LOGIC;
  signal acmd_rx_n_12 : STD_LOGIC;
  signal acmd_rx_n_3 : STD_LOGIC;
  signal acmd_rx_n_4 : STD_LOGIC;
  signal acmd_rx_n_5 : STD_LOGIC;
  signal acmd_rx_n_6 : STD_LOGIC;
  signal acmd_rx_n_7 : STD_LOGIC;
  signal acmd_rx_n_8 : STD_LOGIC;
  signal acmd_rx_n_9 : STD_LOGIC;
  signal \acmdr[ren]\ : STD_LOGIC;
  signal \acmdw[last]\ : STD_LOGIC;
  signal active : STD_LOGIC;
  signal active0 : STD_LOGIC;
  signal adj_ack_i : STD_LOGIC;
  signal adj_req : STD_LOGIC;
  signal c : STD_LOGIC_VECTOR ( 3 to 3 );
  signal cdel : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^clk\ : STD_LOGIC;
  signal \^d_1\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal fdel : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal k : STD_LOGIC;
  signal merge_n_2 : STD_LOGIC;
  signal merge_n_4 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal phase_locked : STD_LOGIC;
  signal phase_rst : STD_LOGIC;
  signal r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rdy_i : STD_LOGIC;
  signal rec_rst : STD_LOGIC;
  signal rst_i : STD_LOGIC;
  signal rx_err_f : STD_LOGIC;
  signal rx_n_0 : STD_LOGIC;
  signal rx_n_3 : STD_LOGIC;
  signal rx_n_5 : STD_LOGIC;
  signal rx_n_8 : STD_LOGIC;
  signal rxphy_aligned : STD_LOGIC;
  signal rxphy_locked : STD_LOGIC;
  signal rxphy_rst : STD_LOGIC;
  signal s_first : STD_LOGIC;
  signal \s_reg[4]\ : STD_LOGIC;
  signal s_stb : STD_LOGIC;
  signal slen : STD_LOGIC_VECTOR ( 3 to 3 );
  signal smode_r2 : STD_LOGIC;
  signal src : STD_LOGIC;
  signal startup_n_28 : STD_LOGIC;
  signal stb : STD_LOGIC;
  signal tx_en : STD_LOGIC;
  signal tx_k : STD_LOGIC;
  signal tx_n_0 : STD_LOGIC;
  signal tx_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal txdi : STD_LOGIC;
  signal w : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal w0 : STD_LOGIC;
  signal NLW_rxphy_edge_UNCONNECTED : STD_LOGIC;
  signal NLW_rxphy_fdel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of rxphy : label is "soft";
  attribute UPSTREAM_MODE : string;
  attribute UPSTREAM_MODE of rxphy : label is "FALSE";
  attribute KEEP_HIERARCHY of txphy : label is "soft";
begin
  D(3 downto 0) <= \^d\(3 downto 0);
  clk <= \^clk\;
acmd_rx: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_acmd_rx
     port map (
      E(0) => rx_n_8,
      Q(11) => acmd_rx_n_1,
      Q(10) => p_1_in,
      Q(9) => acmd_rx_n_3,
      Q(8) => acmd_rx_n_4,
      Q(7) => acmd_rx_n_5,
      Q(6) => acmd_rx_n_6,
      Q(5) => acmd_rx_n_7,
      Q(4) => acmd_rx_n_8,
      Q(3) => acmd_rx_n_9,
      Q(2) => acmd_rx_n_10,
      Q(1) => acmd_rx_n_11,
      Q(0) => acmd_rx_n_12,
      SR(0) => c(3),
      a_first => a_first,
      a_stb => a_stb,
      clk => \^clk\,
      \out\(0) => rst_i,
      \^q\(7 downto 4) => \^d_1\(7 downto 4),
      \^q\(3 downto 0) => \^d\(3 downto 0),
      s_reg_0 => acmd_rx_n_0
    );
adj: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_adjust
     port map (
      Q(11) => acmd_rx_n_1,
      Q(10) => p_1_in,
      Q(9) => acmd_rx_n_3,
      Q(8) => acmd_rx_n_4,
      Q(7) => acmd_rx_n_5,
      Q(6) => acmd_rx_n_6,
      Q(5) => acmd_rx_n_7,
      Q(4) => acmd_rx_n_8,
      Q(3) => acmd_rx_n_9,
      Q(2) => acmd_rx_n_10,
      Q(1) => acmd_rx_n_11,
      Q(0) => acmd_rx_n_12,
      adj_ack_i => adj_ack_i,
      adj_req => adj_req,
      \cdel_reg[5]_0\(5 downto 0) => cdel(5 downto 0),
      clk => \^clk\,
      \da_reg[0]\ => acmd_rx_n_0,
      \fdel_reg[3]_0\(3 downto 0) => fdel(3 downto 0),
      \s_reg[4]\ => \s_reg[4]\,
      \s_reg[4][0]\(0) => startup_n_28,
      sclk => sclk,
      srst => srst,
      tx_dis => tx_dis,
      tx_en => tx_en
    );
clkgen: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_rx_div_mmcm
     port map (
      clk => \^clk\,
      phase_locked => phase_locked,
      phase_rst => phase_rst,
      rec_clk => rec_clk
    );
idle: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_idle_gen
     port map (
      E(0) => \acmdr[ren]\,
      Q(7 downto 0) => r(7 downto 0),
      \acmd_out[d]1\ => \acmd_out[d]1\,
      \acmdw[last]\ => \acmdw[last]\,
      clk => \^clk\,
      \out\(0) => rst_i
    );
merge: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_scmd_merge
     port map (
      E(0) => w0,
      Q(7 downto 0) => w(7 downto 0),
      SR(0) => smode_r2,
      active => active,
      active0 => active0,
      active_reg_0 => merge_n_2,
      clk => \^clk\,
      \out\(0) => rst_i,
      \^q\(7 downto 4) => \^d_1\(7 downto 4),
      \^q\(3 downto 0) => \^d\(3 downto 0),
      \q_reg[2]\ => merge_n_4,
      src => src,
      src_reg_0 => tx_n_0,
      stbo => stb
    );
rx: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_rx
     port map (
      D(1) => rdy_i,
      D(0) => rx_err_f,
      E(0) => rx_n_8,
      SR(0) => c(3),
      a_first => a_first,
      a_stb => a_stb,
      active => active,
      active_reg => rx_n_3,
      addr(7 downto 0) => addr(7 downto 0),
      clk => \^clk\,
      \err_reg[0]_0\ => rx_n_0,
      k => k,
      \out\(0) => rst_i,
      q(7 downto 4) => \^d_1\(7 downto 4),
      q(3 downto 0) => \^d\(3 downto 0),
      \q_reg[1]\ => rx_n_5,
      s_first => s_first,
      s_stb => s_stb,
      slen(0) => slen(3),
      src_reg => merge_n_4,
      stbo => stb,
      sync_first => sync_first,
      sync_stb => sync_stb,
      tgrp(1 downto 0) => tgrp(1 downto 0)
    );
rxphy: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_rx_phy
     port map (
      aligned => rxphy_aligned,
      cdel(5 downto 0) => cdel(5 downto 0),
      clk => \^clk\,
      edge => NLW_rxphy_edge_UNCONNECTED,
      fdel(3 downto 0) => fdel(3 downto 0),
      fdel_out(3 downto 0) => NLW_rxphy_fdel_out_UNCONNECTED(3 downto 0),
      k => k,
      phase_locked => phase_locked,
      phase_rst => phase_rst,
      q(7 downto 4) => \^d_1\(7 downto 4),
      q(3 downto 0) => \^d\(3 downto 0),
      rec_rst => rec_rst,
      rst => rxphy_rst,
      rx_locked => rxphy_locked,
      rxclk => rec_clk,
      rxd => rec_d,
      stbo => stb
    );
startup: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_ep_startup
     port map (
      D(0) => rx_err_f,
      Q(1) => startup_n_28,
      Q(0) => Q(0),
      adj_ack_i => adj_ack_i,
      adj_req => adj_req,
      cdr_lol => cdr_lol,
      cdr_los => cdr_los,
      clk => \^clk\,
      \da_reg[1]\(1) => rxphy_locked,
      \da_reg[1]\(0) => rxphy_aligned,
      \da_reg[3]\(0) => rdy_i,
      debug(21 downto 0) => debug(21 downto 0),
      \out\(3) => rst,
      \out\(2) => rst_i,
      \out\(1) => rxphy_rst,
      \out\(0) => rec_rst,
      pll_locked => pll_locked,
      \^q\ => txdi,
      rec_clk => rec_clk,
      rx_err_f_reg_0 => rx_n_0,
      \s_reg[4]\ => \s_reg[4]\,
      sclk => sclk,
      sfp_los => sfp_los,
      srst => srst,
      stat(3 downto 0) => stat(3 downto 0),
      tx_en => tx_en,
      txd => txd
    );
ts: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_tstamp
     port map (
      clk => \^clk\,
      lock_reg_0(0) => rdy_i,
      \out\(0) => rst_i,
      q(7 downto 4) => \^d_1\(7 downto 4),
      q(3 downto 0) => \^d\(3 downto 0),
      s_first => s_first,
      s_stb => s_stb,
      slen(0) => slen(3),
      tstamp(62 downto 0) => tstamp(63 downto 1),
      \tstamp_i_reg[0]_0\ => tstamp(0)
    );
tx: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_tx
     port map (
      E(0) => w0,
      \FSM_sequential_state_reg[2]_0\(0) => \acmdr[ren]\,
      Q(7 downto 0) => w(7 downto 0),
      SR(0) => smode_r2,
      \acmd_out[d]1\ => \acmd_out[d]1\,
      \acmdw[last]\ => \acmdw[last]\,
      active => active,
      active0 => active0,
      addr(7 downto 0) => addr(7 downto 0),
      clk => \^clk\,
      d(7 downto 0) => tx_q(7 downto 0),
      k => tx_k,
      \lfsr_q_reg[0]\ => merge_n_2,
      \lfsr_q_reg[8]\(7 downto 0) => r(7 downto 0),
      \out\(0) => rst_i,
      s_first => s_first,
      s_ok_reg_0 => tx_n_0,
      s_stb => s_stb,
      src => src,
      src_reg => rx_n_3,
      stbo => stb,
      txphy_i_7 => rx_n_5
    );
txphy: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_tx_phy
     port map (
      clk => \^clk\,
      d(7 downto 0) => tx_q(7 downto 0),
      k => tx_k,
      q => txdi,
      rst => rst_i,
      stb => stb,
      txclk => rec_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint_stdlogic is
  port (
    debug : out STD_LOGIC_VECTOR ( 21 downto 0 );
    rst : out STD_LOGIC;
    \^q\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sync_stb : out STD_LOGIC;
    sync_first : out STD_LOGIC;
    tx_dis : out STD_LOGIC;
    txd : out STD_LOGIC;
    rec_clk : in STD_LOGIC;
    rec_d : in STD_LOGIC;
    sclk : in STD_LOGIC;
    srst : in STD_LOGIC;
    pll_locked : in STD_LOGIC;
    cdr_lol : in STD_LOGIC;
    cdr_los : in STD_LOGIC;
    sfp_los : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tgrp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint_stdlogic : entity is "pdts_endpoint_stdlogic";
end design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint_stdlogic;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint_stdlogic is
begin
ep: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint
     port map (
      D(3 downto 0) => \^q\(3 downto 0),
      Q(0) => Q(0),
      addr(7 downto 0) => addr(7 downto 0),
      cdr_lol => cdr_lol,
      cdr_los => cdr_los,
      clk => clk,
      debug(21 downto 0) => debug(21 downto 0),
      pll_locked => pll_locked,
      rec_clk => rec_clk,
      rec_d => rec_d,
      rst => rst,
      sclk => sclk,
      sfp_los => sfp_los,
      srst => srst,
      stat(3 downto 0) => stat(3 downto 0),
      sync_first => sync_first,
      sync_stb => sync_stb,
      tgrp(1 downto 0) => tgrp(1 downto 0),
      tstamp(63 downto 0) => tstamp(63 downto 0),
      tx_dis => tx_dis,
      txd => txd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_stdlog_0_0 is
  port (
    sclk : in STD_LOGIC;
    srst : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tgrp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rec_clk : in STD_LOGIC;
    rec_d : in STD_LOGIC;
    sfp_los : in STD_LOGIC;
    cdr_los : in STD_LOGIC;
    cdr_lol : in STD_LOGIC;
    pll_locked : in STD_LOGIC;
    clk : out STD_LOGIC;
    rst : out STD_LOGIC;
    rdy : out STD_LOGIC;
    sync : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sync_stb : out STD_LOGIC;
    sync_first : out STD_LOGIC;
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    txd : out STD_LOGIC;
    tx_dis : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pdts_endpoint_stdlog_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pdts_endpoint_stdlog_0_0 : entity is "design_1_pdts_endpoint_stdlog_0_0,pdts_endpoint_stdlogic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pdts_endpoint_stdlog_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pdts_endpoint_stdlog_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pdts_endpoint_stdlog_0_0 : entity is "pdts_endpoint_stdlogic,Vivado 2020.1";
end design_1_pdts_endpoint_stdlog_0_0;

architecture STRUCTURE of design_1_pdts_endpoint_stdlog_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^debug\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^srst\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_pdts_endpoint_stdlog_0_0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rec_clk : signal is "xilinx.com:signal:clock:1.0 rec_clk CLK";
  attribute X_INTERFACE_PARAMETER of rec_clk : signal is "XIL_INTERFACENAME rec_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ts_rec_d_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^srst\ <= srst;
  debug(31 downto 16) <= \^debug\(31 downto 16);
  debug(15) <= \<const0>\;
  debug(14) <= \<const0>\;
  debug(13) <= \<const0>\;
  debug(12) <= \<const0>\;
  debug(11) <= \<const0>\;
  debug(10) <= \<const0>\;
  debug(9) <= \<const0>\;
  debug(8) <= \<const0>\;
  debug(7 downto 1) <= \^debug\(7 downto 1);
  debug(0) <= \^srst\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\debug[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => pll_locked,
      I1 => sfp_los,
      I2 => cdr_lol,
      I3 => cdr_los,
      O => \^debug\(3)
    );
inst: entity work.design_1_pdts_endpoint_stdlog_0_0_pdts_endpoint_stdlogic
     port map (
      Q(0) => rdy,
      addr(7 downto 0) => addr(7 downto 0),
      cdr_lol => cdr_lol,
      cdr_los => cdr_los,
      clk => clk,
      debug(21 downto 6) => \^debug\(31 downto 16),
      debug(5 downto 2) => \^debug\(7 downto 4),
      debug(1 downto 0) => \^debug\(2 downto 1),
      pll_locked => pll_locked,
      \^q\(3 downto 0) => sync(3 downto 0),
      rec_clk => rec_clk,
      rec_d => rec_d,
      rst => rst,
      sclk => sclk,
      sfp_los => sfp_los,
      srst => \^srst\,
      stat(3 downto 0) => stat(3 downto 0),
      sync_first => sync_first,
      sync_stb => sync_stb,
      tgrp(1 downto 0) => tgrp(1 downto 0),
      tstamp(63 downto 0) => tstamp(63 downto 0),
      tx_dis => tx_dis,
      txd => txd
    );
end STRUCTURE;
