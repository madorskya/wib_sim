-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Oct 21 12:58:34 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_pdts_endpoint_wrapper_0_0/design_1_pdts_endpoint_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_pdts_endpoint_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16 is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    stbo_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    stbo : in STD_LOGIC;
    \lfsr_q_reg[15]_0\ : in STD_LOGIC;
    in5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \lfsr_q_reg[1]_0\ : in STD_LOGIC;
    k : in STD_LOGIC;
    disp : in STD_LOGIC;
    \q_reg[0]\ : in STD_LOGIC;
    \q[2]_i_2_0\ : in STD_LOGIC;
    \q_reg[3]\ : in STD_LOGIC;
    \q_reg[1]\ : in STD_LOGIC;
    \q_reg[3]_0\ : in STD_LOGIC;
    \q_reg[6]\ : in STD_LOGIC;
    \q_reg[6]_0\ : in STD_LOGIC;
    \q_reg[6]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16 : entity is "outputlogic_crc16";
end design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16 is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal csum : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dataOut34_out : STD_LOGIC;
  signal lfsr_c : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lfsr_q[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_5__0_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_6_n_0\ : STD_LOGIC;
  signal \lfsr_q[15]_i_8_n_0\ : STD_LOGIC;
  signal \lfsr_q[6]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[9]_i_2_n_0\ : STD_LOGIC;
  signal \phy/enc/alt6__0\ : STD_LOGIC;
  signal \phy/enc/dataOut10_out\ : STD_LOGIC;
  signal \phy/enc/dataOut112_out\ : STD_LOGIC;
  signal \phy/enc/dataOut122_out\ : STD_LOGIC;
  signal \phy/enc/dataOut15_out__1\ : STD_LOGIC;
  signal \phy/enc/dataOut31_out__0\ : STD_LOGIC;
  signal \phy/enc/dispOut0__0\ : STD_LOGIC;
  signal \phy/enc/dispOut1055_out__0\ : STD_LOGIC;
  signal \phy/enc/dispOut240_out\ : STD_LOGIC;
  signal \phy/enc/p_41_in\ : STD_LOGIC;
  signal \phy/enc/p_60_in\ : STD_LOGIC;
  signal \q[1]_i_4_n_0\ : STD_LOGIC;
  signal \q[1]_i_6_n_0\ : STD_LOGIC;
  signal \q[3]_i_4_n_0\ : STD_LOGIC;
  signal \q[3]_i_7_n_0\ : STD_LOGIC;
  signal \q[3]_i_9_n_0\ : STD_LOGIC;
  signal \q[9]_i_11_n_0\ : STD_LOGIC;
  signal \q[9]_i_12_n_0\ : STD_LOGIC;
  signal \q[9]_i_15_n_0\ : STD_LOGIC;
  signal \q[9]_i_17_n_0\ : STD_LOGIC;
  signal \q[9]_i_9_n_0\ : STD_LOGIC;
  signal \q_a__4\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal txd : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \txd__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of disp_i_2 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \lfsr_q[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_6\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \lfsr_q[5]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \lfsr_q[6]_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \lfsr_q[7]_i_1__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \lfsr_q[9]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \q[1]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \q[1]_i_4\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \q[1]_i_6\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \q[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \q[2]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \q[4]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \q[4]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \q[5]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \q[5]_i_5\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \q[5]_i_6\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \q[7]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \q[8]_i_1\ : label is "soft_lutpair74";
begin
  SS(0) <= \^ss\(0);
disp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C83FFFF7C830000"
    )
        port map (
      I0 => \txd__0\(7),
      I1 => \txd__0\(5),
      I2 => \txd__0\(6),
      I3 => \phy/enc/dispOut0__0\,
      I4 => stbo,
      I5 => disp,
      O => stbo_reg
    );
disp_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \phy/enc/p_41_in\,
      I1 => \phy/enc/dispOut240_out\,
      I2 => disp,
      O => \phy/enc/dispOut0__0\
    );
\lfsr_q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => csum(8),
      I1 => \q_a__4\(0),
      I2 => \lfsr_q[15]_i_6_n_0\,
      I3 => \lfsr_q[15]_i_5__0_n_0\,
      O => lfsr_c(0)
    );
\lfsr_q[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      O => \^ss\(0)
    );
\lfsr_q[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => stbo,
      I1 => \lfsr_q_reg[15]_0\,
      I2 => Q(2),
      I3 => Q(1),
      O => \lfsr_q[15]_i_2__0_n_0\
    );
\lfsr_q[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \q_a__4\(0),
      I1 => csum(8),
      I2 => csum(7),
      I3 => \lfsr_q[15]_i_5__0_n_0\,
      I4 => \lfsr_q[15]_i_6_n_0\,
      O => lfsr_c(15)
    );
\lfsr_q[15]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBB888B8"
    )
        port map (
      I0 => in5(0),
      I1 => \lfsr_q[15]_i_8_n_0\,
      I2 => csum(0),
      I3 => \lfsr_q_reg[1]_0\,
      I4 => csum(8),
      I5 => Q(0),
      O => \q_a__4\(0)
    );
\lfsr_q[15]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \q_a__4\(5),
      I1 => csum(13),
      I2 => \q_a__4\(1),
      I3 => csum(10),
      I4 => \q_a__4\(2),
      I5 => csum(9),
      O => \lfsr_q[15]_i_5__0_n_0\
    );
\lfsr_q[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => csum(11),
      I1 => \q_a__4\(3),
      I2 => \lfsr_q[9]_i_2_n_0\,
      I3 => \lfsr_q[6]_i_2_n_0\,
      I4 => \lfsr_q[8]_i_2_n_0\,
      O => \lfsr_q[15]_i_6_n_0\
    );
\lfsr_q[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      O => \lfsr_q[15]_i_8_n_0\
    );
\lfsr_q[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => csum(11),
      I1 => \q_a__4\(3),
      I2 => \lfsr_q[15]_i_5__0_n_0\,
      I3 => \lfsr_q[8]_i_2_n_0\,
      I4 => \lfsr_q[6]_i_2_n_0\,
      I5 => \lfsr_q[9]_i_2_n_0\,
      O => lfsr_c(1)
    );
\lfsr_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \q_a__4\(1),
      I1 => csum(8),
      I2 => csum(9),
      I3 => \q_a__4\(0),
      O => lfsr_c(2)
    );
\lfsr_q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \q_a__4\(1),
      I1 => csum(10),
      I2 => csum(9),
      I3 => \q_a__4\(2),
      O => lfsr_c(3)
    );
\lfsr_q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BBB888B8"
    )
        port map (
      I0 => in5(1),
      I1 => \lfsr_q[15]_i_8_n_0\,
      I2 => csum(1),
      I3 => \lfsr_q_reg[1]_0\,
      I4 => csum(9),
      I5 => Q(0),
      O => \q_a__4\(1)
    );
\lfsr_q[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => csum(11),
      I1 => \q_a__4\(3),
      I2 => csum(10),
      I3 => \q_a__4\(2),
      O => lfsr_c(4)
    );
\lfsr_q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8B8B8BBB8"
    )
        port map (
      I0 => in5(2),
      I1 => \lfsr_q[15]_i_8_n_0\,
      I2 => Q(0),
      I3 => csum(2),
      I4 => \lfsr_q_reg[1]_0\,
      I5 => csum(10),
      O => \q_a__4\(2)
    );
\lfsr_q[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => csum(11),
      I1 => \q_a__4\(3),
      I2 => \lfsr_q[6]_i_2_n_0\,
      O => lfsr_c(5)
    );
\lfsr_q[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8B8B8BBB8"
    )
        port map (
      I0 => in5(3),
      I1 => \lfsr_q[15]_i_8_n_0\,
      I2 => Q(0),
      I3 => csum(3),
      I4 => \lfsr_q_reg[1]_0\,
      I5 => csum(11),
      O => \q_a__4\(3)
    );
\lfsr_q[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_a__4\(5),
      I1 => csum(13),
      I2 => \lfsr_q[6]_i_2_n_0\,
      O => lfsr_c(6)
    );
\lfsr_q[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444447B8B8BBB8"
    )
        port map (
      I0 => in5(4),
      I1 => \lfsr_q[15]_i_8_n_0\,
      I2 => Q(0),
      I3 => csum(4),
      I4 => \lfsr_q_reg[1]_0\,
      I5 => csum(12),
      O => \lfsr_q[6]_i_2_n_0\
    );
\lfsr_q[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_a__4\(5),
      I1 => csum(13),
      I2 => \lfsr_q[8]_i_2_n_0\,
      O => lfsr_c(7)
    );
\lfsr_q[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8B8B8BBB8"
    )
        port map (
      I0 => in5(5),
      I1 => \lfsr_q[15]_i_8_n_0\,
      I2 => Q(0),
      I3 => csum(5),
      I4 => \lfsr_q_reg[1]_0\,
      I5 => csum(13),
      O => \q_a__4\(5)
    );
\lfsr_q[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \lfsr_q[9]_i_2_n_0\,
      I1 => \lfsr_q[8]_i_2_n_0\,
      I2 => csum(0),
      O => lfsr_c(8)
    );
\lfsr_q[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77778888444788B8"
    )
        port map (
      I0 => in5(6),
      I1 => \lfsr_q[15]_i_8_n_0\,
      I2 => csum(6),
      I3 => \lfsr_q_reg[1]_0\,
      I4 => csum(14),
      I5 => Q(0),
      O => \lfsr_q[8]_i_2_n_0\
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
      INIT => X"44444447B8B8BBB8"
    )
        port map (
      I0 => in5(7),
      I1 => \lfsr_q[15]_i_8_n_0\,
      I2 => Q(0),
      I3 => csum(7),
      I4 => \lfsr_q_reg[1]_0\,
      I5 => csum(15),
      O => \lfsr_q[9]_i_2_n_0\
    );
\lfsr_q_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => lfsr_c(0),
      Q => csum(0),
      S => \^ss\(0)
    );
\lfsr_q_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => csum(2),
      Q => csum(10),
      S => \^ss\(0)
    );
\lfsr_q_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => csum(3),
      Q => csum(11),
      S => \^ss\(0)
    );
\lfsr_q_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => csum(4),
      Q => csum(12),
      S => \^ss\(0)
    );
\lfsr_q_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => csum(5),
      Q => csum(13),
      S => \^ss\(0)
    );
\lfsr_q_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => csum(6),
      Q => csum(14),
      S => \^ss\(0)
    );
\lfsr_q_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => lfsr_c(15),
      Q => csum(15),
      S => \^ss\(0)
    );
\lfsr_q_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => lfsr_c(1),
      Q => csum(1),
      S => \^ss\(0)
    );
\lfsr_q_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => lfsr_c(2),
      Q => csum(2),
      S => \^ss\(0)
    );
\lfsr_q_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => lfsr_c(3),
      Q => csum(3),
      S => \^ss\(0)
    );
\lfsr_q_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => lfsr_c(4),
      Q => csum(4),
      S => \^ss\(0)
    );
\lfsr_q_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => lfsr_c(5),
      Q => csum(5),
      S => \^ss\(0)
    );
\lfsr_q_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => lfsr_c(6),
      Q => csum(6),
      S => \^ss\(0)
    );
\lfsr_q_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => lfsr_c(7),
      Q => csum(7),
      S => \^ss\(0)
    );
\lfsr_q_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => lfsr_c(8),
      Q => csum(8),
      S => \^ss\(0)
    );
\lfsr_q_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \lfsr_q[15]_i_2__0_n_0\,
      D => lfsr_c(9),
      Q => csum(9),
      S => \^ss\(0)
    );
\q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"272727D8D8D827D8"
    )
        port map (
      I0 => disp,
      I1 => dataOut34_out,
      I2 => \phy/enc/dispOut240_out\,
      I3 => \q_a__4\(0),
      I4 => \lfsr_q_reg[15]_0\,
      I5 => \q_reg[0]\,
      O => D(0)
    );
\q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27D827D8272727D8"
    )
        port map (
      I0 => disp,
      I1 => dataOut34_out,
      I2 => \phy/enc/dispOut240_out\,
      I3 => \phy/enc/dataOut31_out__0\,
      I4 => txd(1),
      I5 => \q[1]_i_4_n_0\,
      O => D(1)
    );
\q[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => txd(3),
      I1 => txd(2),
      I2 => \phy/enc/dispOut1055_out__0\,
      O => \phy/enc/dataOut31_out__0\
    );
\q[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8BBB8B8B888"
    )
        port map (
      I0 => \q_reg[1]\,
      I1 => \lfsr_q_reg[15]_0\,
      I2 => in5(1),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \q[1]_i_6_n_0\,
      O => txd(1)
    );
\q[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => txd(3),
      I1 => txd(2),
      I2 => \phy/enc/p_60_in\,
      O => \q[1]_i_4_n_0\
    );
\q[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => csum(1),
      I1 => \lfsr_q_reg[1]_0\,
      I2 => csum(9),
      I3 => Q(0),
      O => \q[1]_i_6_n_0\
    );
\q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => disp,
      I1 => dataOut34_out,
      I2 => \phy/enc/dispOut240_out\,
      I3 => \phy/enc/dataOut10_out\,
      O => D(2)
    );
\q[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => txd(2),
      I1 => txd(3),
      I2 => txd(4),
      I3 => \phy/enc/dispOut1055_out__0\,
      O => \phy/enc/dataOut10_out\
    );
\q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A5FF5A0F5A0F7A2"
    )
        port map (
      I0 => disp,
      I1 => txd(4),
      I2 => \phy/enc/p_41_in\,
      I3 => \phy/enc/dispOut240_out\,
      I4 => \q[3]_i_4_n_0\,
      I5 => txd(3),
      O => D(3)
    );
\q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8BBB8B8B888"
    )
        port map (
      I0 => \q_reg[3]_0\,
      I1 => \lfsr_q_reg[15]_0\,
      I2 => in5(4),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \q[3]_i_7_n_0\,
      O => txd(4)
    );
\q[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEAEAABAAAAAAAA"
    )
        port map (
      I0 => k,
      I1 => \txd__0\(0),
      I2 => txd(1),
      I3 => txd(3),
      I4 => txd(2),
      I5 => txd(4),
      O => \phy/enc/p_41_in\
    );
\q[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \phy/enc/p_60_in\,
      I1 => txd(2),
      O => \q[3]_i_4_n_0\
    );
\q[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8BBB8B8B888"
    )
        port map (
      I0 => \q_reg[3]\,
      I1 => \lfsr_q_reg[15]_0\,
      I2 => in5(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \q[3]_i_9_n_0\,
      O => txd(3)
    );
\q[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => Q(0),
      I1 => csum(4),
      I2 => \lfsr_q_reg[1]_0\,
      I3 => csum(12),
      O => \q[3]_i_7_n_0\
    );
\q[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => Q(0),
      I1 => csum(3),
      I2 => \lfsr_q_reg[1]_0\,
      I3 => csum(11),
      O => \q[3]_i_9_n_0\
    );
\q[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => disp,
      I1 => dataOut34_out,
      I2 => \phy/enc/dispOut240_out\,
      I3 => \phy/enc/dataOut15_out__1\,
      O => D(4)
    );
\q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F30CFFC1"
    )
        port map (
      I0 => \phy/enc/p_60_in\,
      I1 => \phy/enc/dispOut1055_out__0\,
      I2 => txd(2),
      I3 => txd(4),
      I4 => txd(3),
      O => \phy/enc/dataOut15_out__1\
    );
\q[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"27D8"
    )
        port map (
      I0 => disp,
      I1 => dataOut34_out,
      I2 => \phy/enc/dispOut240_out\,
      I3 => \phy/enc/dataOut112_out\,
      O => D(5)
    );
\q[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDCFDCCCDCCCCECC"
    )
        port map (
      I0 => \phy/enc/dispOut1055_out__0\,
      I1 => k,
      I2 => txd(3),
      I3 => txd(4),
      I4 => \phy/enc/p_60_in\,
      I5 => txd(2),
      O => dataOut34_out
    );
\q[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00108117"
    )
        port map (
      I0 => \txd__0\(0),
      I1 => txd(1),
      I2 => txd(3),
      I3 => txd(2),
      I4 => txd(4),
      O => \phy/enc/dispOut240_out\
    );
\q[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCD28CD281168116"
    )
        port map (
      I0 => \phy/enc/p_60_in\,
      I1 => txd(2),
      I2 => txd(4),
      I3 => txd(3),
      I4 => k,
      I5 => \phy/enc/dispOut1055_out__0\,
      O => \phy/enc/dataOut112_out\
    );
\q[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => txd(1),
      I1 => \q_a__4\(0),
      I2 => \lfsr_q_reg[15]_0\,
      I3 => \q_reg[0]\,
      O => \phy/enc/dispOut1055_out__0\
    );
\q[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \q_a__4\(0),
      I1 => \lfsr_q_reg[15]_0\,
      I2 => \q_reg[0]\,
      I3 => txd(1),
      O => \phy/enc/p_60_in\
    );
\q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B3B3B3334C4C4CCC"
    )
        port map (
      I0 => \txd__0\(7),
      I1 => \txd__0\(5),
      I2 => \txd__0\(6),
      I3 => \phy/enc/alt6__0\,
      I4 => k,
      I5 => \phy/enc/dataOut122_out\,
      O => D(6)
    );
\q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6665"
    )
        port map (
      I0 => \phy/enc/dataOut122_out\,
      I1 => \txd__0\(6),
      I2 => \txd__0\(5),
      I3 => \txd__0\(7),
      O => D(7)
    );
\q[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \phy/enc/dataOut122_out\,
      I1 => \txd__0\(7),
      O => D(8)
    );
\q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6B6B6BEB94949414"
    )
        port map (
      I0 => \txd__0\(7),
      I1 => \txd__0\(5),
      I2 => \txd__0\(6),
      I3 => \phy/enc/alt6__0\,
      I4 => k,
      I5 => \phy/enc/dataOut122_out\,
      O => D(9)
    );
\q[9]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => Q(0),
      I1 => csum(5),
      I2 => \lfsr_q_reg[1]_0\,
      I3 => csum(13),
      O => \q[9]_i_11_n_0\
    );
\q[9]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => csum(6),
      I1 => \lfsr_q_reg[1]_0\,
      I2 => csum(14),
      I3 => Q(0),
      O => \q[9]_i_12_n_0\
    );
\q[9]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8BBB8B8B888"
    )
        port map (
      I0 => \q_reg[0]\,
      I1 => \lfsr_q_reg[15]_0\,
      I2 => in5(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \q[9]_i_15_n_0\,
      O => \txd__0\(0)
    );
\q[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8BBB8B8B888"
    )
        port map (
      I0 => \q[2]_i_2_0\,
      I1 => \lfsr_q_reg[15]_0\,
      I2 => in5(2),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \q[9]_i_17_n_0\,
      O => txd(2)
    );
\q[9]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => csum(0),
      I1 => \lfsr_q_reg[1]_0\,
      I2 => csum(8),
      I3 => Q(0),
      O => \q[9]_i_15_n_0\
    );
\q[9]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => Q(0),
      I1 => csum(2),
      I2 => \lfsr_q_reg[1]_0\,
      I3 => csum(10),
      O => \q[9]_i_17_n_0\
    );
\q[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \q_reg[6]_0\,
      I1 => \q_reg[6]_1\(1),
      I2 => \lfsr_q_reg[15]_0\,
      I3 => in5(7),
      I4 => \lfsr_q[15]_i_8_n_0\,
      I5 => \q[9]_i_9_n_0\,
      O => \txd__0\(7)
    );
\q[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8BBB8B8B888"
    )
        port map (
      I0 => \q_reg[6]\,
      I1 => \lfsr_q_reg[15]_0\,
      I2 => in5(5),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \q[9]_i_11_n_0\,
      O => \txd__0\(5)
    );
\q[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \q_reg[6]_0\,
      I1 => \q_reg[6]_1\(0),
      I2 => \lfsr_q_reg[15]_0\,
      I3 => in5(6),
      I4 => \lfsr_q[15]_i_8_n_0\,
      I5 => \q[9]_i_12_n_0\,
      O => \txd__0\(6)
    );
\q[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011428800000"
    )
        port map (
      I0 => disp,
      I1 => \txd__0\(0),
      I2 => txd(1),
      I3 => txd(2),
      I4 => txd(3),
      I5 => txd(4),
      O => \phy/enc/alt6__0\
    );
\q[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B2B2BC0C0C0C02B"
    )
        port map (
      I0 => k,
      I1 => \txd__0\(6),
      I2 => \txd__0\(5),
      I3 => \phy/enc/p_41_in\,
      I4 => \phy/enc/dispOut240_out\,
      I5 => disp,
      O => \phy/enc/dataOut122_out\
    );
\q[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => Q(0),
      I1 => csum(7),
      I2 => \lfsr_q_reg[1]_0\,
      I3 => csum(15),
      O => \q[9]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16_2 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ks : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s0 : out STD_LOGIC;
    \^d\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[4]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state0__0\ : in STD_LOGIC;
    p_11_in : in STD_LOGIC;
    \acmd_rx_w[valid]\ : in STD_LOGIC;
    \acmdw_rx[valid]\ : in STD_LOGIC;
    \txdone__0\ : in STD_LOGIC;
    trst : in STD_LOGIC;
    a_match : in STD_LOGIC;
    last_reg : in STD_LOGIC;
    state5 : in STD_LOGIC;
    state40_in : in STD_LOGIC;
    s_reg : in STD_LOGIC;
    s_reg_0 : in STD_LOGIC;
    state35_out : in STD_LOGIC;
    \lfsr_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    k : in STD_LOGIC;
    \^q\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16_2 : entity is "outputlogic_crc16";
end design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16_2;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16_2 is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal err_i : STD_LOGIC;
  signal \^ks\ : STD_LOGIC;
  signal lfsr_c : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \lfsr_q[15]_i_5_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_3_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_4_n_0\ : STD_LOGIC;
  signal \lfsr_q[1]_i_5_n_0\ : STD_LOGIC;
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
  signal \^q_reg[4]\ : STD_LOGIC;
  signal ram_reg_0_31_8_8_i_10_n_0 : STD_LOGIC;
  signal ram_reg_0_31_8_8_i_8_n_0 : STD_LOGIC;
  signal ram_reg_0_31_8_8_i_9_n_0 : STD_LOGIC;
  signal \sctr[4]_i_3_n_0\ : STD_LOGIC;
  signal \sctr[4]_i_4_n_0\ : STD_LOGIC;
  signal state67_in : STD_LOGIC;
  signal \^state_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lfsr_q[0]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_3__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \lfsr_q[15]_i_5\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \lfsr_q[1]_i_5\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \lfsr_q[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \lfsr_q[7]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \lfsr_q[8]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sctr[4]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sctr[4]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair43";
begin
  SS(0) <= \^ss\(0);
  ks <= \^ks\;
  \q_reg[4]\ <= \^q_reg[4]\;
  \state_reg[0]\(0) <= \^state_reg[0]\(0);
\lfsr_q[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[8]\,
      I1 => \^q\(0),
      I2 => lfsr_c(1),
      O => lfsr_c(0)
    );
\lfsr_q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => k,
      I1 => \lfsr_q_reg[0]_0\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q_reg[4]\,
      I5 => \lfsr_q[15]_i_5_n_0\,
      O => \^ss\(0)
    );
\lfsr_q[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \lfsr_q_reg[0]_0\(0),
      I3 => \^ks\,
      O => \^state_reg[0]\(0)
    );
\lfsr_q[15]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(0),
      I1 => \lfsr_q_reg_n_0_[8]\,
      I2 => \lfsr_q_reg_n_0_[7]\,
      I3 => lfsr_c(1),
      O => lfsr_c(15)
    );
\lfsr_q[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \^q_reg[4]\
    );
\lfsr_q[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(0),
      O => \lfsr_q[15]_i_5_n_0\
    );
\lfsr_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lfsr_q[1]_i_2_n_0\,
      I1 => \lfsr_q[1]_i_3_n_0\,
      I2 => \lfsr_q[1]_i_4_n_0\,
      I3 => \^q\(3),
      I4 => \lfsr_q_reg_n_0_[11]\,
      I5 => \lfsr_q[1]_i_5_n_0\,
      O => lfsr_c(1)
    );
\lfsr_q[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(5),
      I1 => \lfsr_q_reg_n_0_[13]\,
      I2 => \^q\(1),
      I3 => \lfsr_q_reg_n_0_[10]\,
      I4 => \^q\(2),
      I5 => \lfsr_q_reg_n_0_[9]\,
      O => \lfsr_q[1]_i_2_n_0\
    );
\lfsr_q[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(6),
      I1 => \lfsr_q_reg_n_0_[14]\,
      O => \lfsr_q[1]_i_3_n_0\
    );
\lfsr_q[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[12]\,
      I1 => \^q\(4),
      O => \lfsr_q[1]_i_4_n_0\
    );
\lfsr_q[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[15]\,
      I1 => \^q\(7),
      O => \lfsr_q[1]_i_5_n_0\
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
      I1 => \lfsr_q_reg_n_0_[10]\,
      I2 => \lfsr_q_reg_n_0_[9]\,
      I3 => \^q\(2),
      O => lfsr_c(3)
    );
\lfsr_q[4]_i_1\: unisim.vcomponents.LUT4
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
\lfsr_q[5]_i_1\: unisim.vcomponents.LUT4
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
\lfsr_q[8]_i_1__0\: unisim.vcomponents.LUT5
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
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => lfsr_c(0),
      Q => \lfsr_q_reg_n_0_[0]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => \lfsr_q_reg_n_0_[2]\,
      Q => \lfsr_q_reg_n_0_[10]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => \lfsr_q_reg_n_0_[3]\,
      Q => \lfsr_q_reg_n_0_[11]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => \lfsr_q_reg_n_0_[4]\,
      Q => \lfsr_q_reg_n_0_[12]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => \lfsr_q_reg_n_0_[5]\,
      Q => \lfsr_q_reg_n_0_[13]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => \lfsr_q_reg_n_0_[6]\,
      Q => \lfsr_q_reg_n_0_[14]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => lfsr_c(15),
      Q => \lfsr_q_reg_n_0_[15]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => lfsr_c(1),
      Q => \lfsr_q_reg_n_0_[1]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => lfsr_c(2),
      Q => \lfsr_q_reg_n_0_[2]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => lfsr_c(3),
      Q => \lfsr_q_reg_n_0_[3]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => lfsr_c(4),
      Q => \lfsr_q_reg_n_0_[4]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => lfsr_c(5),
      Q => \lfsr_q_reg_n_0_[5]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => lfsr_c(6),
      Q => \lfsr_q_reg_n_0_[6]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => lfsr_c(7),
      Q => \lfsr_q_reg_n_0_[7]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => lfsr_c(8),
      Q => \lfsr_q_reg_n_0_[8]\,
      S => \^ss\(0)
    );
\lfsr_q_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \^state_reg[0]\(0),
      D => lfsr_c(9),
      Q => \lfsr_q_reg_n_0_[9]\,
      S => \^ss\(0)
    );
ram_reg_0_31_8_8_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => a_match,
      I1 => last_reg,
      I2 => state5,
      I3 => state40_in,
      I4 => state67_in,
      I5 => s_reg,
      O => \^d\(0)
    );
ram_reg_0_31_8_8_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[2]\,
      I1 => \lfsr_q_reg_n_0_[3]\,
      I2 => \lfsr_q_reg_n_0_[0]\,
      I3 => \lfsr_q_reg_n_0_[1]\,
      O => ram_reg_0_31_8_8_i_10_n_0
    );
ram_reg_0_31_8_8_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ram_reg_0_31_8_8_i_8_n_0,
      I1 => \lfsr_q_reg_n_0_[15]\,
      I2 => \lfsr_q_reg_n_0_[14]\,
      I3 => \lfsr_q_reg_n_0_[12]\,
      I4 => \lfsr_q_reg_n_0_[13]\,
      I5 => ram_reg_0_31_8_8_i_9_n_0,
      O => state67_in
    );
ram_reg_0_31_8_8_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[10]\,
      I1 => \lfsr_q_reg_n_0_[11]\,
      I2 => \lfsr_q_reg_n_0_[8]\,
      I3 => \lfsr_q_reg_n_0_[9]\,
      O => ram_reg_0_31_8_8_i_8_n_0
    );
ram_reg_0_31_8_8_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \lfsr_q_reg_n_0_[5]\,
      I1 => \lfsr_q_reg_n_0_[4]\,
      I2 => \lfsr_q_reg_n_0_[7]\,
      I3 => \lfsr_q_reg_n_0_[6]\,
      I4 => ram_reg_0_31_8_8_i_10_n_0,
      O => ram_reg_0_31_8_8_i_9_n_0
    );
s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF40"
    )
        port map (
      I0 => err_i,
      I1 => p_11_in,
      I2 => \acmd_rx_w[valid]\,
      I3 => \acmdw_rx[valid]\,
      I4 => \txdone__0\,
      I5 => trst,
      O => s0
    );
\sctr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => k,
      I1 => \lfsr_q_reg[0]_0\(0),
      I2 => \sctr[4]_i_3_n_0\,
      I3 => \^q\(7),
      I4 => \^q\(6),
      I5 => \sctr[4]_i_4_n_0\,
      O => \^ks\
    );
\sctr[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(3),
      O => \sctr[4]_i_3_n_0\
    );
\sctr[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \sctr[4]_i_4_n_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => err_i,
      I1 => Q(0),
      O => D(0)
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3330FBFB3330C8C8"
    )
        port map (
      I0 => \^ks\,
      I1 => Q(0),
      I2 => err_i,
      I3 => \state0__0\,
      I4 => Q(1),
      I5 => \^ss\(0),
      O => E(0)
    );
\state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(0),
      I1 => err_i,
      I2 => Q(1),
      O => D(1)
    );
\state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => s_reg,
      I1 => state67_in,
      I2 => s_reg_0,
      I3 => \acmdw_rx[valid]\,
      I4 => \acmd_rx_w[valid]\,
      I5 => state35_out,
      O => err_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_acmd_arb is
  port (
    \p_reg[0]_0\ : out STD_LOGIC;
    trst : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \acmd_tx_w[valid]\ : in STD_LOGIC;
    \d__0\ : in STD_LOGIC;
    \acmdr[rdy]\ : in STD_LOGIC;
    \acmdw_v[1][last]\ : in STD_LOGIC;
    \p_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_acmd_arb : entity is "pdts_acmd_arb";
end design_1_pdts_endpoint_wrapper_0_0_pdts_acmd_arb;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_acmd_arb is
  signal \p[0]_i_1_n_0\ : STD_LOGIC;
  signal \p[0]_i_2_n_0\ : STD_LOGIC;
  signal \^p_reg[0]_0\ : STD_LOGIC;
  signal s : STD_LOGIC;
  signal \s_i_1__0_n_0\ : STD_LOGIC;
begin
  \p_reg[0]_0\ <= \^p_reg[0]_0\;
\p[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F1F1F0001111"
    )
        port map (
      I0 => \acmd_tx_w[valid]\,
      I1 => s,
      I2 => \acmdr[rdy]\,
      I3 => \acmdw_v[1][last]\,
      I4 => \^p_reg[0]_0\,
      I5 => \p_reg[0]_1\(0),
      O => \p[0]_i_1_n_0\
    );
\p[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p_reg[0]_0\,
      O => \p[0]_i_2_n_0\
    );
\p_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \p[0]_i_1_n_0\,
      D => \p[0]_i_2_n_0\,
      Q => \^p_reg[0]_0\,
      R => trst
    );
\s_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => s,
      I1 => \acmd_tx_w[valid]\,
      I2 => \^p_reg[0]_0\,
      I3 => trst,
      I4 => \d__0\,
      O => \s_i_1__0_n_0\
    );
s_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \s_i_1__0_n_0\,
      Q => s,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_cdr_sampler is
  port (
    clk : in STD_LOGIC;
    clk4x : in STD_LOGIC;
    rst : in STD_LOGIC;
    d : in STD_LOGIC;
    q : out STD_LOGIC;
    locked : out STD_LOGIC;
    dbg : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_cdr_sampler : entity is "pdts_cdr_sampler";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_pdts_endpoint_wrapper_0_0_pdts_cdr_sampler : entity is "soft";
end design_1_pdts_endpoint_wrapper_0_0_pdts_cdr_sampler;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_cdr_sampler is
  signal \<const0>\ : STD_LOGIC;
  signal bctr : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of bctr : signal is std.standard.true;
  signal bctr_reg0 : STD_LOGIC;
  signal \bctr_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \bctr_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \bctr_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \bctr_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \bctr_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \bctr_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \bctr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bctr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \bctr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \bctr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \bctr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \bctr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \bctr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \bctr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal cctr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \cctr[1]_i_1_n_0\ : STD_LOGIC;
  signal da : STD_LOGIC;
  signal db : STD_LOGIC;
  signal dctr : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of dctr : signal is std.standard.true;
  signal \dctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \dctr_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \dctr_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal di : STD_LOGIC;
  signal di_i_1_n_0 : STD_LOGIC;
  signal di_i_2_n_0 : STD_LOGIC;
  signal good : STD_LOGIC;
  attribute MARK_DEBUG of good : signal is std.standard.true;
  signal locked_i : STD_LOGIC;
  attribute MARK_DEBUG of locked_i : signal is std.standard.true;
  signal locked_i_i_1_n_0 : STD_LOGIC;
  signal p : STD_LOGIC;
  attribute MARK_DEBUG of p : signal is std.standard.true;
  signal p_i_1_n_0 : STD_LOGIC;
  signal patt : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of patt : signal is std.standard.true;
  signal patt1 : STD_LOGIC;
  signal \patt[0]_i_1_n_0\ : STD_LOGIC;
  signal \patt[1]_i_2_n_0\ : STD_LOGIC;
  signal patt_reg0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of sctr : signal is std.standard.true;
  signal \sctr[2]_i_2_n_0\ : STD_LOGIC;
  signal \sctr__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tc : STD_LOGIC;
  attribute MARK_DEBUG of tc : signal is std.standard.true;
  signal tc_inferred_i_2_n_0 : STD_LOGIC;
  signal tc_inferred_i_3_n_0 : STD_LOGIC;
  signal \NLW_bctr_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_bctr_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_dctr_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_dctr_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute KEEP : string;
  attribute KEEP of \bctr_reg[0]\ : label is "yes";
  attribute KEEP of \bctr_reg[10]\ : label is "yes";
  attribute KEEP of \bctr_reg[11]\ : label is "yes";
  attribute KEEP of \bctr_reg[12]\ : label is "yes";
  attribute KEEP of \bctr_reg[13]\ : label is "yes";
  attribute KEEP of \bctr_reg[14]\ : label is "yes";
  attribute KEEP of \bctr_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bctr_reg[15]_i_2\ : label is 35;
  attribute KEEP of \bctr_reg[1]\ : label is "yes";
  attribute KEEP of \bctr_reg[2]\ : label is "yes";
  attribute KEEP of \bctr_reg[3]\ : label is "yes";
  attribute KEEP of \bctr_reg[4]\ : label is "yes";
  attribute KEEP of \bctr_reg[5]\ : label is "yes";
  attribute KEEP of \bctr_reg[6]\ : label is "yes";
  attribute KEEP of \bctr_reg[7]\ : label is "yes";
  attribute KEEP of \bctr_reg[8]\ : label is "yes";
  attribute ADDER_THRESHOLD of \bctr_reg[8]_i_1\ : label is 35;
  attribute KEEP of \bctr_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cctr[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cctr[1]_i_1\ : label is "soft_lutpair0";
  attribute KEEP of \dctr_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \dctr_reg[0]\ : label is "true";
  attribute KEEP of \dctr_reg[10]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[10]\ : label is "true";
  attribute KEEP of \dctr_reg[11]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[11]\ : label is "true";
  attribute KEEP of \dctr_reg[12]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[12]\ : label is "true";
  attribute KEEP of \dctr_reg[13]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[13]\ : label is "true";
  attribute KEEP of \dctr_reg[14]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[14]\ : label is "true";
  attribute KEEP of \dctr_reg[15]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[15]\ : label is "true";
  attribute ADDER_THRESHOLD of \dctr_reg[15]_i_1\ : label is 35;
  attribute KEEP of \dctr_reg[1]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[1]\ : label is "true";
  attribute KEEP of \dctr_reg[2]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[2]\ : label is "true";
  attribute KEEP of \dctr_reg[3]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[3]\ : label is "true";
  attribute KEEP of \dctr_reg[4]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[4]\ : label is "true";
  attribute KEEP of \dctr_reg[5]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[5]\ : label is "true";
  attribute KEEP of \dctr_reg[6]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[6]\ : label is "true";
  attribute KEEP of \dctr_reg[7]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[7]\ : label is "true";
  attribute KEEP of \dctr_reg[8]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[8]\ : label is "true";
  attribute ADDER_THRESHOLD of \dctr_reg[8]_i_1\ : label is 35;
  attribute KEEP of \dctr_reg[9]\ : label is "yes";
  attribute mark_debug_string of \dctr_reg[9]\ : label is "true";
  attribute box_type : string;
  attribute box_type of iff : label is "PRIMITIVE";
  attribute KEEP of locked_i_reg : label is "yes";
  attribute mark_debug_string of locked_i_reg : label is "true";
  attribute KEEP of p_reg : label is "yes";
  attribute mark_debug_string of p_reg : label is "true";
  attribute KEEP of \patt_reg[0]\ : label is "yes";
  attribute mark_debug_string of \patt_reg[0]\ : label is "true";
  attribute KEEP of \patt_reg[1]\ : label is "yes";
  attribute mark_debug_string of \patt_reg[1]\ : label is "true";
  attribute KEEP of \sctr_reg[0]\ : label is "yes";
  attribute mark_debug_string of \sctr_reg[0]\ : label is "true";
  attribute KEEP of \sctr_reg[1]\ : label is "yes";
  attribute mark_debug_string of \sctr_reg[1]\ : label is "true";
  attribute KEEP of \sctr_reg[2]\ : label is "yes";
  attribute mark_debug_string of \sctr_reg[2]\ : label is "true";
begin
  dbg(7) <= \<const0>\;
  dbg(6) <= \<const0>\;
  dbg(5) <= \<const0>\;
  dbg(4) <= \<const0>\;
  dbg(3) <= \<const0>\;
  dbg(2) <= \<const0>\;
  dbg(1) <= \<const0>\;
  dbg(0) <= \<const0>\;
  locked <= locked_i;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\bctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bctr(0),
      O => plusOp(0)
    );
\bctr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => tc,
      O => bctr_reg0
    );
\bctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(0),
      Q => bctr(0),
      R => bctr_reg0
    );
\bctr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(10),
      Q => bctr(10),
      R => bctr_reg0
    );
\bctr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(11),
      Q => bctr(11),
      R => bctr_reg0
    );
\bctr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(12),
      Q => bctr(12),
      R => bctr_reg0
    );
\bctr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(13),
      Q => bctr(13),
      R => bctr_reg0
    );
\bctr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(14),
      Q => bctr(14),
      R => bctr_reg0
    );
\bctr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(15),
      Q => bctr(15),
      R => bctr_reg0
    );
\bctr_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \bctr_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_bctr_reg[15]_i_2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \bctr_reg[15]_i_2_n_2\,
      CO(4) => \bctr_reg[15]_i_2_n_3\,
      CO(3) => \bctr_reg[15]_i_2_n_4\,
      CO(2) => \bctr_reg[15]_i_2_n_5\,
      CO(1) => \bctr_reg[15]_i_2_n_6\,
      CO(0) => \bctr_reg[15]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_bctr_reg[15]_i_2_O_UNCONNECTED\(7),
      O(6 downto 0) => plusOp(15 downto 9),
      S(7) => '0',
      S(6 downto 0) => bctr(15 downto 9)
    );
\bctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(1),
      Q => bctr(1),
      R => bctr_reg0
    );
\bctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(2),
      Q => bctr(2),
      R => bctr_reg0
    );
\bctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(3),
      Q => bctr(3),
      R => bctr_reg0
    );
\bctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(4),
      Q => bctr(4),
      R => bctr_reg0
    );
\bctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(5),
      Q => bctr(5),
      R => bctr_reg0
    );
\bctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(6),
      Q => bctr(6),
      R => bctr_reg0
    );
\bctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(7),
      Q => bctr(7),
      R => bctr_reg0
    );
\bctr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(8),
      Q => bctr(8),
      R => bctr_reg0
    );
\bctr_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => bctr(0),
      CI_TOP => '0',
      CO(7) => \bctr_reg[8]_i_1_n_0\,
      CO(6) => \bctr_reg[8]_i_1_n_1\,
      CO(5) => \bctr_reg[8]_i_1_n_2\,
      CO(4) => \bctr_reg[8]_i_1_n_3\,
      CO(3) => \bctr_reg[8]_i_1_n_4\,
      CO(2) => \bctr_reg[8]_i_1_n_5\,
      CO(1) => \bctr_reg[8]_i_1_n_6\,
      CO(0) => \bctr_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => plusOp(8 downto 1),
      S(7 downto 0) => bctr(8 downto 1)
    );
\bctr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(9),
      Q => bctr(9),
      R => bctr_reg0
    );
\cctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cctr(0),
      O => \cctr[0]_i_1_n_0\
    );
\cctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cctr(0),
      I1 => cctr(1),
      O => \cctr[1]_i_1_n_0\
    );
\cctr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk4x,
      CE => '1',
      D => \cctr[0]_i_1_n_0\,
      Q => cctr(0),
      S => rst
    );
\cctr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk4x,
      CE => '1',
      D => \cctr[1]_i_1_n_0\,
      Q => cctr(1),
      S => rst
    );
\dctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dctr(0),
      O => \dctr[0]_i_1_n_0\
    );
\dctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr[0]_i_1_n_0\,
      Q => dctr(0),
      R => bctr_reg0
    );
\dctr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[15]_i_1_n_14\,
      Q => dctr(10),
      R => bctr_reg0
    );
\dctr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[15]_i_1_n_13\,
      Q => dctr(11),
      R => bctr_reg0
    );
\dctr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[15]_i_1_n_12\,
      Q => dctr(12),
      R => bctr_reg0
    );
\dctr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[15]_i_1_n_11\,
      Q => dctr(13),
      R => bctr_reg0
    );
\dctr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[15]_i_1_n_10\,
      Q => dctr(14),
      R => bctr_reg0
    );
\dctr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[15]_i_1_n_9\,
      Q => dctr(15),
      R => bctr_reg0
    );
\dctr_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \dctr_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_dctr_reg[15]_i_1_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \dctr_reg[15]_i_1_n_2\,
      CO(4) => \dctr_reg[15]_i_1_n_3\,
      CO(3) => \dctr_reg[15]_i_1_n_4\,
      CO(2) => \dctr_reg[15]_i_1_n_5\,
      CO(1) => \dctr_reg[15]_i_1_n_6\,
      CO(0) => \dctr_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_dctr_reg[15]_i_1_O_UNCONNECTED\(7),
      O(6) => \dctr_reg[15]_i_1_n_9\,
      O(5) => \dctr_reg[15]_i_1_n_10\,
      O(4) => \dctr_reg[15]_i_1_n_11\,
      O(3) => \dctr_reg[15]_i_1_n_12\,
      O(2) => \dctr_reg[15]_i_1_n_13\,
      O(1) => \dctr_reg[15]_i_1_n_14\,
      O(0) => \dctr_reg[15]_i_1_n_15\,
      S(7) => '0',
      S(6 downto 0) => dctr(15 downto 9)
    );
\dctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[8]_i_1_n_15\,
      Q => dctr(1),
      R => bctr_reg0
    );
\dctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[8]_i_1_n_14\,
      Q => dctr(2),
      R => bctr_reg0
    );
\dctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[8]_i_1_n_13\,
      Q => dctr(3),
      R => bctr_reg0
    );
\dctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[8]_i_1_n_12\,
      Q => dctr(4),
      R => bctr_reg0
    );
\dctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[8]_i_1_n_11\,
      Q => dctr(5),
      R => bctr_reg0
    );
\dctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[8]_i_1_n_10\,
      Q => dctr(6),
      R => bctr_reg0
    );
\dctr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[8]_i_1_n_9\,
      Q => dctr(7),
      S => bctr_reg0
    );
\dctr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[8]_i_1_n_8\,
      Q => dctr(8),
      R => bctr_reg0
    );
\dctr_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => dctr(0),
      CI_TOP => '0',
      CO(7) => \dctr_reg[8]_i_1_n_0\,
      CO(6) => \dctr_reg[8]_i_1_n_1\,
      CO(5) => \dctr_reg[8]_i_1_n_2\,
      CO(4) => \dctr_reg[8]_i_1_n_3\,
      CO(3) => \dctr_reg[8]_i_1_n_4\,
      CO(2) => \dctr_reg[8]_i_1_n_5\,
      CO(1) => \dctr_reg[8]_i_1_n_6\,
      CO(0) => \dctr_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \dctr_reg[8]_i_1_n_8\,
      O(6) => \dctr_reg[8]_i_1_n_9\,
      O(5) => \dctr_reg[8]_i_1_n_10\,
      O(4) => \dctr_reg[8]_i_1_n_11\,
      O(3) => \dctr_reg[8]_i_1_n_12\,
      O(2) => \dctr_reg[8]_i_1_n_13\,
      O(1) => \dctr_reg[8]_i_1_n_14\,
      O(0) => \dctr_reg[8]_i_1_n_15\,
      S(7 downto 0) => dctr(8 downto 1)
    );
\dctr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => di,
      D => \dctr_reg[15]_i_1_n_15\,
      Q => dctr(9),
      R => bctr_reg0
    );
di_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACFFAC00"
    )
        port map (
      I0 => db,
      I1 => da,
      I2 => sctr(0),
      I3 => di_i_2_n_0,
      I4 => di,
      O => di_i_1_n_0
    );
di_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cctr(0),
      I1 => sctr(1),
      I2 => cctr(1),
      I3 => sctr(2),
      O => di_i_2_n_0
    );
di_reg: unisim.vcomponents.FDRE
     port map (
      C => clk4x,
      CE => '1',
      D => di_i_1_n_0,
      Q => di,
      R => '0'
    );
good_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => dctr(15),
      I1 => dctr(13),
      I2 => dctr(14),
      O => good
    );
iff: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      IS_CB_INVERTED => '1',
      IS_C_INVERTED => '0'
    )
        port map (
      C => clk4x,
      CB => clk4x,
      D => d,
      Q1 => da,
      Q2 => db,
      R => '0'
    );
locked_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => patt1,
      I1 => locked_i,
      I2 => tc,
      I3 => locked_i,
      O => locked_i_i_1_n_0
    );
locked_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => patt(1),
      I1 => patt(0),
      I2 => good,
      I3 => p,
      O => patt1
    );
locked_i_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => locked_i_i_1_n_0,
      Q => locked_i,
      R => patt_reg0
    );
p_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABFFFFAAAB0000"
    )
        port map (
      I0 => p,
      I1 => sctr(2),
      I2 => sctr(0),
      I3 => sctr(1),
      I4 => tc,
      I5 => p,
      O => p_i_1_n_0
    );
p_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_i_1_n_0,
      Q => p,
      R => patt_reg0
    );
\patt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => locked_i,
      I1 => patt(0),
      I2 => good,
      O => \patt[0]_i_1_n_0\
    );
\patt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => rst,
      I1 => locked_i,
      I2 => good,
      I3 => tc,
      O => patt_reg0
    );
\patt[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8D8D8D8"
    )
        port map (
      I0 => locked_i,
      I1 => patt(1),
      I2 => patt(0),
      I3 => good,
      I4 => p,
      O => \patt[1]_i_2_n_0\
    );
\patt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tc,
      D => \patt[0]_i_1_n_0\,
      Q => patt(0),
      R => patt_reg0
    );
\patt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tc,
      D => \patt[1]_i_2_n_0\,
      Q => patt(1),
      R => patt_reg0
    );
q_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => di,
      Q => q,
      R => '0'
    );
\sctr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA65555555"
    )
        port map (
      I0 => sctr(0),
      I1 => patt(1),
      I2 => patt(0),
      I3 => good,
      I4 => p,
      I5 => locked_i,
      O => \sctr__0\(0)
    );
\sctr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => sctr(0),
      I1 => sctr(1),
      I2 => \sctr[2]_i_2_n_0\,
      O => \sctr__0\(1)
    );
\sctr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1F0"
    )
        port map (
      I0 => sctr(0),
      I1 => sctr(1),
      I2 => sctr(2),
      I3 => \sctr[2]_i_2_n_0\,
      O => \sctr__0\(2)
    );
\sctr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551555"
    )
        port map (
      I0 => locked_i,
      I1 => p,
      I2 => good,
      I3 => patt(0),
      I4 => patt(1),
      O => \sctr[2]_i_2_n_0\
    );
\sctr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => tc,
      D => \sctr__0\(0),
      Q => sctr(0),
      S => patt_reg0
    );
\sctr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => tc,
      D => \sctr__0\(1),
      Q => sctr(1),
      S => patt_reg0
    );
\sctr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => tc,
      D => \sctr__0\(2),
      Q => sctr(2),
      S => patt_reg0
    );
tc_inferred_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => tc_inferred_i_2_n_0,
      I1 => bctr(1),
      I2 => bctr(0),
      I3 => bctr(3),
      I4 => bctr(2),
      I5 => tc_inferred_i_3_n_0,
      O => tc
    );
tc_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => bctr(12),
      I1 => bctr(13),
      I2 => bctr(10),
      I3 => bctr(11),
      I4 => bctr(15),
      I5 => bctr(14),
      O => tc_inferred_i_2_n_0
    );
tc_inferred_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => bctr(6),
      I1 => bctr(7),
      I2 => bctr(4),
      I3 => bctr(5),
      I4 => bctr(9),
      I5 => bctr(8),
      O => tc_inferred_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_dec8b10b is
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
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_dec8b10b : entity is "pdts_dec8b10b";
end design_1_pdts_endpoint_wrapper_0_0_pdts_dec8b10b;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_dec8b10b is
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
  attribute SOFT_HLUTNM of cerr_i_10 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of cerr_i_12 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of cerr_i_13 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of derr_i_3 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of derr_i_4 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of derr_i_6 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of derr_i_7 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of disp_i_3 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of disp_i_5 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of disp_i_6 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of k_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of k_i_3 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of k_i_5 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of k_i_6 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q[7]_i_2\ : label is "soft_lutpair34";
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
entity design_1_pdts_endpoint_wrapper_0_0_pdts_del is
  port (
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d : in STD_LOGIC_VECTOR ( 0 to 0 );
    q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute DEL_RADIX : integer;
  attribute DEL_RADIX of design_1_pdts_endpoint_wrapper_0_0_pdts_del : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_del : entity is "pdts_del";
  attribute WIDTH : integer;
  attribute WIDTH of design_1_pdts_endpoint_wrapper_0_0_pdts_del : entity is 1;
end design_1_pdts_endpoint_wrapper_0_0_pdts_del;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_del is
  signal \q[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \q[0]_INST_0_i_6_n_0\ : STD_LOGIC;
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
begin
\q[0]_INST_0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \q[0]_INST_0_i_1_n_0\,
      I1 => \q[0]_INST_0_i_2_n_0\,
      O => q(0),
      S => a(3)
    );
\q[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[0]_INST_0_i_3_n_0\,
      I1 => \q[0]_INST_0_i_4_n_0\,
      O => \q[0]_INST_0_i_1_n_0\,
      S => a(2)
    );
\q[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \q[0]_INST_0_i_5_n_0\,
      I1 => \q[0]_INST_0_i_6_n_0\,
      O => \q[0]_INST_0_i_2_n_0\,
      S => a(2)
    );
\q[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[3]\,
      I1 => \s_reg[2]\,
      I2 => a(1),
      I3 => \s_reg[1]\,
      I4 => a(0),
      I5 => d(0),
      O => \q[0]_INST_0_i_3_n_0\
    );
\q[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[7]\,
      I1 => \s_reg[6]\,
      I2 => a(1),
      I3 => \s_reg[5]\,
      I4 => a(0),
      I5 => \s_reg[4]\,
      O => \q[0]_INST_0_i_4_n_0\
    );
\q[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[11]\,
      I1 => \s_reg[10]\,
      I2 => a(1),
      I3 => \s_reg[9]\,
      I4 => a(0),
      I5 => \s_reg[8]\,
      O => \q[0]_INST_0_i_5_n_0\
    );
\q[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s_reg[15]\,
      I1 => \s_reg[14]\,
      I2 => a(1),
      I3 => \s_reg[13]\,
      I4 => a(0),
      I5 => \s_reg[12]\,
      O => \q[0]_INST_0_i_6_n_0\
    );
\s_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[9]\,
      Q => \s_reg[10]\,
      R => '0'
    );
\s_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[10]\,
      Q => \s_reg[11]\,
      R => '0'
    );
\s_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[11]\,
      Q => \s_reg[12]\,
      R => '0'
    );
\s_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[12]\,
      Q => \s_reg[13]\,
      R => '0'
    );
\s_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[13]\,
      Q => \s_reg[14]\,
      R => '0'
    );
\s_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[14]\,
      Q => \s_reg[15]\,
      R => '0'
    );
\s_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(0),
      Q => \s_reg[1]\,
      R => '0'
    );
\s_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[1]\,
      Q => \s_reg[2]\,
      R => '0'
    );
\s_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[2]\,
      Q => \s_reg[3]\,
      R => '0'
    );
\s_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[3]\,
      Q => \s_reg[4]\,
      R => '0'
    );
\s_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[4]\,
      Q => \s_reg[5]\,
      R => '0'
    );
\s_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[5]\,
      Q => \s_reg[6]\,
      R => '0'
    );
\s_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[6]\,
      Q => \s_reg[7]\,
      R => '0'
    );
\s_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[7]\,
      Q => \s_reg[8]\,
      R => '0'
    );
\s_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_reg[8]\,
      Q => \s_reg[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_enc8b10b is
  port (
    disp : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    trst : in STD_LOGIC;
    disp_reg_0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    stbo : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_enc8b10b : entity is "pdts_enc8b10b";
end design_1_pdts_endpoint_wrapper_0_0_pdts_enc8b10b;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_enc8b10b is
begin
disp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => disp_reg_0,
      Q => disp,
      R => trst
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stbo,
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stbo,
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stbo,
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stbo,
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stbo,
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stbo,
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stbo,
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stbo,
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stbo,
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stbo,
      D => D(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_ep_regfile is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    \ctrl_in[a]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \ctrl_in[d]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ctrl_in[rw]\ : in STD_LOGIC;
    \ctrl_in[stb]\ : in STD_LOGIC;
    \ctrl_out[d]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \ctrl_out[ack]\ : out STD_LOGIC;
    sys_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stat : in STD_LOGIC_VECTOR ( 3 downto 0 );
    delay : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phase : out STD_LOGIC_VECTOR ( 11 downto 0 );
    phase_done : in STD_LOGIC;
    resync : out STD_LOGIC;
    reset : out STD_LOGIC;
    txenb : out STD_LOGIC;
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ts_stb : out STD_LOGIC;
    addr_done : out STD_LOGIC;
    deskew_done : out STD_LOGIC
  );
  attribute EXT_ADDR : string;
  attribute EXT_ADDR of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_regfile : entity is "TRUE";
  attribute FORCE_TX : string;
  attribute FORCE_TX of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_regfile : entity is "FALSE";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_regfile : entity is "pdts_ep_regfile";
  attribute SKIP_DESKEW : string;
  attribute SKIP_DESKEW of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_regfile : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_regfile : entity is "soft";
end design_1_pdts_endpoint_wrapper_0_0_pdts_ep_regfile;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_regfile is
  signal \ctrl_out[d][0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_out[d][7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \delay[3]_i_2_n_0\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal \^phase\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \reg_w[2]\ : STD_LOGIC;
  signal \reg_w[3]\ : STD_LOGIC;
  signal \reg_w[4]\ : STD_LOGIC;
  signal \reg_w[5]\ : STD_LOGIC;
  signal \reg_w_reg[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \reg_w_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg_w_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^reset\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of reset : signal is std.standard.true;
  signal reset_i_1_n_0 : STD_LOGIC;
  signal reset_i_2_n_0 : STD_LOGIC;
  signal \^resync\ : STD_LOGIC;
  attribute MARK_DEBUG of resync : signal is std.standard.true;
  signal resync_i_1_n_0 : STD_LOGIC;
  signal \^sys_addr\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ts_stb0 : STD_LOGIC;
  signal \^tstamp\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal txen1 : STD_LOGIC;
  signal txen_i_1_n_0 : STD_LOGIC;
  signal txen_i_2_n_0 : STD_LOGIC;
  signal txen_i_3_n_0 : STD_LOGIC;
  signal txen_i_4_n_0 : STD_LOGIC;
  signal txen_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctrl_out[ack]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ctrl_out[d][0]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ctrl_out[d][7]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ctrl_out[d][7]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \delay[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \delay[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_w[3][7]_i_2\ : label is "soft_lutpair2";
  attribute KEEP : string;
  attribute KEEP of reset_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of reset_reg : label is "true";
  attribute KEEP of resync_reg : label is "yes";
  attribute SOFT_HLUTNM of \tctr[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tctr[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of txen_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of txen_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of txen_i_4 : label is "soft_lutpair4";
  attribute mark_debug_string of addr_done : signal is "true";
  attribute mark_debug_string of deskew_done : signal is "true";
  attribute mark_debug_string of reset : signal is "true";
  attribute mark_debug_string of resync : signal is "true";
  attribute mark_debug_string of txenb : signal is "true";
begin
  \^sys_addr\(15 downto 0) <= sys_addr(15 downto 0);
  addr(15 downto 0) <= \^sys_addr\(15 downto 0);
  phase(11 downto 0) <= \^phase\(11 downto 0);
  reset <= \^reset\;
  resync <= \^resync\;
  tstamp(63 downto 0) <= \^tstamp\(63 downto 0);
\ctrl_out[ack]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \ctrl_in[a]\(6),
      I1 => \ctrl_in[a]\(4),
      I2 => \ctrl_in[a]\(5),
      I3 => \ctrl_in[stb]\,
      O => \ctrl_out[ack]\
    );
\ctrl_out[d][0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3033743030007430"
    )
        port map (
      I0 => \ctrl_in[a]\(0),
      I1 => \ctrl_in[a]\(3),
      I2 => \ctrl_out[d][0]_INST_0_i_1_n_0\,
      I3 => \ctrl_in[a]\(1),
      I4 => \ctrl_in[a]\(2),
      I5 => \ctrl_out[d][0]_INST_0_i_2_n_0\,
      O => \ctrl_out[d]\(0)
    );
\ctrl_out[d][0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => \ctrl_in[a]\(2),
      I1 => stat(0),
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(1),
      I4 => \reg_w_reg[2]\(0),
      I5 => \^phase\(4),
      O => \ctrl_out[d][0]_INST_0_i_1_n_0\
    );
\ctrl_out[d][0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEAE22A2"
    )
        port map (
      I0 => \reg_w_reg[5]\(0),
      I1 => \ctrl_in[a]\(2),
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(1),
      I4 => \reg_w_reg[4]\(0),
      O => \ctrl_out[d][0]_INST_0_i_2_n_0\
    );
\ctrl_out[d][1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3033743030007430"
    )
        port map (
      I0 => \ctrl_in[a]\(0),
      I1 => \ctrl_in[a]\(3),
      I2 => \ctrl_out[d][1]_INST_0_i_1_n_0\,
      I3 => \ctrl_in[a]\(1),
      I4 => \ctrl_in[a]\(2),
      I5 => \ctrl_out[d][1]_INST_0_i_2_n_0\,
      O => \ctrl_out[d]\(1)
    );
\ctrl_out[d][1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => \ctrl_in[a]\(2),
      I1 => stat(1),
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(1),
      I4 => \reg_w_reg[2]\(1),
      I5 => \^phase\(5),
      O => \ctrl_out[d][1]_INST_0_i_1_n_0\
    );
\ctrl_out[d][1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEAE22A2"
    )
        port map (
      I0 => \reg_w_reg[5]\(1),
      I1 => \ctrl_in[a]\(2),
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(1),
      I4 => \reg_w_reg[4]\(1),
      O => \ctrl_out[d][1]_INST_0_i_2_n_0\
    );
\ctrl_out[d][2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3033743030007430"
    )
        port map (
      I0 => \ctrl_in[a]\(0),
      I1 => \ctrl_in[a]\(3),
      I2 => \ctrl_out[d][2]_INST_0_i_1_n_0\,
      I3 => \ctrl_in[a]\(1),
      I4 => \ctrl_in[a]\(2),
      I5 => \ctrl_out[d][2]_INST_0_i_2_n_0\,
      O => \ctrl_out[d]\(2)
    );
\ctrl_out[d][2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => \ctrl_in[a]\(2),
      I1 => stat(2),
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(1),
      I4 => \reg_w_reg[2]\(2),
      I5 => \^phase\(6),
      O => \ctrl_out[d][2]_INST_0_i_1_n_0\
    );
\ctrl_out[d][2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEAE22A2"
    )
        port map (
      I0 => \reg_w_reg[5]\(2),
      I1 => \ctrl_in[a]\(2),
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(1),
      I4 => \reg_w_reg[4]\(2),
      O => \ctrl_out[d][2]_INST_0_i_2_n_0\
    );
\ctrl_out[d][3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \reg_w_reg[4]\(3),
      I1 => \ctrl_out[d][7]_INST_0_i_1_n_0\,
      I2 => \reg_w_reg[5]\(3),
      I3 => \ctrl_out[d][7]_INST_0_i_2_n_0\,
      I4 => \ctrl_out[d][3]_INST_0_i_1_n_0\,
      I5 => \ctrl_in[a]\(3),
      O => \ctrl_out[d]\(3)
    );
\ctrl_out[d][3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => \ctrl_in[a]\(2),
      I1 => stat(3),
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(1),
      I4 => \reg_w_reg[2]\(3),
      I5 => \^phase\(7),
      O => \ctrl_out[d][3]_INST_0_i_1_n_0\
    );
\ctrl_out[d][4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \reg_w_reg[4]\(4),
      I1 => \ctrl_out[d][7]_INST_0_i_1_n_0\,
      I2 => \reg_w_reg[5]\(4),
      I3 => \ctrl_out[d][7]_INST_0_i_2_n_0\,
      I4 => \ctrl_out[d][4]_INST_0_i_1_n_0\,
      I5 => \ctrl_in[a]\(3),
      O => \ctrl_out[d]\(4)
    );
\ctrl_out[d][4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => \ctrl_in[a]\(2),
      I1 => phase_done,
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(1),
      I4 => \^phase\(0),
      I5 => \^phase\(8),
      O => \ctrl_out[d][4]_INST_0_i_1_n_0\
    );
\ctrl_out[d][5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \reg_w_reg[4]\(5),
      I1 => \ctrl_out[d][7]_INST_0_i_1_n_0\,
      I2 => \reg_w_reg[5]\(5),
      I3 => \ctrl_out[d][7]_INST_0_i_2_n_0\,
      I4 => \ctrl_out[d][5]_INST_0_i_1_n_0\,
      I5 => \ctrl_in[a]\(3),
      O => \ctrl_out[d]\(5)
    );
\ctrl_out[d][5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => \ctrl_in[a]\(2),
      I1 => txen_reg_n_0,
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(1),
      I4 => \^phase\(1),
      I5 => \^phase\(9),
      O => \ctrl_out[d][5]_INST_0_i_1_n_0\
    );
\ctrl_out[d][6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \reg_w_reg[4]\(6),
      I1 => \ctrl_out[d][7]_INST_0_i_1_n_0\,
      I2 => \reg_w_reg[5]\(6),
      I3 => \ctrl_out[d][7]_INST_0_i_2_n_0\,
      I4 => \ctrl_out[d][6]_INST_0_i_1_n_0\,
      I5 => \ctrl_in[a]\(3),
      O => \ctrl_out[d]\(6)
    );
\ctrl_out[d][6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => \ctrl_in[a]\(2),
      I1 => \^phase\(10),
      I2 => \ctrl_in[a]\(0),
      I3 => \^phase\(2),
      I4 => \ctrl_in[a]\(1),
      O => \ctrl_out[d][6]_INST_0_i_1_n_0\
    );
\ctrl_out[d][7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \reg_w_reg[4]\(7),
      I1 => \ctrl_out[d][7]_INST_0_i_1_n_0\,
      I2 => \reg_w_reg[5]\(7),
      I3 => \ctrl_out[d][7]_INST_0_i_2_n_0\,
      I4 => \ctrl_out[d][7]_INST_0_i_3_n_0\,
      I5 => \ctrl_in[a]\(3),
      O => \ctrl_out[d]\(7)
    );
\ctrl_out[d][7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => \ctrl_in[a]\(2),
      I1 => \ctrl_in[a]\(0),
      I2 => \ctrl_in[a]\(1),
      O => \ctrl_out[d][7]_INST_0_i_1_n_0\
    );
\ctrl_out[d][7]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ctrl_in[a]\(1),
      I1 => \ctrl_in[a]\(2),
      O => \ctrl_out[d][7]_INST_0_i_2_n_0\
    );
\ctrl_out[d][7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => \ctrl_in[a]\(2),
      I1 => \^phase\(11),
      I2 => \ctrl_in[a]\(0),
      I3 => \^phase\(3),
      I4 => \ctrl_in[a]\(1),
      O => \ctrl_out[d][7]_INST_0_i_3_n_0\
    );
\delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \ctrl_in[d]\(1),
      I1 => \ctrl_in[d]\(0),
      I2 => \ctrl_in[d]\(2),
      I3 => \delay[3]_i_2_n_0\,
      I4 => txen1,
      I5 => rst,
      O => \delay[3]_i_1_n_0\
    );
\delay[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ctrl_in[d]\(7),
      I1 => \ctrl_in[d]\(4),
      I2 => \ctrl_in[d]\(3),
      I3 => \ctrl_in[d]\(6),
      I4 => \ctrl_in[d]\(5),
      O => \delay[3]_i_2_n_0\
    );
\delay[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => p_10_in,
      I1 => \ctrl_in[a]\(1),
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(2),
      I4 => \ctrl_in[a]\(3),
      O => txen1
    );
\delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \delay[3]_i_1_n_0\,
      D => \reg_w_reg[2]\(0),
      Q => delay(0),
      R => '0'
    );
\delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \delay[3]_i_1_n_0\,
      D => \reg_w_reg[2]\(1),
      Q => delay(1),
      R => '0'
    );
\delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \delay[3]_i_1_n_0\,
      D => \reg_w_reg[2]\(2),
      Q => delay(2),
      R => '0'
    );
\delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \delay[3]_i_1_n_0\,
      D => \reg_w_reg[2]\(3),
      Q => delay(3),
      R => '0'
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => addr_done
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => deskew_done
    );
\reg_w[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => p_10_in,
      I1 => \ctrl_in[a]\(0),
      I2 => \ctrl_in[a]\(1),
      I3 => \ctrl_in[a]\(2),
      I4 => \ctrl_in[a]\(3),
      O => \reg_w[2]\
    );
\reg_w[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => p_10_in,
      I1 => \ctrl_in[a]\(1),
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(2),
      I4 => \ctrl_in[a]\(3),
      O => \reg_w[3]\
    );
\reg_w[3][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \ctrl_in[stb]\,
      I1 => \ctrl_in[a]\(5),
      I2 => \ctrl_in[a]\(4),
      I3 => \ctrl_in[a]\(6),
      I4 => \ctrl_in[rw]\,
      O => p_10_in
    );
\reg_w[4][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => p_10_in,
      I1 => \ctrl_in[a]\(1),
      I2 => \ctrl_in[a]\(2),
      I3 => \ctrl_in[a]\(0),
      I4 => \ctrl_in[a]\(3),
      O => \reg_w[4]\
    );
\reg_w[5][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => p_10_in,
      I1 => \ctrl_in[a]\(2),
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(1),
      I4 => \ctrl_in[a]\(3),
      O => \reg_w[5]\
    );
\reg_w_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[2]\,
      D => \ctrl_in[d]\(0),
      Q => \reg_w_reg[2]\(0),
      R => rst
    );
\reg_w_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[2]\,
      D => \ctrl_in[d]\(1),
      Q => \reg_w_reg[2]\(1),
      R => rst
    );
\reg_w_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[2]\,
      D => \ctrl_in[d]\(2),
      Q => \reg_w_reg[2]\(2),
      R => rst
    );
\reg_w_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[2]\,
      D => \ctrl_in[d]\(3),
      Q => \reg_w_reg[2]\(3),
      R => rst
    );
\reg_w_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[2]\,
      D => \ctrl_in[d]\(4),
      Q => \^phase\(0),
      R => rst
    );
\reg_w_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[2]\,
      D => \ctrl_in[d]\(5),
      Q => \^phase\(1),
      R => rst
    );
\reg_w_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[2]\,
      D => \ctrl_in[d]\(6),
      Q => \^phase\(2),
      R => rst
    );
\reg_w_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[2]\,
      D => \ctrl_in[d]\(7),
      Q => \^phase\(3),
      R => rst
    );
\reg_w_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[3]\,
      D => \ctrl_in[d]\(0),
      Q => \^phase\(4),
      R => rst
    );
\reg_w_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[3]\,
      D => \ctrl_in[d]\(1),
      Q => \^phase\(5),
      R => rst
    );
\reg_w_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[3]\,
      D => \ctrl_in[d]\(2),
      Q => \^phase\(6),
      R => rst
    );
\reg_w_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[3]\,
      D => \ctrl_in[d]\(3),
      Q => \^phase\(7),
      R => rst
    );
\reg_w_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[3]\,
      D => \ctrl_in[d]\(4),
      Q => \^phase\(8),
      R => rst
    );
\reg_w_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[3]\,
      D => \ctrl_in[d]\(5),
      Q => \^phase\(9),
      R => rst
    );
\reg_w_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[3]\,
      D => \ctrl_in[d]\(6),
      Q => \^phase\(10),
      R => rst
    );
\reg_w_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[3]\,
      D => \ctrl_in[d]\(7),
      Q => \^phase\(11),
      R => rst
    );
\reg_w_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[4]\,
      D => \ctrl_in[d]\(0),
      Q => \reg_w_reg[4]\(0),
      R => rst
    );
\reg_w_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[4]\,
      D => \ctrl_in[d]\(1),
      Q => \reg_w_reg[4]\(1),
      R => rst
    );
\reg_w_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[4]\,
      D => \ctrl_in[d]\(2),
      Q => \reg_w_reg[4]\(2),
      R => rst
    );
\reg_w_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[4]\,
      D => \ctrl_in[d]\(3),
      Q => \reg_w_reg[4]\(3),
      R => rst
    );
\reg_w_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[4]\,
      D => \ctrl_in[d]\(4),
      Q => \reg_w_reg[4]\(4),
      R => rst
    );
\reg_w_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[4]\,
      D => \ctrl_in[d]\(5),
      Q => \reg_w_reg[4]\(5),
      R => rst
    );
\reg_w_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[4]\,
      D => \ctrl_in[d]\(6),
      Q => \reg_w_reg[4]\(6),
      R => rst
    );
\reg_w_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[4]\,
      D => \ctrl_in[d]\(7),
      Q => \reg_w_reg[4]\(7),
      R => rst
    );
\reg_w_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[5]\,
      D => \ctrl_in[d]\(0),
      Q => \reg_w_reg[5]\(0),
      R => rst
    );
\reg_w_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[5]\,
      D => \ctrl_in[d]\(1),
      Q => \reg_w_reg[5]\(1),
      R => rst
    );
\reg_w_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[5]\,
      D => \ctrl_in[d]\(2),
      Q => \reg_w_reg[5]\(2),
      R => rst
    );
\reg_w_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[5]\,
      D => \ctrl_in[d]\(3),
      Q => \reg_w_reg[5]\(3),
      R => rst
    );
\reg_w_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[5]\,
      D => \ctrl_in[d]\(4),
      Q => \reg_w_reg[5]\(4),
      R => rst
    );
\reg_w_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[5]\,
      D => \ctrl_in[d]\(5),
      Q => \reg_w_reg[5]\(5),
      R => rst
    );
\reg_w_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[5]\,
      D => \ctrl_in[d]\(6),
      Q => \reg_w_reg[5]\(6),
      R => rst
    );
\reg_w_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg_w[5]\,
      D => \ctrl_in[d]\(7),
      Q => \reg_w_reg[5]\(7),
      R => rst
    );
reset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reset_i_2_n_0,
      I1 => txen1,
      I2 => \^reset\,
      O => reset_i_1_n_0
    );
reset_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCDCCC"
    )
        port map (
      I0 => \delay[3]_i_2_n_0\,
      I1 => \^reset\,
      I2 => \ctrl_in[d]\(2),
      I3 => \ctrl_in[d]\(0),
      I4 => \ctrl_in[d]\(1),
      O => reset_i_2_n_0
    );
reset_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reset_i_1_n_0,
      Q => \^reset\,
      R => rst
    );
resync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAA0008"
    )
        port map (
      I0 => txen1,
      I1 => \ctrl_in[d]\(2),
      I2 => \ctrl_in[d]\(0),
      I3 => \ctrl_in[d]\(1),
      I4 => \^resync\,
      I5 => \delay[3]_i_2_n_0\,
      O => resync_i_1_n_0
    );
resync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => resync_i_1_n_0,
      Q => \^resync\,
      R => rst
    );
\tctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tctr(0),
      O => plusOp(0)
    );
\tctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tctr(0),
      I1 => tctr(1),
      O => plusOp(1)
    );
\tctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tctr(0),
      I1 => tctr(1),
      I2 => tctr(2),
      O => plusOp(2)
    );
\tctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => plusOp(0),
      Q => tctr(0),
      R => rst
    );
\tctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => plusOp(1),
      Q => tctr(1),
      R => rst
    );
\tctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => plusOp(2),
      Q => tctr(2),
      R => rst
    );
ts_stb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => tctr(1),
      I1 => tctr(2),
      I2 => tctr(0),
      I3 => p_11_in,
      O => ts_stb0
    );
ts_stb_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ts_stb0,
      Q => ts_stb,
      R => '0'
    );
\tstamp_i[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => p_10_in,
      I1 => \ctrl_in[a]\(1),
      I2 => \ctrl_in[a]\(0),
      I3 => \ctrl_in[a]\(3),
      I4 => \ctrl_in[a]\(2),
      O => p_11_in
    );
\tstamp_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(8),
      Q => \^tstamp\(0),
      R => rst
    );
\tstamp_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(18),
      Q => \^tstamp\(10),
      R => rst
    );
\tstamp_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(19),
      Q => \^tstamp\(11),
      R => rst
    );
\tstamp_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(20),
      Q => \^tstamp\(12),
      R => rst
    );
\tstamp_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(21),
      Q => \^tstamp\(13),
      R => rst
    );
\tstamp_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(22),
      Q => \^tstamp\(14),
      R => rst
    );
\tstamp_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(23),
      Q => \^tstamp\(15),
      R => rst
    );
\tstamp_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(24),
      Q => \^tstamp\(16),
      R => rst
    );
\tstamp_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(25),
      Q => \^tstamp\(17),
      R => rst
    );
\tstamp_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(26),
      Q => \^tstamp\(18),
      R => rst
    );
\tstamp_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(27),
      Q => \^tstamp\(19),
      R => rst
    );
\tstamp_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(9),
      Q => \^tstamp\(1),
      R => rst
    );
\tstamp_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(28),
      Q => \^tstamp\(20),
      R => rst
    );
\tstamp_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(29),
      Q => \^tstamp\(21),
      R => rst
    );
\tstamp_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(30),
      Q => \^tstamp\(22),
      R => rst
    );
\tstamp_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(31),
      Q => \^tstamp\(23),
      R => rst
    );
\tstamp_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(32),
      Q => \^tstamp\(24),
      R => rst
    );
\tstamp_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(33),
      Q => \^tstamp\(25),
      R => rst
    );
\tstamp_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(34),
      Q => \^tstamp\(26),
      R => rst
    );
\tstamp_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(35),
      Q => \^tstamp\(27),
      R => rst
    );
\tstamp_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(36),
      Q => \^tstamp\(28),
      R => rst
    );
\tstamp_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(37),
      Q => \^tstamp\(29),
      R => rst
    );
\tstamp_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(10),
      Q => \^tstamp\(2),
      R => rst
    );
\tstamp_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(38),
      Q => \^tstamp\(30),
      R => rst
    );
\tstamp_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(39),
      Q => \^tstamp\(31),
      R => rst
    );
\tstamp_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(40),
      Q => \^tstamp\(32),
      R => rst
    );
\tstamp_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(41),
      Q => \^tstamp\(33),
      R => rst
    );
\tstamp_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(42),
      Q => \^tstamp\(34),
      R => rst
    );
\tstamp_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(43),
      Q => \^tstamp\(35),
      R => rst
    );
\tstamp_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(44),
      Q => \^tstamp\(36),
      R => rst
    );
\tstamp_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(45),
      Q => \^tstamp\(37),
      R => rst
    );
\tstamp_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(46),
      Q => \^tstamp\(38),
      R => rst
    );
\tstamp_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(47),
      Q => \^tstamp\(39),
      R => rst
    );
\tstamp_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(11),
      Q => \^tstamp\(3),
      R => rst
    );
\tstamp_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(48),
      Q => \^tstamp\(40),
      R => rst
    );
\tstamp_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(49),
      Q => \^tstamp\(41),
      R => rst
    );
\tstamp_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(50),
      Q => \^tstamp\(42),
      R => rst
    );
\tstamp_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(51),
      Q => \^tstamp\(43),
      R => rst
    );
\tstamp_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(52),
      Q => \^tstamp\(44),
      R => rst
    );
\tstamp_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(53),
      Q => \^tstamp\(45),
      R => rst
    );
\tstamp_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(54),
      Q => \^tstamp\(46),
      R => rst
    );
\tstamp_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(55),
      Q => \^tstamp\(47),
      R => rst
    );
\tstamp_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(56),
      Q => \^tstamp\(48),
      R => rst
    );
\tstamp_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(57),
      Q => \^tstamp\(49),
      R => rst
    );
\tstamp_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(12),
      Q => \^tstamp\(4),
      R => rst
    );
\tstamp_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(58),
      Q => \^tstamp\(50),
      R => rst
    );
\tstamp_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(59),
      Q => \^tstamp\(51),
      R => rst
    );
\tstamp_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(60),
      Q => \^tstamp\(52),
      R => rst
    );
\tstamp_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(61),
      Q => \^tstamp\(53),
      R => rst
    );
\tstamp_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(62),
      Q => \^tstamp\(54),
      R => rst
    );
\tstamp_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(63),
      Q => \^tstamp\(55),
      R => rst
    );
\tstamp_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \ctrl_in[d]\(0),
      Q => \^tstamp\(56),
      R => rst
    );
\tstamp_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \ctrl_in[d]\(1),
      Q => \^tstamp\(57),
      R => rst
    );
\tstamp_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \ctrl_in[d]\(2),
      Q => \^tstamp\(58),
      R => rst
    );
\tstamp_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \ctrl_in[d]\(3),
      Q => \^tstamp\(59),
      R => rst
    );
\tstamp_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(13),
      Q => \^tstamp\(5),
      R => rst
    );
\tstamp_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \ctrl_in[d]\(4),
      Q => \^tstamp\(60),
      R => rst
    );
\tstamp_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \ctrl_in[d]\(5),
      Q => \^tstamp\(61),
      R => rst
    );
\tstamp_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \ctrl_in[d]\(6),
      Q => \^tstamp\(62),
      R => rst
    );
\tstamp_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \ctrl_in[d]\(7),
      Q => \^tstamp\(63),
      R => rst
    );
\tstamp_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(14),
      Q => \^tstamp\(6),
      R => rst
    );
\tstamp_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(15),
      Q => \^tstamp\(7),
      R => rst
    );
\tstamp_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(16),
      Q => \^tstamp\(8),
      R => rst
    );
\tstamp_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_11_in,
      D => \^tstamp\(17),
      Q => \^tstamp\(9),
      R => rst
    );
txen_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAABA0A"
    )
        port map (
      I0 => txen_reg_n_0,
      I1 => txen_i_2_n_0,
      I2 => txen1,
      I3 => txen_i_3_n_0,
      I4 => txen_i_4_n_0,
      I5 => rst,
      O => txen_i_1_n_0
    );
txen_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \ctrl_in[d]\(2),
      I1 => \ctrl_in[d]\(3),
      I2 => \ctrl_in[d]\(0),
      I3 => \ctrl_in[d]\(1),
      O => txen_i_2_n_0
    );
txen_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ctrl_in[d]\(2),
      I1 => \ctrl_in[d]\(3),
      I2 => \ctrl_in[d]\(0),
      I3 => \ctrl_in[d]\(1),
      O => txen_i_3_n_0
    );
txen_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ctrl_in[d]\(7),
      I1 => \ctrl_in[d]\(6),
      I2 => \ctrl_in[d]\(4),
      I3 => \ctrl_in[d]\(5),
      O => txen_i_4_n_0
    );
txen_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => txen_i_1_n_0,
      Q => txen_reg_n_0,
      R => '0'
    );
txenb_inferred_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => txen_reg_n_0,
      O => txenb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_ep_transactor is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wen_0 : out STD_LOGIC;
    \p1__0\ : out STD_LOGIC;
    \addr_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s0 : out STD_LOGIC;
    \acmdw_tx[last]\ : out STD_LOGIC;
    \txdone__0\ : out STD_LOGIC;
    \ctrl_in[stb]\ : out STD_LOGIC;
    \rxdone__0\ : out STD_LOGIC;
    \p1__0_1\ : out STD_LOGIC;
    \^d\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    \acmdw_rx[last]\ : in STD_LOGIC;
    \ctrl_out[ack]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_1\ : in STD_LOGIC;
    wen : in STD_LOGIC;
    \ren__0\ : in STD_LOGIC;
    s_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    trst : in STD_LOGIC;
    \acmdr[rdy]\ : in STD_LOGIC;
    sel : in STD_LOGIC;
    \ctrl_out[d]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_transactor : entity is "pdts_ep_transactor";
end design_1_pdts_endpoint_wrapper_0_0_pdts_ep_transactor;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_transactor is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^acmdw_tx[last]\ : STD_LOGIC;
  signal \acmdw_tx[valid]\ : STD_LOGIC;
  signal addr : STD_LOGIC;
  signal \addr1__0\ : STD_LOGIC;
  signal \addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr[6]_i_2_n_0\ : STD_LOGIC;
  signal \addr[6]_i_3_n_0\ : STD_LOGIC;
  signal \^addr_reg[6]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal last : STD_LOGIC;
  signal lctr : STD_LOGIC;
  signal \lctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \lctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \lctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \lctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \lctr[4]_i_1_n_0\ : STD_LOGIC;
  signal \lctr[5]_i_2_n_0\ : STD_LOGIC;
  signal \lctr[5]_i_3_n_0\ : STD_LOGIC;
  signal \lctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \lctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \lctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \lctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \lctr_reg_n_0_[4]\ : STD_LOGIC;
  signal \lctr_reg_n_0_[5]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal paddr_reg0 : STD_LOGIC;
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_reg_0_31_0_0_i_4_n_0 : STD_LOGIC;
  signal ram_reg_0_31_0_0_i_6_n_0 : STD_LOGIC;
  signal ram_reg_0_31_0_0_i_7_n_0 : STD_LOGIC;
  signal rep_reg_n_0 : STD_LOGIC;
  signal rw : STD_LOGIC;
  signal s_i_5_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \state0__5\ : STD_LOGIC;
  signal state1 : STD_LOGIC;
  signal \tctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \tctr[6]_i_2_n_0\ : STD_LOGIC;
  signal \tctr[7]_i_1_n_0\ : STD_LOGIC;
  signal \tctr[7]_i_3_n_0\ : STD_LOGIC;
  signal tctr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \timeout__6\ : STD_LOGIC;
  signal \tx_o[valid]11_in\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_state[11]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_state[11]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_state[11]_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_state[11]_i_8\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_state[11]_i_9\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_state[8]_i_1\ : label is "soft_lutpair14";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[10]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[11]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "st_waddr_l:000000000001,st_waddr_h:000000000100,st_raddr_h:000000010000,st_err:000000000010,st_wrfin:000000100000,st_raddr_l:000010000000,st_idle:000001000000,st_len:000100000000,st_wr:010000000000,st_addr:100000000000,st_rd:001000000000,st_hdr:000000001000";
  attribute SOFT_HLUTNM of \addr[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr[5]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr[6]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \err_i_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of err_i_i_4 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lctr[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \lctr[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of regfile_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of s_i_5 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tctr[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tctr[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tctr[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tctr[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tctr[6]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \tctr[7]_i_2\ : label is "soft_lutpair19";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \acmdw_tx[last]\ <= \^acmdw_tx[last]\;
  \addr_reg[6]_0\(6 downto 0) <= \^addr_reg[6]_0\(6 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \acmdw_rx[last]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_0_in,
      I1 => \acmdw_rx[last]\,
      I2 => rw,
      O => \FSM_onehot_state[10]_i_1_n_0\
    );
\FSM_onehot_state[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_1\,
      I1 => \FSM_onehot_state_reg[0]_0\,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_state[11]_i_3_n_0\,
      O => \FSM_onehot_state[11]_i_1_n_0\
    );
\FSM_onehot_state[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF02"
    )
        port map (
      I0 => p_1_in,
      I1 => \timeout__6\,
      I2 => last,
      I3 => \^q\(0),
      I4 => \FSM_onehot_state[11]_i_5_n_0\,
      O => \FSM_onehot_state[11]_i_2_n_0\
    );
\FSM_onehot_state[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFEF0"
    )
        port map (
      I0 => \^q\(1),
      I1 => p_1_in,
      I2 => addr,
      I3 => \state0__5\,
      I4 => \timeout__6\,
      I5 => \FSM_onehot_state[11]_i_7_n_0\,
      O => \FSM_onehot_state[11]_i_3_n_0\
    );
\FSM_onehot_state[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => tctr_reg(2),
      I1 => tctr_reg(3),
      I2 => tctr_reg(0),
      I3 => tctr_reg(1),
      I4 => \FSM_onehot_state[11]_i_8_n_0\,
      O => \timeout__6\
    );
\FSM_onehot_state[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2322"
    )
        port map (
      I0 => p_3_in,
      I1 => \acmdw_rx[last]\,
      I2 => \timeout__6\,
      I3 => \^q\(1),
      O => \FSM_onehot_state[11]_i_5_n_0\
    );
\FSM_onehot_state[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state1,
      I1 => \ctrl_out[ack]\,
      O => \state0__5\
    );
\FSM_onehot_state[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => paddr_reg0,
      I1 => p_1_in0_in,
      I2 => p_0_in,
      I3 => \FSM_onehot_state[11]_i_9_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => p_3_in,
      O => \FSM_onehot_state[11]_i_7_n_0\
    );
\FSM_onehot_state[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => tctr_reg(5),
      I1 => tctr_reg(4),
      I2 => tctr_reg(7),
      I3 => tctr_reg(6),
      O => \FSM_onehot_state[11]_i_8_n_0\
    );
\FSM_onehot_state[11]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[11]_i_9_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \timeout__6\,
      I2 => \^q\(0),
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state[1]_i_3_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => p_2_in,
      I1 => p_3_in,
      I2 => addr,
      I3 => \acmdw_rx[last]\,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => p_0_in,
      I1 => rw,
      I2 => \acmdw_rx[last]\,
      I3 => p_1_in,
      I4 => \timeout__6\,
      I5 => \FSM_onehot_state[1]_i_4_n_0\,
      O => \FSM_onehot_state[1]_i_3_n_0\
    );
\FSM_onehot_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => paddr_reg0,
      I1 => \acmdw_rx[last]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[1]_i_4_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \acmdw_rx[last]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in,
      I1 => \acmdw_rx[last]\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => paddr_reg0,
      I1 => \acmdw_rx[last]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^q\(1),
      I1 => \timeout__6\,
      I2 => \acmdw_rx[last]\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => p_1_in0_in,
      I1 => last,
      I2 => \timeout__6\,
      I3 => p_1_in,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => addr,
      I1 => \acmdw_rx[last]\,
      O => \FSM_onehot_state[8]_i_1_n_0\
    );
\FSM_onehot_state[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in,
      I1 => rw,
      O => \FSM_onehot_state[9]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => trst
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[10]_i_1_n_0\,
      Q => \^q\(1),
      R => trst
    );
\FSM_onehot_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[11]_i_2_n_0\,
      Q => addr,
      R => trst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \^q\(0),
      R => trst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => p_2_in,
      R => trst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => p_3_in,
      R => trst
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => trst
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => p_1_in0_in,
      R => trst
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      S => trst
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state_reg_n_0_[6]\,
      Q => paddr_reg0,
      R => trst
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[8]_i_1_n_0\,
      Q => p_0_in,
      R => trst
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \FSM_onehot_state[11]_i_1_n_0\,
      D => \FSM_onehot_state[9]_i_1_n_0\,
      Q => p_1_in,
      R => trst
    );
\addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF10"
    )
        port map (
      I0 => rep_reg_n_0,
      I1 => \^addr_reg[6]_0\(0),
      I2 => \addr1__0\,
      I3 => D(0),
      O => \addr[0]_i_1_n_0\
    );
\addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFF1400"
    )
        port map (
      I0 => rep_reg_n_0,
      I1 => \^addr_reg[6]_0\(0),
      I2 => \^addr_reg[6]_0\(1),
      I3 => \addr1__0\,
      I4 => D(1),
      O => \addr[1]_i_1_n_0\
    );
\addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F8FFFF07080000"
    )
        port map (
      I0 => \^addr_reg[6]_0\(1),
      I1 => \^addr_reg[6]_0\(0),
      I2 => rep_reg_n_0,
      I3 => \^addr_reg[6]_0\(2),
      I4 => \addr1__0\,
      I5 => D(2),
      O => \addr[2]_i_1_n_0\
    );
\addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFF1400"
    )
        port map (
      I0 => rep_reg_n_0,
      I1 => \addr[3]_i_2_n_0\,
      I2 => \^addr_reg[6]_0\(3),
      I3 => \addr1__0\,
      I4 => D(3),
      O => \addr[3]_i_1_n_0\
    );
\addr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^addr_reg[6]_0\(2),
      I1 => \^addr_reg[6]_0\(0),
      I2 => \^addr_reg[6]_0\(1),
      O => \addr[3]_i_2_n_0\
    );
\addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFF1400"
    )
        port map (
      I0 => rep_reg_n_0,
      I1 => \addr[4]_i_2_n_0\,
      I2 => \^addr_reg[6]_0\(4),
      I3 => \addr1__0\,
      I4 => D(4),
      O => \addr[4]_i_1_n_0\
    );
\addr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^addr_reg[6]_0\(3),
      I1 => \^addr_reg[6]_0\(1),
      I2 => \^addr_reg[6]_0\(0),
      I3 => \^addr_reg[6]_0\(2),
      O => \addr[4]_i_2_n_0\
    );
\addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFF1400"
    )
        port map (
      I0 => rep_reg_n_0,
      I1 => \addr[5]_i_2_n_0\,
      I2 => \^addr_reg[6]_0\(5),
      I3 => \addr1__0\,
      I4 => D(5),
      O => \addr[5]_i_1_n_0\
    );
\addr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^addr_reg[6]_0\(4),
      I1 => \^addr_reg[6]_0\(2),
      I2 => \^addr_reg[6]_0\(0),
      I3 => \^addr_reg[6]_0\(1),
      I4 => \^addr_reg[6]_0\(3),
      O => \addr[5]_i_2_n_0\
    );
\addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEEA"
    )
        port map (
      I0 => addr,
      I1 => \ctrl_out[ack]\,
      I2 => p_1_in,
      I3 => \^q\(1),
      I4 => rep_reg_n_0,
      I5 => p_0_in,
      O => \addr[6]_i_1_n_0\
    );
\addr[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFF1400"
    )
        port map (
      I0 => rep_reg_n_0,
      I1 => \addr[6]_i_3_n_0\,
      I2 => \^addr_reg[6]_0\(6),
      I3 => \addr1__0\,
      I4 => D(6),
      O => \addr[6]_i_2_n_0\
    );
\addr[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^addr_reg[6]_0\(5),
      I1 => \^addr_reg[6]_0\(3),
      I2 => \^addr_reg[6]_0\(1),
      I3 => \^addr_reg[6]_0\(0),
      I4 => \^addr_reg[6]_0\(2),
      I5 => \^addr_reg[6]_0\(4),
      O => \addr[6]_i_3_n_0\
    );
\addr[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(1),
      I1 => p_1_in,
      I2 => \ctrl_out[ack]\,
      O => \addr1__0\
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \addr[6]_i_1_n_0\,
      D => \addr[0]_i_1_n_0\,
      Q => \^addr_reg[6]_0\(0),
      R => '0'
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \addr[6]_i_1_n_0\,
      D => \addr[1]_i_1_n_0\,
      Q => \^addr_reg[6]_0\(1),
      R => '0'
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \addr[6]_i_1_n_0\,
      D => \addr[2]_i_1_n_0\,
      Q => \^addr_reg[6]_0\(2),
      R => '0'
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \addr[6]_i_1_n_0\,
      D => \addr[3]_i_1_n_0\,
      Q => \^addr_reg[6]_0\(3),
      R => '0'
    );
\addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \addr[6]_i_1_n_0\,
      D => \addr[4]_i_1_n_0\,
      Q => \^addr_reg[6]_0\(4),
      R => '0'
    );
\addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \addr[6]_i_1_n_0\,
      D => \addr[5]_i_1_n_0\,
      Q => \^addr_reg[6]_0\(5),
      R => '0'
    );
\addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \addr[6]_i_1_n_0\,
      D => \addr[6]_i_2_n_0\,
      Q => \^addr_reg[6]_0\(6),
      R => '0'
    );
\err_i_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CAA"
    )
        port map (
      I0 => \acmdw_tx[valid]\,
      I1 => \acmdr[rdy]\,
      I2 => sel,
      I3 => \FSM_onehot_state_reg[0]_0\,
      O => \p1__0_1\
    );
err_i_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_0\,
      I1 => \acmdw_tx[valid]\,
      I2 => \^acmdw_tx[last]\,
      O => \rxdone__0\
    );
last_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_onehot_state[9]_i_1_n_0\,
      D => \acmdw_rx[last]\,
      Q => last,
      R => '0'
    );
\lctr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => D(0),
      I1 => p_0_in,
      I2 => \lctr_reg_n_0_[0]\,
      O => \lctr[0]_i_1_n_0\
    );
\lctr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => D(1),
      I1 => p_0_in,
      I2 => \lctr_reg_n_0_[0]\,
      I3 => \lctr_reg_n_0_[1]\,
      O => \lctr[1]_i_1_n_0\
    );
\lctr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => D(2),
      I1 => p_0_in,
      I2 => \lctr_reg_n_0_[1]\,
      I3 => \lctr_reg_n_0_[0]\,
      I4 => \lctr_reg_n_0_[2]\,
      O => \lctr[2]_i_1_n_0\
    );
\lctr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => D(3),
      I1 => p_0_in,
      I2 => \lctr_reg_n_0_[2]\,
      I3 => \lctr_reg_n_0_[0]\,
      I4 => \lctr_reg_n_0_[1]\,
      I5 => \lctr_reg_n_0_[3]\,
      O => \lctr[3]_i_1_n_0\
    );
\lctr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => D(4),
      I1 => p_0_in,
      I2 => \lctr[5]_i_3_n_0\,
      I3 => \lctr_reg_n_0_[4]\,
      O => \lctr[4]_i_1_n_0\
    );
\lctr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEA"
    )
        port map (
      I0 => p_0_in,
      I1 => \ctrl_out[ack]\,
      I2 => p_1_in,
      I3 => \^q\(1),
      O => lctr
    );
\lctr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => D(5),
      I1 => p_0_in,
      I2 => \lctr_reg_n_0_[4]\,
      I3 => \lctr[5]_i_3_n_0\,
      I4 => \lctr_reg_n_0_[5]\,
      O => \lctr[5]_i_2_n_0\
    );
\lctr[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \lctr_reg_n_0_[2]\,
      I1 => \lctr_reg_n_0_[0]\,
      I2 => \lctr_reg_n_0_[1]\,
      I3 => \lctr_reg_n_0_[3]\,
      O => \lctr[5]_i_3_n_0\
    );
\lctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => lctr,
      D => \lctr[0]_i_1_n_0\,
      Q => \lctr_reg_n_0_[0]\,
      R => '0'
    );
\lctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => lctr,
      D => \lctr[1]_i_1_n_0\,
      Q => \lctr_reg_n_0_[1]\,
      R => '0'
    );
\lctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => lctr,
      D => \lctr[2]_i_1_n_0\,
      Q => \lctr_reg_n_0_[2]\,
      R => '0'
    );
\lctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => lctr,
      D => \lctr[3]_i_1_n_0\,
      Q => \lctr_reg_n_0_[3]\,
      R => '0'
    );
\lctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => lctr,
      D => \lctr[4]_i_1_n_0\,
      Q => \lctr_reg_n_0_[4]\,
      R => '0'
    );
\lctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => lctr,
      D => \lctr[5]_i_2_n_0\,
      Q => \lctr_reg_n_0_[5]\,
      R => '0'
    );
\p[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAA8A8A8"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_1\,
      I1 => s_i_5_n_0,
      I2 => paddr_reg0,
      I3 => \ctrl_out[ack]\,
      I4 => \^q\(1),
      I5 => wen,
      O => \p1__0\
    );
\paddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => paddr_reg0,
      D => D(0),
      Q => sel0(0),
      R => '0'
    );
\paddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => D(2),
      Q => sel0(10),
      R => '0'
    );
\paddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => D(3),
      Q => sel0(11),
      R => '0'
    );
\paddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => D(4),
      Q => sel0(12),
      R => '0'
    );
\paddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => D(5),
      Q => sel0(13),
      R => '0'
    );
\paddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => D(6),
      Q => sel0(14),
      R => '0'
    );
\paddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => D(7),
      Q => sel0(15),
      R => '0'
    );
\paddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => paddr_reg0,
      D => D(1),
      Q => sel0(1),
      R => '0'
    );
\paddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => paddr_reg0,
      D => D(2),
      Q => sel0(2),
      R => '0'
    );
\paddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => paddr_reg0,
      D => D(3),
      Q => sel0(3),
      R => '0'
    );
\paddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => paddr_reg0,
      D => D(4),
      Q => sel0(4),
      R => '0'
    );
\paddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => paddr_reg0,
      D => D(5),
      Q => sel0(5),
      R => '0'
    );
\paddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => paddr_reg0,
      D => D(6),
      Q => sel0(6),
      R => '0'
    );
\paddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => paddr_reg0,
      D => D(7),
      Q => sel0(7),
      R => '0'
    );
\paddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => D(0),
      Q => sel0(8),
      R => '0'
    );
\paddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => D(1),
      Q => sel0(9),
      R => '0'
    );
ram_reg_0_31_0_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => \ctrl_out[d]\(0),
      I3 => p_3_in,
      I4 => D(0),
      O => \^d\(0)
    );
ram_reg_0_31_0_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \acmdw_tx[valid]\,
      I1 => \FSM_onehot_state_reg[0]_0\,
      O => wen_0
    );
ram_reg_0_31_0_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00000000"
    )
        port map (
      I0 => sel0(15),
      I1 => sel0(14),
      I2 => sel0(13),
      I3 => sel0(12),
      I4 => ram_reg_0_31_0_0_i_4_n_0,
      I5 => \tx_o[valid]11_in\,
      O => \acmdw_tx[valid]\
    );
ram_reg_0_31_0_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => sel0(11),
      I1 => sel0(10),
      I2 => sel0(9),
      I3 => ram_reg_0_31_0_0_i_6_n_0,
      O => ram_reg_0_31_0_0_i_4_n_0
    );
ram_reg_0_31_0_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_3_in,
      I2 => p_2_in,
      I3 => p_1_in0_in,
      I4 => p_1_in,
      I5 => \ctrl_out[ack]\,
      O => \tx_o[valid]11_in\
    );
ram_reg_0_31_0_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(7),
      I2 => sel0(6),
      I3 => ram_reg_0_31_0_0_i_7_n_0,
      O => ram_reg_0_31_0_0_i_6_n_0
    );
ram_reg_0_31_0_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(4),
      I2 => sel0(3),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => ram_reg_0_31_0_0_i_7_n_0
    );
ram_reg_0_31_1_1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => \ctrl_out[d]\(1),
      I3 => p_3_in,
      I4 => D(1),
      O => \^d\(1)
    );
ram_reg_0_31_2_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => \ctrl_out[d]\(2),
      I3 => p_3_in,
      I4 => D(2),
      O => \^d\(2)
    );
ram_reg_0_31_3_3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => \ctrl_out[d]\(3),
      I3 => p_3_in,
      I4 => D(3),
      O => \^d\(3)
    );
ram_reg_0_31_4_4_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => \ctrl_out[d]\(4),
      I3 => p_3_in,
      I4 => D(4),
      O => \^d\(4)
    );
ram_reg_0_31_5_5_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => \ctrl_out[d]\(5),
      I3 => p_3_in,
      I4 => D(5),
      O => \^d\(5)
    );
ram_reg_0_31_6_6_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => \ctrl_out[d]\(6),
      I3 => p_3_in,
      I4 => D(6),
      O => \^d\(6)
    );
ram_reg_0_31_7_7_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_2_in,
      I2 => \ctrl_out[d]\(7),
      I3 => p_3_in,
      I4 => D(7),
      O => \^d\(7)
    );
\ram_reg_0_31_8_8_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => p_1_in,
      I1 => last,
      I2 => state1,
      I3 => \ctrl_out[ack]\,
      I4 => p_1_in0_in,
      O => \^acmdw_tx[last]\
    );
\ram_reg_0_31_8_8_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \lctr_reg_n_0_[5]\,
      I1 => \lctr_reg_n_0_[4]\,
      I2 => \lctr_reg_n_0_[1]\,
      I3 => \lctr_reg_n_0_[0]\,
      I4 => \lctr_reg_n_0_[3]\,
      I5 => \lctr_reg_n_0_[2]\,
      O => state1
    );
regfile_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in,
      I1 => \^q\(1),
      O => \ctrl_in[stb]\
    );
rep_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_0_in,
      D => D(7),
      Q => rep_reg_n_0,
      R => '0'
    );
rw_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => addr,
      D => D(7),
      Q => rw,
      R => '0'
    );
\s_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F8F8F8"
    )
        port map (
      I0 => \^acmdw_tx[last]\,
      I1 => \acmdw_tx[valid]\,
      I2 => \FSM_onehot_state_reg[0]_0\,
      I3 => \ren__0\,
      I4 => s_reg(0),
      I5 => trst,
      O => s0
    );
s_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8000000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \ctrl_out[ack]\,
      I2 => paddr_reg0,
      I3 => s_i_5_n_0,
      I4 => \FSM_onehot_state_reg[0]_1\,
      I5 => \acmdw_rx[last]\,
      O => \txdone__0\
    );
s_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => addr,
      I1 => p_0_in,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => p_3_in,
      O => s_i_5_n_0
    );
\tctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tctr_reg(0),
      O => \plusOp__3\(0)
    );
\tctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tctr_reg(0),
      I1 => tctr_reg(1),
      O => \plusOp__3\(1)
    );
\tctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tctr_reg(1),
      I1 => tctr_reg(0),
      I2 => tctr_reg(2),
      O => \tctr[2]_i_1_n_0\
    );
\tctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => tctr_reg(0),
      I1 => tctr_reg(1),
      I2 => tctr_reg(2),
      I3 => tctr_reg(3),
      O => \plusOp__3\(3)
    );
\tctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => tctr_reg(2),
      I1 => tctr_reg(1),
      I2 => tctr_reg(0),
      I3 => tctr_reg(3),
      I4 => tctr_reg(4),
      O => \plusOp__3\(4)
    );
\tctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => tctr_reg(3),
      I1 => tctr_reg(0),
      I2 => tctr_reg(1),
      I3 => tctr_reg(2),
      I4 => tctr_reg(4),
      I5 => tctr_reg(5),
      O => \plusOp__3\(5)
    );
\tctr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => tctr_reg(4),
      I1 => tctr_reg(2),
      I2 => \tctr[6]_i_2_n_0\,
      I3 => tctr_reg(3),
      I4 => tctr_reg(5),
      I5 => tctr_reg(6),
      O => \plusOp__3\(6)
    );
\tctr[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => tctr_reg(0),
      I1 => tctr_reg(1),
      O => \tctr[6]_i_2_n_0\
    );
\tctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \ctrl_out[ack]\,
      I1 => \^q\(1),
      I2 => p_1_in,
      O => \tctr[7]_i_1_n_0\
    );
\tctr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \tctr[7]_i_3_n_0\,
      I1 => tctr_reg(6),
      I2 => tctr_reg(7),
      O => \plusOp__3\(7)
    );
\tctr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => tctr_reg(5),
      I1 => tctr_reg(3),
      I2 => tctr_reg(0),
      I3 => tctr_reg(1),
      I4 => tctr_reg(2),
      I5 => tctr_reg(4),
      O => \tctr[7]_i_3_n_0\
    );
\tctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \plusOp__3\(0),
      Q => tctr_reg(0),
      R => \tctr[7]_i_1_n_0\
    );
\tctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \plusOp__3\(1),
      Q => tctr_reg(1),
      R => \tctr[7]_i_1_n_0\
    );
\tctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \tctr[2]_i_1_n_0\,
      Q => tctr_reg(2),
      R => \tctr[7]_i_1_n_0\
    );
\tctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \plusOp__3\(3),
      Q => tctr_reg(3),
      R => \tctr[7]_i_1_n_0\
    );
\tctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \plusOp__3\(4),
      Q => tctr_reg(4),
      R => \tctr[7]_i_1_n_0\
    );
\tctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \plusOp__3\(5),
      Q => tctr_reg(5),
      R => \tctr[7]_i_1_n_0\
    );
\tctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \plusOp__3\(6),
      Q => tctr_reg(6),
      R => \tctr[7]_i_1_n_0\
    );
\tctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \plusOp__3\(7),
      Q => tctr_reg(7),
      R => \tctr[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_ep_tstamp is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    CLK : in STD_LOGIC;
    trst : in STD_LOGIC;
    \ctr_reg[63]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s : in STD_LOGIC;
    ts_stb : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_tstamp : entity is "pdts_ep_tstamp";
end design_1_pdts_endpoint_wrapper_0_0_pdts_ep_tstamp;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_tstamp is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ctr[15]_i_2_n_0\ : STD_LOGIC;
  signal \ctr[15]_i_3_n_0\ : STD_LOGIC;
  signal \ctr[15]_i_4_n_0\ : STD_LOGIC;
  signal \ctr[15]_i_5_n_0\ : STD_LOGIC;
  signal \ctr[15]_i_6_n_0\ : STD_LOGIC;
  signal \ctr[15]_i_7_n_0\ : STD_LOGIC;
  signal \ctr[15]_i_8_n_0\ : STD_LOGIC;
  signal \ctr[15]_i_9_n_0\ : STD_LOGIC;
  signal \ctr[23]_i_2_n_0\ : STD_LOGIC;
  signal \ctr[23]_i_3_n_0\ : STD_LOGIC;
  signal \ctr[23]_i_4_n_0\ : STD_LOGIC;
  signal \ctr[23]_i_5_n_0\ : STD_LOGIC;
  signal \ctr[23]_i_6_n_0\ : STD_LOGIC;
  signal \ctr[23]_i_7_n_0\ : STD_LOGIC;
  signal \ctr[23]_i_8_n_0\ : STD_LOGIC;
  signal \ctr[23]_i_9_n_0\ : STD_LOGIC;
  signal \ctr[31]_i_2_n_0\ : STD_LOGIC;
  signal \ctr[31]_i_3_n_0\ : STD_LOGIC;
  signal \ctr[31]_i_4_n_0\ : STD_LOGIC;
  signal \ctr[31]_i_5_n_0\ : STD_LOGIC;
  signal \ctr[31]_i_6_n_0\ : STD_LOGIC;
  signal \ctr[31]_i_7_n_0\ : STD_LOGIC;
  signal \ctr[31]_i_8_n_0\ : STD_LOGIC;
  signal \ctr[31]_i_9_n_0\ : STD_LOGIC;
  signal \ctr[39]_i_2_n_0\ : STD_LOGIC;
  signal \ctr[39]_i_3_n_0\ : STD_LOGIC;
  signal \ctr[39]_i_4_n_0\ : STD_LOGIC;
  signal \ctr[39]_i_5_n_0\ : STD_LOGIC;
  signal \ctr[39]_i_6_n_0\ : STD_LOGIC;
  signal \ctr[39]_i_7_n_0\ : STD_LOGIC;
  signal \ctr[39]_i_8_n_0\ : STD_LOGIC;
  signal \ctr[39]_i_9_n_0\ : STD_LOGIC;
  signal \ctr[47]_i_2_n_0\ : STD_LOGIC;
  signal \ctr[47]_i_3_n_0\ : STD_LOGIC;
  signal \ctr[47]_i_4_n_0\ : STD_LOGIC;
  signal \ctr[47]_i_5_n_0\ : STD_LOGIC;
  signal \ctr[47]_i_6_n_0\ : STD_LOGIC;
  signal \ctr[47]_i_7_n_0\ : STD_LOGIC;
  signal \ctr[47]_i_8_n_0\ : STD_LOGIC;
  signal \ctr[47]_i_9_n_0\ : STD_LOGIC;
  signal \ctr[55]_i_2_n_0\ : STD_LOGIC;
  signal \ctr[55]_i_3_n_0\ : STD_LOGIC;
  signal \ctr[55]_i_4_n_0\ : STD_LOGIC;
  signal \ctr[55]_i_5_n_0\ : STD_LOGIC;
  signal \ctr[55]_i_6_n_0\ : STD_LOGIC;
  signal \ctr[55]_i_7_n_0\ : STD_LOGIC;
  signal \ctr[55]_i_8_n_0\ : STD_LOGIC;
  signal \ctr[55]_i_9_n_0\ : STD_LOGIC;
  signal \ctr[63]_i_10_n_0\ : STD_LOGIC;
  signal \ctr[63]_i_11_n_0\ : STD_LOGIC;
  signal \ctr[63]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[63]_i_4_n_0\ : STD_LOGIC;
  signal \ctr[63]_i_5_n_0\ : STD_LOGIC;
  signal \ctr[63]_i_6_n_0\ : STD_LOGIC;
  signal \ctr[63]_i_7_n_0\ : STD_LOGIC;
  signal \ctr[63]_i_8_n_0\ : STD_LOGIC;
  signal \ctr[63]_i_9_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_3_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_4_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_5_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_6_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_7_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_8_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_9_n_0\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \ctr_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \ctr_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_10\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_11\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_12\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_13\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_14\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_15\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_8\ : STD_LOGIC;
  signal \ctr_reg[31]_i_1_n_9\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_10\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_11\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_12\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_13\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_14\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_15\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_8\ : STD_LOGIC;
  signal \ctr_reg[39]_i_1_n_9\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_10\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_11\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_12\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_13\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_14\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_15\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_8\ : STD_LOGIC;
  signal \ctr_reg[47]_i_1_n_9\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_10\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_11\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_12\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_13\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_14\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_15\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_8\ : STD_LOGIC;
  signal \ctr_reg[55]_i_1_n_9\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_1\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_10\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_11\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_12\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_13\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_14\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_15\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_2\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_3\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_4\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_5\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_6\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_7\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_8\ : STD_LOGIC;
  signal \ctr_reg[63]_i_2_n_9\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \ctr_reg[7]_i_1_n_9\ : STD_LOGIC;
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
  signal \^tstamp\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal valid : STD_LOGIC;
  signal valid0 : STD_LOGIC;
  signal \NLW_ctr_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_lock1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_lock1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_lock1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_lock1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \ctr_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \ctr_reg[23]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \ctr_reg[31]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \ctr_reg[39]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \ctr_reg[47]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \ctr_reg[55]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \ctr_reg[63]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \ctr_reg[7]_i_1\ : label is 16;
begin
  D(0) <= \^d\(0);
  tstamp(63 downto 0) <= \^tstamp\(63 downto 0);
\ctr[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(15),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(15),
      O => \ctr[15]_i_2_n_0\
    );
\ctr[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(14),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(14),
      O => \ctr[15]_i_3_n_0\
    );
\ctr[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(13),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(13),
      O => \ctr[15]_i_4_n_0\
    );
\ctr[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(12),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(12),
      O => \ctr[15]_i_5_n_0\
    );
\ctr[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(11),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(11),
      O => \ctr[15]_i_6_n_0\
    );
\ctr[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(10),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(10),
      O => \ctr[15]_i_7_n_0\
    );
\ctr[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(9),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(9),
      O => \ctr[15]_i_8_n_0\
    );
\ctr[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(8),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(8),
      O => \ctr[15]_i_9_n_0\
    );
\ctr[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(23),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(23),
      O => \ctr[23]_i_2_n_0\
    );
\ctr[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(22),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(22),
      O => \ctr[23]_i_3_n_0\
    );
\ctr[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(21),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(21),
      O => \ctr[23]_i_4_n_0\
    );
\ctr[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(20),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(20),
      O => \ctr[23]_i_5_n_0\
    );
\ctr[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(19),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(19),
      O => \ctr[23]_i_6_n_0\
    );
\ctr[23]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(18),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(18),
      O => \ctr[23]_i_7_n_0\
    );
\ctr[23]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(17),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(17),
      O => \ctr[23]_i_8_n_0\
    );
\ctr[23]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(16),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(16),
      O => \ctr[23]_i_9_n_0\
    );
\ctr[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(31),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(31),
      O => \ctr[31]_i_2_n_0\
    );
\ctr[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(30),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(30),
      O => \ctr[31]_i_3_n_0\
    );
\ctr[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(29),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(29),
      O => \ctr[31]_i_4_n_0\
    );
\ctr[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(28),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(28),
      O => \ctr[31]_i_5_n_0\
    );
\ctr[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(27),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(27),
      O => \ctr[31]_i_6_n_0\
    );
\ctr[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(26),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(26),
      O => \ctr[31]_i_7_n_0\
    );
\ctr[31]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(25),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(25),
      O => \ctr[31]_i_8_n_0\
    );
\ctr[31]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(24),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(24),
      O => \ctr[31]_i_9_n_0\
    );
\ctr[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(39),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(39),
      O => \ctr[39]_i_2_n_0\
    );
\ctr[39]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(38),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(38),
      O => \ctr[39]_i_3_n_0\
    );
\ctr[39]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(37),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(37),
      O => \ctr[39]_i_4_n_0\
    );
\ctr[39]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(36),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(36),
      O => \ctr[39]_i_5_n_0\
    );
\ctr[39]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(35),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(35),
      O => \ctr[39]_i_6_n_0\
    );
\ctr[39]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(34),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(34),
      O => \ctr[39]_i_7_n_0\
    );
\ctr[39]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(33),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(33),
      O => \ctr[39]_i_8_n_0\
    );
\ctr[39]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(32),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(32),
      O => \ctr[39]_i_9_n_0\
    );
\ctr[47]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(47),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(47),
      O => \ctr[47]_i_2_n_0\
    );
\ctr[47]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(46),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(46),
      O => \ctr[47]_i_3_n_0\
    );
\ctr[47]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(45),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(45),
      O => \ctr[47]_i_4_n_0\
    );
\ctr[47]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(44),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(44),
      O => \ctr[47]_i_5_n_0\
    );
\ctr[47]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(43),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(43),
      O => \ctr[47]_i_6_n_0\
    );
\ctr[47]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(42),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(42),
      O => \ctr[47]_i_7_n_0\
    );
\ctr[47]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(41),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(41),
      O => \ctr[47]_i_8_n_0\
    );
\ctr[47]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(40),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(40),
      O => \ctr[47]_i_9_n_0\
    );
\ctr[55]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(55),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(55),
      O => \ctr[55]_i_2_n_0\
    );
\ctr[55]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(54),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(54),
      O => \ctr[55]_i_3_n_0\
    );
\ctr[55]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(53),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(53),
      O => \ctr[55]_i_4_n_0\
    );
\ctr[55]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(52),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(52),
      O => \ctr[55]_i_5_n_0\
    );
\ctr[55]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(51),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(51),
      O => \ctr[55]_i_6_n_0\
    );
\ctr[55]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(50),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(50),
      O => \ctr[55]_i_7_n_0\
    );
\ctr[55]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(49),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(49),
      O => \ctr[55]_i_8_n_0\
    );
\ctr[55]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(48),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(48),
      O => \ctr[55]_i_9_n_0\
    );
\ctr[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^d\(0),
      I1 => valid,
      I2 => s,
      O => \ctr[63]_i_1_n_0\
    );
\ctr[63]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(57),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(57),
      O => \ctr[63]_i_10_n_0\
    );
\ctr[63]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(56),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(56),
      O => \ctr[63]_i_11_n_0\
    );
\ctr[63]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(63),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(63),
      O => \ctr[63]_i_4_n_0\
    );
\ctr[63]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(62),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(62),
      O => \ctr[63]_i_5_n_0\
    );
\ctr[63]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(61),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(61),
      O => \ctr[63]_i_6_n_0\
    );
\ctr[63]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(60),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(60),
      O => \ctr[63]_i_7_n_0\
    );
\ctr[63]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(59),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(59),
      O => \ctr[63]_i_8_n_0\
    );
\ctr[63]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(58),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(58),
      O => \ctr[63]_i_9_n_0\
    );
\ctr[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(7),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(7),
      O => \ctr[7]_i_2__0_n_0\
    );
\ctr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(6),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(6),
      O => \ctr[7]_i_3_n_0\
    );
\ctr[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(5),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(5),
      O => \ctr[7]_i_4_n_0\
    );
\ctr[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(4),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(4),
      O => \ctr[7]_i_5_n_0\
    );
\ctr[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(3),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(3),
      O => \ctr[7]_i_6_n_0\
    );
\ctr[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(2),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(2),
      O => \ctr[7]_i_7_n_0\
    );
\ctr[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tstamp\(1),
      I1 => \^d\(0),
      I2 => \ctr_reg[63]_0\(1),
      O => \ctr[7]_i_8_n_0\
    );
\ctr[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \ctr_reg[63]_0\(0),
      I1 => \^d\(0),
      I2 => \^tstamp\(0),
      O => \ctr[7]_i_9_n_0\
    );
\ctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[7]_i_1_n_15\,
      Q => \^tstamp\(0),
      R => trst
    );
\ctr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[15]_i_1_n_13\,
      Q => \^tstamp\(10),
      R => trst
    );
\ctr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[15]_i_1_n_12\,
      Q => \^tstamp\(11),
      R => trst
    );
\ctr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[15]_i_1_n_11\,
      Q => \^tstamp\(12),
      R => trst
    );
\ctr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[15]_i_1_n_10\,
      Q => \^tstamp\(13),
      R => trst
    );
\ctr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[15]_i_1_n_9\,
      Q => \^tstamp\(14),
      R => trst
    );
\ctr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[15]_i_1_n_8\,
      Q => \^tstamp\(15),
      R => trst
    );
\ctr_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ctr_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \ctr_reg[15]_i_1_n_0\,
      CO(6) => \ctr_reg[15]_i_1_n_1\,
      CO(5) => \ctr_reg[15]_i_1_n_2\,
      CO(4) => \ctr_reg[15]_i_1_n_3\,
      CO(3) => \ctr_reg[15]_i_1_n_4\,
      CO(2) => \ctr_reg[15]_i_1_n_5\,
      CO(1) => \ctr_reg[15]_i_1_n_6\,
      CO(0) => \ctr_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \ctr_reg[15]_i_1_n_8\,
      O(6) => \ctr_reg[15]_i_1_n_9\,
      O(5) => \ctr_reg[15]_i_1_n_10\,
      O(4) => \ctr_reg[15]_i_1_n_11\,
      O(3) => \ctr_reg[15]_i_1_n_12\,
      O(2) => \ctr_reg[15]_i_1_n_13\,
      O(1) => \ctr_reg[15]_i_1_n_14\,
      O(0) => \ctr_reg[15]_i_1_n_15\,
      S(7) => \ctr[15]_i_2_n_0\,
      S(6) => \ctr[15]_i_3_n_0\,
      S(5) => \ctr[15]_i_4_n_0\,
      S(4) => \ctr[15]_i_5_n_0\,
      S(3) => \ctr[15]_i_6_n_0\,
      S(2) => \ctr[15]_i_7_n_0\,
      S(1) => \ctr[15]_i_8_n_0\,
      S(0) => \ctr[15]_i_9_n_0\
    );
\ctr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[23]_i_1_n_15\,
      Q => \^tstamp\(16),
      R => trst
    );
\ctr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[23]_i_1_n_14\,
      Q => \^tstamp\(17),
      R => trst
    );
\ctr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[23]_i_1_n_13\,
      Q => \^tstamp\(18),
      R => trst
    );
\ctr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[23]_i_1_n_12\,
      Q => \^tstamp\(19),
      R => trst
    );
\ctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[7]_i_1_n_14\,
      Q => \^tstamp\(1),
      R => trst
    );
\ctr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[23]_i_1_n_11\,
      Q => \^tstamp\(20),
      R => trst
    );
\ctr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[23]_i_1_n_10\,
      Q => \^tstamp\(21),
      R => trst
    );
\ctr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[23]_i_1_n_9\,
      Q => \^tstamp\(22),
      R => trst
    );
\ctr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[23]_i_1_n_8\,
      Q => \^tstamp\(23),
      R => trst
    );
\ctr_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ctr_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \ctr_reg[23]_i_1_n_0\,
      CO(6) => \ctr_reg[23]_i_1_n_1\,
      CO(5) => \ctr_reg[23]_i_1_n_2\,
      CO(4) => \ctr_reg[23]_i_1_n_3\,
      CO(3) => \ctr_reg[23]_i_1_n_4\,
      CO(2) => \ctr_reg[23]_i_1_n_5\,
      CO(1) => \ctr_reg[23]_i_1_n_6\,
      CO(0) => \ctr_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \ctr_reg[23]_i_1_n_8\,
      O(6) => \ctr_reg[23]_i_1_n_9\,
      O(5) => \ctr_reg[23]_i_1_n_10\,
      O(4) => \ctr_reg[23]_i_1_n_11\,
      O(3) => \ctr_reg[23]_i_1_n_12\,
      O(2) => \ctr_reg[23]_i_1_n_13\,
      O(1) => \ctr_reg[23]_i_1_n_14\,
      O(0) => \ctr_reg[23]_i_1_n_15\,
      S(7) => \ctr[23]_i_2_n_0\,
      S(6) => \ctr[23]_i_3_n_0\,
      S(5) => \ctr[23]_i_4_n_0\,
      S(4) => \ctr[23]_i_5_n_0\,
      S(3) => \ctr[23]_i_6_n_0\,
      S(2) => \ctr[23]_i_7_n_0\,
      S(1) => \ctr[23]_i_8_n_0\,
      S(0) => \ctr[23]_i_9_n_0\
    );
\ctr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[31]_i_1_n_15\,
      Q => \^tstamp\(24),
      R => trst
    );
\ctr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[31]_i_1_n_14\,
      Q => \^tstamp\(25),
      R => trst
    );
\ctr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[31]_i_1_n_13\,
      Q => \^tstamp\(26),
      R => trst
    );
\ctr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[31]_i_1_n_12\,
      Q => \^tstamp\(27),
      R => trst
    );
\ctr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[31]_i_1_n_11\,
      Q => \^tstamp\(28),
      R => trst
    );
\ctr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[31]_i_1_n_10\,
      Q => \^tstamp\(29),
      R => trst
    );
\ctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[7]_i_1_n_13\,
      Q => \^tstamp\(2),
      R => trst
    );
\ctr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[31]_i_1_n_9\,
      Q => \^tstamp\(30),
      R => trst
    );
\ctr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[31]_i_1_n_8\,
      Q => \^tstamp\(31),
      R => trst
    );
\ctr_reg[31]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ctr_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \ctr_reg[31]_i_1_n_0\,
      CO(6) => \ctr_reg[31]_i_1_n_1\,
      CO(5) => \ctr_reg[31]_i_1_n_2\,
      CO(4) => \ctr_reg[31]_i_1_n_3\,
      CO(3) => \ctr_reg[31]_i_1_n_4\,
      CO(2) => \ctr_reg[31]_i_1_n_5\,
      CO(1) => \ctr_reg[31]_i_1_n_6\,
      CO(0) => \ctr_reg[31]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \ctr_reg[31]_i_1_n_8\,
      O(6) => \ctr_reg[31]_i_1_n_9\,
      O(5) => \ctr_reg[31]_i_1_n_10\,
      O(4) => \ctr_reg[31]_i_1_n_11\,
      O(3) => \ctr_reg[31]_i_1_n_12\,
      O(2) => \ctr_reg[31]_i_1_n_13\,
      O(1) => \ctr_reg[31]_i_1_n_14\,
      O(0) => \ctr_reg[31]_i_1_n_15\,
      S(7) => \ctr[31]_i_2_n_0\,
      S(6) => \ctr[31]_i_3_n_0\,
      S(5) => \ctr[31]_i_4_n_0\,
      S(4) => \ctr[31]_i_5_n_0\,
      S(3) => \ctr[31]_i_6_n_0\,
      S(2) => \ctr[31]_i_7_n_0\,
      S(1) => \ctr[31]_i_8_n_0\,
      S(0) => \ctr[31]_i_9_n_0\
    );
\ctr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[39]_i_1_n_15\,
      Q => \^tstamp\(32),
      R => trst
    );
\ctr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[39]_i_1_n_14\,
      Q => \^tstamp\(33),
      R => trst
    );
\ctr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[39]_i_1_n_13\,
      Q => \^tstamp\(34),
      R => trst
    );
\ctr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[39]_i_1_n_12\,
      Q => \^tstamp\(35),
      R => trst
    );
\ctr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[39]_i_1_n_11\,
      Q => \^tstamp\(36),
      R => trst
    );
\ctr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[39]_i_1_n_10\,
      Q => \^tstamp\(37),
      R => trst
    );
\ctr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[39]_i_1_n_9\,
      Q => \^tstamp\(38),
      R => trst
    );
\ctr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[39]_i_1_n_8\,
      Q => \^tstamp\(39),
      R => trst
    );
\ctr_reg[39]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ctr_reg[31]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \ctr_reg[39]_i_1_n_0\,
      CO(6) => \ctr_reg[39]_i_1_n_1\,
      CO(5) => \ctr_reg[39]_i_1_n_2\,
      CO(4) => \ctr_reg[39]_i_1_n_3\,
      CO(3) => \ctr_reg[39]_i_1_n_4\,
      CO(2) => \ctr_reg[39]_i_1_n_5\,
      CO(1) => \ctr_reg[39]_i_1_n_6\,
      CO(0) => \ctr_reg[39]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \ctr_reg[39]_i_1_n_8\,
      O(6) => \ctr_reg[39]_i_1_n_9\,
      O(5) => \ctr_reg[39]_i_1_n_10\,
      O(4) => \ctr_reg[39]_i_1_n_11\,
      O(3) => \ctr_reg[39]_i_1_n_12\,
      O(2) => \ctr_reg[39]_i_1_n_13\,
      O(1) => \ctr_reg[39]_i_1_n_14\,
      O(0) => \ctr_reg[39]_i_1_n_15\,
      S(7) => \ctr[39]_i_2_n_0\,
      S(6) => \ctr[39]_i_3_n_0\,
      S(5) => \ctr[39]_i_4_n_0\,
      S(4) => \ctr[39]_i_5_n_0\,
      S(3) => \ctr[39]_i_6_n_0\,
      S(2) => \ctr[39]_i_7_n_0\,
      S(1) => \ctr[39]_i_8_n_0\,
      S(0) => \ctr[39]_i_9_n_0\
    );
\ctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[7]_i_1_n_12\,
      Q => \^tstamp\(3),
      R => trst
    );
\ctr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[47]_i_1_n_15\,
      Q => \^tstamp\(40),
      R => trst
    );
\ctr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[47]_i_1_n_14\,
      Q => \^tstamp\(41),
      R => trst
    );
\ctr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[47]_i_1_n_13\,
      Q => \^tstamp\(42),
      R => trst
    );
\ctr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[47]_i_1_n_12\,
      Q => \^tstamp\(43),
      R => trst
    );
\ctr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[47]_i_1_n_11\,
      Q => \^tstamp\(44),
      R => trst
    );
\ctr_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[47]_i_1_n_10\,
      Q => \^tstamp\(45),
      R => trst
    );
\ctr_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[47]_i_1_n_9\,
      Q => \^tstamp\(46),
      R => trst
    );
\ctr_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[47]_i_1_n_8\,
      Q => \^tstamp\(47),
      R => trst
    );
\ctr_reg[47]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ctr_reg[39]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \ctr_reg[47]_i_1_n_0\,
      CO(6) => \ctr_reg[47]_i_1_n_1\,
      CO(5) => \ctr_reg[47]_i_1_n_2\,
      CO(4) => \ctr_reg[47]_i_1_n_3\,
      CO(3) => \ctr_reg[47]_i_1_n_4\,
      CO(2) => \ctr_reg[47]_i_1_n_5\,
      CO(1) => \ctr_reg[47]_i_1_n_6\,
      CO(0) => \ctr_reg[47]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \ctr_reg[47]_i_1_n_8\,
      O(6) => \ctr_reg[47]_i_1_n_9\,
      O(5) => \ctr_reg[47]_i_1_n_10\,
      O(4) => \ctr_reg[47]_i_1_n_11\,
      O(3) => \ctr_reg[47]_i_1_n_12\,
      O(2) => \ctr_reg[47]_i_1_n_13\,
      O(1) => \ctr_reg[47]_i_1_n_14\,
      O(0) => \ctr_reg[47]_i_1_n_15\,
      S(7) => \ctr[47]_i_2_n_0\,
      S(6) => \ctr[47]_i_3_n_0\,
      S(5) => \ctr[47]_i_4_n_0\,
      S(4) => \ctr[47]_i_5_n_0\,
      S(3) => \ctr[47]_i_6_n_0\,
      S(2) => \ctr[47]_i_7_n_0\,
      S(1) => \ctr[47]_i_8_n_0\,
      S(0) => \ctr[47]_i_9_n_0\
    );
\ctr_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[55]_i_1_n_15\,
      Q => \^tstamp\(48),
      R => trst
    );
\ctr_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[55]_i_1_n_14\,
      Q => \^tstamp\(49),
      R => trst
    );
\ctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[7]_i_1_n_11\,
      Q => \^tstamp\(4),
      R => trst
    );
\ctr_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[55]_i_1_n_13\,
      Q => \^tstamp\(50),
      R => trst
    );
\ctr_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[55]_i_1_n_12\,
      Q => \^tstamp\(51),
      R => trst
    );
\ctr_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[55]_i_1_n_11\,
      Q => \^tstamp\(52),
      R => trst
    );
\ctr_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[55]_i_1_n_10\,
      Q => \^tstamp\(53),
      R => trst
    );
\ctr_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[55]_i_1_n_9\,
      Q => \^tstamp\(54),
      R => trst
    );
\ctr_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[55]_i_1_n_8\,
      Q => \^tstamp\(55),
      R => trst
    );
\ctr_reg[55]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \ctr_reg[47]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \ctr_reg[55]_i_1_n_0\,
      CO(6) => \ctr_reg[55]_i_1_n_1\,
      CO(5) => \ctr_reg[55]_i_1_n_2\,
      CO(4) => \ctr_reg[55]_i_1_n_3\,
      CO(3) => \ctr_reg[55]_i_1_n_4\,
      CO(2) => \ctr_reg[55]_i_1_n_5\,
      CO(1) => \ctr_reg[55]_i_1_n_6\,
      CO(0) => \ctr_reg[55]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \ctr_reg[55]_i_1_n_8\,
      O(6) => \ctr_reg[55]_i_1_n_9\,
      O(5) => \ctr_reg[55]_i_1_n_10\,
      O(4) => \ctr_reg[55]_i_1_n_11\,
      O(3) => \ctr_reg[55]_i_1_n_12\,
      O(2) => \ctr_reg[55]_i_1_n_13\,
      O(1) => \ctr_reg[55]_i_1_n_14\,
      O(0) => \ctr_reg[55]_i_1_n_15\,
      S(7) => \ctr[55]_i_2_n_0\,
      S(6) => \ctr[55]_i_3_n_0\,
      S(5) => \ctr[55]_i_4_n_0\,
      S(4) => \ctr[55]_i_5_n_0\,
      S(3) => \ctr[55]_i_6_n_0\,
      S(2) => \ctr[55]_i_7_n_0\,
      S(1) => \ctr[55]_i_8_n_0\,
      S(0) => \ctr[55]_i_9_n_0\
    );
\ctr_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[63]_i_2_n_15\,
      Q => \^tstamp\(56),
      R => trst
    );
\ctr_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[63]_i_2_n_14\,
      Q => \^tstamp\(57),
      R => trst
    );
\ctr_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[63]_i_2_n_13\,
      Q => \^tstamp\(58),
      R => trst
    );
\ctr_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[63]_i_2_n_12\,
      Q => \^tstamp\(59),
      R => trst
    );
\ctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[7]_i_1_n_10\,
      Q => \^tstamp\(5),
      R => trst
    );
\ctr_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[63]_i_2_n_11\,
      Q => \^tstamp\(60),
      R => trst
    );
\ctr_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[63]_i_2_n_10\,
      Q => \^tstamp\(61),
      R => trst
    );
\ctr_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[63]_i_2_n_9\,
      Q => \^tstamp\(62),
      R => trst
    );
\ctr_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[63]_i_2_n_8\,
      Q => \^tstamp\(63),
      R => trst
    );
\ctr_reg[63]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \ctr_reg[55]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_ctr_reg[63]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \ctr_reg[63]_i_2_n_1\,
      CO(5) => \ctr_reg[63]_i_2_n_2\,
      CO(4) => \ctr_reg[63]_i_2_n_3\,
      CO(3) => \ctr_reg[63]_i_2_n_4\,
      CO(2) => \ctr_reg[63]_i_2_n_5\,
      CO(1) => \ctr_reg[63]_i_2_n_6\,
      CO(0) => \ctr_reg[63]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \ctr_reg[63]_i_2_n_8\,
      O(6) => \ctr_reg[63]_i_2_n_9\,
      O(5) => \ctr_reg[63]_i_2_n_10\,
      O(4) => \ctr_reg[63]_i_2_n_11\,
      O(3) => \ctr_reg[63]_i_2_n_12\,
      O(2) => \ctr_reg[63]_i_2_n_13\,
      O(1) => \ctr_reg[63]_i_2_n_14\,
      O(0) => \ctr_reg[63]_i_2_n_15\,
      S(7) => \ctr[63]_i_4_n_0\,
      S(6) => \ctr[63]_i_5_n_0\,
      S(5) => \ctr[63]_i_6_n_0\,
      S(4) => \ctr[63]_i_7_n_0\,
      S(3) => \ctr[63]_i_8_n_0\,
      S(2) => \ctr[63]_i_9_n_0\,
      S(1) => \ctr[63]_i_10_n_0\,
      S(0) => \ctr[63]_i_11_n_0\
    );
\ctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[7]_i_1_n_9\,
      Q => \^tstamp\(6),
      R => trst
    );
\ctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[7]_i_1_n_8\,
      Q => \^tstamp\(7),
      R => trst
    );
\ctr_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \ctr_reg[7]_i_1_n_0\,
      CO(6) => \ctr_reg[7]_i_1_n_1\,
      CO(5) => \ctr_reg[7]_i_1_n_2\,
      CO(4) => \ctr_reg[7]_i_1_n_3\,
      CO(3) => \ctr_reg[7]_i_1_n_4\,
      CO(2) => \ctr_reg[7]_i_1_n_5\,
      CO(1) => \ctr_reg[7]_i_1_n_6\,
      CO(0) => \ctr_reg[7]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \ctr_reg[7]_i_1_n_8\,
      O(6) => \ctr_reg[7]_i_1_n_9\,
      O(5) => \ctr_reg[7]_i_1_n_10\,
      O(4) => \ctr_reg[7]_i_1_n_11\,
      O(3) => \ctr_reg[7]_i_1_n_12\,
      O(2) => \ctr_reg[7]_i_1_n_13\,
      O(1) => \ctr_reg[7]_i_1_n_14\,
      O(0) => \ctr_reg[7]_i_1_n_15\,
      S(7) => \ctr[7]_i_2__0_n_0\,
      S(6) => \ctr[7]_i_3_n_0\,
      S(5) => \ctr[7]_i_4_n_0\,
      S(4) => \ctr[7]_i_5_n_0\,
      S(3) => \ctr[7]_i_6_n_0\,
      S(2) => \ctr[7]_i_7_n_0\,
      S(1) => \ctr[7]_i_8_n_0\,
      S(0) => \ctr[7]_i_9_n_0\
    );
\ctr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[15]_i_1_n_15\,
      Q => \^tstamp\(8),
      R => trst
    );
\ctr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \ctr[63]_i_1_n_0\,
      D => \ctr_reg[15]_i_1_n_14\,
      Q => \^tstamp\(9),
      R => trst
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
      I1 => \ctr_reg[63]_0\(45),
      I2 => \ctr_reg[63]_0\(47),
      I3 => \^tstamp\(47),
      I4 => \ctr_reg[63]_0\(46),
      I5 => \^tstamp\(46),
      O => \lock1_carry__0_i_1_n_0\
    );
\lock1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(42),
      I1 => \ctr_reg[63]_0\(42),
      I2 => \ctr_reg[63]_0\(44),
      I3 => \^tstamp\(44),
      I4 => \ctr_reg[63]_0\(43),
      I5 => \^tstamp\(43),
      O => \lock1_carry__0_i_2_n_0\
    );
\lock1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(39),
      I1 => \ctr_reg[63]_0\(39),
      I2 => \ctr_reg[63]_0\(41),
      I3 => \^tstamp\(41),
      I4 => \ctr_reg[63]_0\(40),
      I5 => \^tstamp\(40),
      O => \lock1_carry__0_i_3_n_0\
    );
\lock1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(36),
      I1 => \ctr_reg[63]_0\(36),
      I2 => \ctr_reg[63]_0\(38),
      I3 => \^tstamp\(38),
      I4 => \ctr_reg[63]_0\(37),
      I5 => \^tstamp\(37),
      O => \lock1_carry__0_i_4_n_0\
    );
\lock1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(33),
      I1 => \ctr_reg[63]_0\(33),
      I2 => \ctr_reg[63]_0\(35),
      I3 => \^tstamp\(35),
      I4 => \ctr_reg[63]_0\(34),
      I5 => \^tstamp\(34),
      O => \lock1_carry__0_i_5_n_0\
    );
\lock1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(30),
      I1 => \ctr_reg[63]_0\(30),
      I2 => \ctr_reg[63]_0\(32),
      I3 => \^tstamp\(32),
      I4 => \ctr_reg[63]_0\(31),
      I5 => \^tstamp\(31),
      O => \lock1_carry__0_i_6_n_0\
    );
\lock1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(27),
      I1 => \ctr_reg[63]_0\(27),
      I2 => \ctr_reg[63]_0\(29),
      I3 => \^tstamp\(29),
      I4 => \ctr_reg[63]_0\(28),
      I5 => \^tstamp\(28),
      O => \lock1_carry__0_i_7_n_0\
    );
\lock1_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(24),
      I1 => \ctr_reg[63]_0\(24),
      I2 => \ctr_reg[63]_0\(26),
      I3 => \^tstamp\(26),
      I4 => \ctr_reg[63]_0\(25),
      I5 => \^tstamp\(25),
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
      I0 => \ctr_reg[63]_0\(63),
      I1 => \^tstamp\(63),
      O => \lock1_carry__1_i_1_n_0\
    );
\lock1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(60),
      I1 => \ctr_reg[63]_0\(60),
      I2 => \ctr_reg[63]_0\(62),
      I3 => \^tstamp\(62),
      I4 => \ctr_reg[63]_0\(61),
      I5 => \^tstamp\(61),
      O => \lock1_carry__1_i_2_n_0\
    );
\lock1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(57),
      I1 => \ctr_reg[63]_0\(57),
      I2 => \ctr_reg[63]_0\(59),
      I3 => \^tstamp\(59),
      I4 => \ctr_reg[63]_0\(58),
      I5 => \^tstamp\(58),
      O => \lock1_carry__1_i_3_n_0\
    );
\lock1_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(54),
      I1 => \ctr_reg[63]_0\(54),
      I2 => \ctr_reg[63]_0\(56),
      I3 => \^tstamp\(56),
      I4 => \ctr_reg[63]_0\(55),
      I5 => \^tstamp\(55),
      O => \lock1_carry__1_i_4_n_0\
    );
\lock1_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(51),
      I1 => \ctr_reg[63]_0\(51),
      I2 => \ctr_reg[63]_0\(53),
      I3 => \^tstamp\(53),
      I4 => \ctr_reg[63]_0\(52),
      I5 => \^tstamp\(52),
      O => \lock1_carry__1_i_5_n_0\
    );
\lock1_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(48),
      I1 => \ctr_reg[63]_0\(48),
      I2 => \ctr_reg[63]_0\(50),
      I3 => \^tstamp\(50),
      I4 => \ctr_reg[63]_0\(49),
      I5 => \^tstamp\(49),
      O => \lock1_carry__1_i_6_n_0\
    );
lock1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(21),
      I1 => \ctr_reg[63]_0\(21),
      I2 => \ctr_reg[63]_0\(23),
      I3 => \^tstamp\(23),
      I4 => \ctr_reg[63]_0\(22),
      I5 => \^tstamp\(22),
      O => lock1_carry_i_1_n_0
    );
lock1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(18),
      I1 => \ctr_reg[63]_0\(18),
      I2 => \ctr_reg[63]_0\(20),
      I3 => \^tstamp\(20),
      I4 => \ctr_reg[63]_0\(19),
      I5 => \^tstamp\(19),
      O => lock1_carry_i_2_n_0
    );
lock1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(15),
      I1 => \ctr_reg[63]_0\(15),
      I2 => \ctr_reg[63]_0\(17),
      I3 => \^tstamp\(17),
      I4 => \ctr_reg[63]_0\(16),
      I5 => \^tstamp\(16),
      O => lock1_carry_i_3_n_0
    );
lock1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(12),
      I1 => \ctr_reg[63]_0\(12),
      I2 => \ctr_reg[63]_0\(14),
      I3 => \^tstamp\(14),
      I4 => \ctr_reg[63]_0\(13),
      I5 => \^tstamp\(13),
      O => lock1_carry_i_4_n_0
    );
lock1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(9),
      I1 => \ctr_reg[63]_0\(9),
      I2 => \ctr_reg[63]_0\(11),
      I3 => \^tstamp\(11),
      I4 => \ctr_reg[63]_0\(10),
      I5 => \^tstamp\(10),
      O => lock1_carry_i_5_n_0
    );
lock1_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(6),
      I1 => \ctr_reg[63]_0\(6),
      I2 => \ctr_reg[63]_0\(8),
      I3 => \^tstamp\(8),
      I4 => \ctr_reg[63]_0\(7),
      I5 => \^tstamp\(7),
      O => lock1_carry_i_6_n_0
    );
lock1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(3),
      I1 => \ctr_reg[63]_0\(3),
      I2 => \ctr_reg[63]_0\(5),
      I3 => \^tstamp\(5),
      I4 => \ctr_reg[63]_0\(4),
      I5 => \^tstamp\(4),
      O => lock1_carry_i_7_n_0
    );
lock1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^tstamp\(0),
      I1 => \ctr_reg[63]_0\(0),
      I2 => \ctr_reg[63]_0\(2),
      I3 => \^tstamp\(2),
      I4 => \ctr_reg[63]_0\(1),
      I5 => \^tstamp\(1),
      O => lock1_carry_i_8_n_0
    );
lock_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7CCC"
    )
        port map (
      I0 => lock1,
      I1 => \^d\(0),
      I2 => s,
      I3 => valid,
      O => lock_i_1_n_0
    );
lock_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => lock_i_1_n_0,
      Q => \^d\(0),
      R => trst
    );
valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => ts_stb,
      I1 => valid,
      I2 => s,
      I3 => trst,
      O => valid0
    );
valid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => valid0,
      Q => valid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_idle_gen is
  port (
    \acmdw_v[1][last]\ : out STD_LOGIC;
    \acmdw[last]\ : out STD_LOGIC;
    in5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    trans_i_2 : in STD_LOGIC;
    trans_i_2_0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    trst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_idle_gen : entity is "pdts_idle_gen";
end design_1_pdts_endpoint_wrapper_0_0_pdts_idle_gen;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_idle_gen is
  signal \^acmdw_v[1][last]\ : STD_LOGIC;
  signal \ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[4]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[5]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[5]_i_2_n_0\ : STD_LOGIC;
  signal \ctr[6]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_2_n_0\ : STD_LOGIC;
  signal ctr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lfsr_q[15]_i_10_n_0\ : STD_LOGIC;
  signal \p[0]_i_5_n_0\ : STD_LOGIC;
  signal r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctr[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \ctr[1]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \ctr[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \ctr[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \ctr[5]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \ctr[5]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \ctr[6]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \ctr[7]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \p[0]_i_5\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \s_i_3__0\ : label is "soft_lutpair63";
begin
  \acmdw_v[1][last]\ <= \^acmdw_v[1][last]\;
\ctr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_reg(0),
      I1 => \^acmdw_v[1][last]\,
      O => \ctr[0]_i_1_n_0\
    );
\ctr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => ctr_reg(1),
      I1 => ctr_reg(0),
      I2 => \^acmdw_v[1][last]\,
      O => \ctr[1]_i_1_n_0\
    );
\ctr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => ctr_reg(2),
      I1 => ctr_reg(1),
      I2 => ctr_reg(0),
      I3 => \^acmdw_v[1][last]\,
      O => \ctr[2]_i_1_n_0\
    );
\ctr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => ctr_reg(3),
      I1 => ctr_reg(2),
      I2 => ctr_reg(0),
      I3 => ctr_reg(1),
      I4 => \^acmdw_v[1][last]\,
      O => \ctr[3]_i_1_n_0\
    );
\ctr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => ctr_reg(4),
      I1 => ctr_reg(3),
      I2 => ctr_reg(1),
      I3 => ctr_reg(0),
      I4 => ctr_reg(2),
      I5 => \^acmdw_v[1][last]\,
      O => \ctr[4]_i_1_n_0\
    );
\ctr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => ctr_reg(5),
      I1 => \ctr[5]_i_2_n_0\,
      I2 => \^acmdw_v[1][last]\,
      O => \ctr[5]_i_1_n_0\
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
      INIT => X"06"
    )
        port map (
      I0 => ctr_reg(6),
      I1 => \ctr[7]_i_2_n_0\,
      I2 => \^acmdw_v[1][last]\,
      O => \ctr[6]_i_1_n_0\
    );
\ctr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => ctr_reg(7),
      I1 => ctr_reg(6),
      I2 => \ctr[7]_i_2_n_0\,
      I3 => \^acmdw_v[1][last]\,
      O => \ctr[7]_i_1_n_0\
    );
\ctr[7]_i_2\: unisim.vcomponents.LUT6
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
      O => \ctr[7]_i_2_n_0\
    );
\ctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \ctr[0]_i_1_n_0\,
      Q => ctr_reg(0),
      R => trst
    );
\ctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \ctr[1]_i_1_n_0\,
      Q => ctr_reg(1),
      R => trst
    );
\ctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \ctr[2]_i_1_n_0\,
      Q => ctr_reg(2),
      R => trst
    );
\ctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \ctr[3]_i_1_n_0\,
      Q => ctr_reg(3),
      R => trst
    );
\ctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \ctr[4]_i_1_n_0\,
      Q => ctr_reg(4),
      R => trst
    );
\ctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \ctr[5]_i_1_n_0\,
      Q => ctr_reg(5),
      R => trst
    );
\ctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \ctr[6]_i_1_n_0\,
      Q => ctr_reg(6),
      R => trst
    );
\ctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \ctr[7]_i_1_n_0\,
      Q => ctr_reg(7),
      R => trst
    );
\lfsr_q[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ctr_reg(3),
      I1 => ctr_reg(2),
      I2 => ctr_reg(6),
      I3 => ctr_reg(7),
      I4 => ctr_reg(4),
      I5 => ctr_reg(5),
      O => \lfsr_q[15]_i_10_n_0\
    );
\lfsr_q[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FFFFFE020000"
    )
        port map (
      I0 => ctr_reg(0),
      I1 => \lfsr_q[15]_i_10_n_0\,
      I2 => ctr_reg(1),
      I3 => r(0),
      I4 => trans_i_2,
      I5 => trans_i_2_0(0),
      O => in5(0)
    );
\lfsr_q[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1FFF100"
    )
        port map (
      I0 => \lfsr_q[15]_i_10_n_0\,
      I1 => ctr_reg(1),
      I2 => r(1),
      I3 => trans_i_2,
      I4 => trans_i_2_0(1),
      O => in5(1)
    );
\lfsr_q[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1FFF100"
    )
        port map (
      I0 => \lfsr_q[15]_i_10_n_0\,
      I1 => ctr_reg(1),
      I2 => r(2),
      I3 => trans_i_2,
      I4 => trans_i_2_0(2),
      O => in5(2)
    );
\lfsr_q[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1FFF100"
    )
        port map (
      I0 => \lfsr_q[15]_i_10_n_0\,
      I1 => ctr_reg(1),
      I2 => r(3),
      I3 => trans_i_2,
      I4 => trans_i_2_0(3),
      O => in5(3)
    );
\lfsr_q[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1FFF100"
    )
        port map (
      I0 => \lfsr_q[15]_i_10_n_0\,
      I1 => ctr_reg(1),
      I2 => r(4),
      I3 => trans_i_2,
      I4 => trans_i_2_0(4),
      O => in5(4)
    );
\lfsr_q[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1FFF100"
    )
        port map (
      I0 => \lfsr_q[15]_i_10_n_0\,
      I1 => ctr_reg(1),
      I2 => r(5),
      I3 => trans_i_2,
      I4 => trans_i_2_0(5),
      O => in5(5)
    );
\lfsr_q[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1FFF100"
    )
        port map (
      I0 => \lfsr_q[15]_i_10_n_0\,
      I1 => ctr_reg(1),
      I2 => r(6),
      I3 => trans_i_2,
      I4 => trans_i_2_0(6),
      O => in5(6)
    );
\lfsr_q[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1FFF100"
    )
        port map (
      I0 => \lfsr_q[15]_i_10_n_0\,
      I1 => ctr_reg(1),
      I2 => r(7),
      I3 => trans_i_2,
      I4 => trans_i_2_0(7),
      O => in5(7)
    );
\p[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => ctr_reg(5),
      I1 => ctr_reg(1),
      I2 => ctr_reg(6),
      I3 => ctr_reg(7),
      I4 => \p[0]_i_5_n_0\,
      O => \^acmdw_v[1][last]\
    );
\p[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => ctr_reg(2),
      I1 => ctr_reg(3),
      I2 => ctr_reg(0),
      I3 => ctr_reg(4),
      O => \p[0]_i_5_n_0\
    );
\r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => r(4),
      I1 => r(5),
      I2 => r(7),
      I3 => r(3),
      O => \r[0]_i_1_n_0\
    );
\r_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => E(0),
      D => \r[0]_i_1_n_0\,
      Q => r(0),
      S => trst
    );
\r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => r(0),
      Q => r(1),
      R => trst
    );
\r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => r(1),
      Q => r(2),
      R => trst
    );
\r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => r(2),
      Q => r(3),
      R => trst
    );
\r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => r(3),
      Q => r(4),
      R => trst
    );
\r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => r(4),
      Q => r(5),
      R => trst
    );
\r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => r(5),
      Q => r(6),
      R => trst
    );
\r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => r(6),
      Q => r(7),
      R => trst
    );
\s_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^acmdw_v[1][last]\,
      I1 => trans_i_2,
      I2 => trans_i_2_0(8),
      O => \acmdw[last]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_lutram is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_reg[0]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    trst : in STD_LOGIC;
    err_tx : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wen : in STD_LOGIC;
    \ren__0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_lutram : entity is "pdts_lutram";
end design_1_pdts_endpoint_wrapper_0_0_pdts_lutram;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_lutram is
  signal \^p_reg[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_31_0_0 : label is 288;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0_31_0_0 : label is "inst/ts_ep/ep/ctrl/txbuf/ram/ram";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg_0_31_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_31_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_31_0_0 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_31_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_31_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_31_0_0 : label is 0;
  attribute RTL_RAM_BITS of ram_reg_0_31_1_1 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_1_1 : label is "inst/ts_ep/ep/ctrl/txbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_1_1 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_1_1 : label is 31;
  attribute ram_offset of ram_reg_0_31_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_0_31_1_1 : label is 1;
  attribute RTL_RAM_BITS of ram_reg_0_31_2_2 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_2_2 : label is "inst/ts_ep/ep/ctrl/txbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_2_2 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_2_2 : label is 31;
  attribute ram_offset of ram_reg_0_31_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_0_31_2_2 : label is 2;
  attribute RTL_RAM_BITS of ram_reg_0_31_3_3 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_3_3 : label is "inst/ts_ep/ep/ctrl/txbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_3_3 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_3_3 : label is 31;
  attribute ram_offset of ram_reg_0_31_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_0_31_3_3 : label is 3;
  attribute RTL_RAM_BITS of ram_reg_0_31_4_4 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_4_4 : label is "inst/ts_ep/ep/ctrl/txbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_4_4 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_4_4 : label is 31;
  attribute ram_offset of ram_reg_0_31_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_0_31_4_4 : label is 4;
  attribute RTL_RAM_BITS of ram_reg_0_31_5_5 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_5_5 : label is "inst/ts_ep/ep/ctrl/txbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_5_5 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_5_5 : label is 31;
  attribute ram_offset of ram_reg_0_31_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_0_31_5_5 : label is 5;
  attribute RTL_RAM_BITS of ram_reg_0_31_6_6 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_6_6 : label is "inst/ts_ep/ep/ctrl/txbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_6_6 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_6_6 : label is 31;
  attribute ram_offset of ram_reg_0_31_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_0_31_6_6 : label is 6;
  attribute RTL_RAM_BITS of ram_reg_0_31_7_7 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_7_7 : label is "inst/ts_ep/ep/ctrl/txbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_7_7 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_7_7 : label is 31;
  attribute ram_offset of ram_reg_0_31_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_0_31_7_7 : label is 7;
  attribute RTL_RAM_BITS of ram_reg_0_31_8_8 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_8_8 : label is "inst/ts_ep/ep/ctrl/txbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_8_8 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_8_8 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_8_8 : label is 31;
  attribute ram_offset of ram_reg_0_31_8_8 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_0_31_8_8 : label is 8;
begin
  \p_reg[0]\(8 downto 0) <= \^p_reg[0]\(8 downto 0);
\p[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBAAABAAABAAA"
    )
        port map (
      I0 => trst,
      I1 => err_tx,
      I2 => d(8),
      I3 => wen,
      I4 => \^p_reg[0]\(8),
      I5 => \ren__0\,
      O => SR(0)
    );
ram_reg_0_31_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => d(0),
      O => \^p_reg[0]\(0),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_1_1: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => d(1),
      O => \^p_reg[0]\(1),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_2_2: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => d(2),
      O => \^p_reg[0]\(2),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_3_3: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => d(3),
      O => \^p_reg[0]\(3),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_4_4: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => d(4),
      O => \^p_reg[0]\(4),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_5_5: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => d(5),
      O => \^p_reg[0]\(5),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_6_6: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => d(6),
      O => \^p_reg[0]\(6),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_7_7: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => d(7),
      O => \^p_reg[0]\(7),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_8_8: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => d(8),
      O => \^p_reg[0]\(8),
      WCLK => CLK,
      WE => wen
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_lutram_4 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \acmdw_rx[last]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    \^d\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wen : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_lutram_4 : entity is "pdts_lutram";
end design_1_pdts_endpoint_wrapper_0_0_pdts_lutram_4;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_lutram_4 is
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_31_0_0 : label is 288;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0_31_0_0 : label is "inst/ts_ep/ep/ctrl/rxbuf/ram/ram";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg_0_31_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_31_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_31_0_0 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_31_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_31_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_31_0_0 : label is 0;
  attribute RTL_RAM_BITS of ram_reg_0_31_1_1 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_1_1 : label is "inst/ts_ep/ep/ctrl/rxbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_1_1 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_1_1 : label is 31;
  attribute ram_offset of ram_reg_0_31_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_0_31_1_1 : label is 1;
  attribute RTL_RAM_BITS of ram_reg_0_31_2_2 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_2_2 : label is "inst/ts_ep/ep/ctrl/rxbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_2_2 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_2_2 : label is 31;
  attribute ram_offset of ram_reg_0_31_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_0_31_2_2 : label is 2;
  attribute RTL_RAM_BITS of ram_reg_0_31_3_3 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_3_3 : label is "inst/ts_ep/ep/ctrl/rxbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_3_3 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_3_3 : label is 31;
  attribute ram_offset of ram_reg_0_31_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_0_31_3_3 : label is 3;
  attribute RTL_RAM_BITS of ram_reg_0_31_4_4 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_4_4 : label is "inst/ts_ep/ep/ctrl/rxbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_4_4 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_4_4 : label is 31;
  attribute ram_offset of ram_reg_0_31_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_0_31_4_4 : label is 4;
  attribute RTL_RAM_BITS of ram_reg_0_31_5_5 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_5_5 : label is "inst/ts_ep/ep/ctrl/rxbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_5_5 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_5_5 : label is 31;
  attribute ram_offset of ram_reg_0_31_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_0_31_5_5 : label is 5;
  attribute RTL_RAM_BITS of ram_reg_0_31_6_6 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_6_6 : label is "inst/ts_ep/ep/ctrl/rxbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_6_6 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_6_6 : label is 31;
  attribute ram_offset of ram_reg_0_31_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_0_31_6_6 : label is 6;
  attribute RTL_RAM_BITS of ram_reg_0_31_7_7 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_7_7 : label is "inst/ts_ep/ep/ctrl/rxbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_7_7 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_7_7 : label is 31;
  attribute ram_offset of ram_reg_0_31_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_0_31_7_7 : label is 7;
  attribute RTL_RAM_BITS of ram_reg_0_31_8_8 : label is 288;
  attribute RTL_RAM_NAME of ram_reg_0_31_8_8 : label is "inst/ts_ep/ep/ctrl/rxbuf/ram/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_31_8_8 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_31_8_8 : label is 0;
  attribute ram_addr_end of ram_reg_0_31_8_8 : label is 31;
  attribute ram_offset of ram_reg_0_31_8_8 : label is 0;
  attribute ram_slice_begin of ram_reg_0_31_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_0_31_8_8 : label is 8;
begin
ram_reg_0_31_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \^d\(0),
      O => D(0),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_1_1: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \^d\(1),
      O => D(1),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_2_2: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \^d\(2),
      O => D(2),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_3_3: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \^d\(3),
      O => D(3),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_4_4: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \^d\(4),
      O => D(4),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_5_5: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \^d\(5),
      O => D(5),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_6_6: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \^d\(6),
      O => D(6),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_7_7: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \^d\(7),
      O => D(7),
      WCLK => CLK,
      WE => wen
    );
ram_reg_0_31_8_8: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \^d\(8),
      O => \acmdw_rx[last]\,
      WCLK => CLK,
      WE => wen
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_mod is
  port (
    txd : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_mod : entity is "pdts_mod";
end design_1_pdts_endpoint_wrapper_0_0_pdts_mod;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_mod is
  signal cctr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cctr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cctr[1]_i_1_n_0\ : STD_LOGIC;
  signal q_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cctr[0]_i_1__0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \cctr[1]_i_1\ : label is "soft_lutpair86";
begin
\cctr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cctr(0),
      O => \cctr[0]_i_1__0_n_0\
    );
\cctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cctr(0),
      I1 => cctr(1),
      O => \cctr[1]_i_1_n_0\
    );
\cctr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \cctr[0]_i_1__0_n_0\,
      Q => cctr(0),
      S => SS(0)
    );
\cctr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \cctr[1]_i_1_n_0\,
      Q => cctr(1),
      S => SS(0)
    );
q_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4D"
    )
        port map (
      I0 => cctr(1),
      I1 => Q(0),
      I2 => cctr(0),
      O => q_i_1_n_0
    );
q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => q_i_1_n_0,
      Q => txd,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_synchro is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rsto : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    sclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_synchro : entity is "pdts_synchro";
end design_1_pdts_endpoint_wrapper_0_0_pdts_synchro;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_synchro is
  signal da : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal db : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
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
  attribute ASYNC_REG_boolean of \db_reg[4]\ : label is std.standard.true;
  attribute KEEP of \db_reg[4]\ : label is "yes";
  attribute SHREG_EXTRACT of \db_reg[4]\ : label is "no";
  attribute ASYNC_REG_boolean of \q_reg[0]\ : label is std.standard.true;
  attribute KEEP of \q_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \q_reg[1]\ : label is std.standard.true;
  attribute KEEP of \q_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \q_reg[2]\ : label is std.standard.true;
  attribute KEEP of \q_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \q_reg[3]\ : label is std.standard.true;
  attribute KEEP of \q_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \q_reg[4]\ : label is std.standard.true;
  attribute KEEP of \q_reg[4]\ : label is "yes";
begin
\da[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rsto,
      O => p_0_out(0)
    );
\da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_out(0),
      Q => da(0),
      R => '0'
    );
\da_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => da(1),
      R => '0'
    );
\da_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => da(2),
      R => '0'
    );
\da_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => da(3),
      R => '0'
    );
\da_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => da(4),
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
\db_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => da(4),
      Q => db(4),
      R => '0'
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(0),
      Q => \out\(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(1),
      Q => \out\(1),
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(2),
      Q => \out\(2),
      R => '0'
    );
\q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(3),
      Q => \out\(3),
      R => '0'
    );
\q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(4),
      Q => \out\(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \da_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    sclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0\ : entity is "pdts_synchro";
end \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0\;

architecture STRUCTURE of \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0\ is
  signal da : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal db : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
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
\da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \da_reg[1]_0\(0),
      Q => da(0),
      R => '0'
    );
\da_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \da_reg[1]_0\(1),
      Q => da(1),
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
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(0),
      Q => D(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => db(1),
      Q => D(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0_0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dx12_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \dx_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dx_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dx_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dx_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \da_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sclk : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0_0\ : entity is "pdts_synchro";
end \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0_0\;

architecture STRUCTURE of \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0_0\ is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of \^d\ : signal is "yes";
  signal da : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal db : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
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
  D(1 downto 0) <= \^d\(1 downto 0);
  Q(1 downto 0) <= da(1 downto 0);
\da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \da_reg[1]_0\(0),
      Q => da(0),
      R => '0'
    );
\da_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \da_reg[1]_0\(1),
      Q => da(1),
      R => '0'
    );
\db_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => da(0),
      Q => db(0),
      R => '0'
    );
\db_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => da(1),
      Q => db(1),
      R => '0'
    );
\dx[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \^d\(0),
      I1 => \dx_reg[1]\(0),
      I2 => \dx_reg[1]_0\(0),
      I3 => \dx_reg[1]_1\(0),
      I4 => \dx_reg[1]_2\(0),
      O => dx12_in(0)
    );
\dx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \^d\(1),
      I1 => \dx_reg[1]\(1),
      I2 => \dx_reg[1]_0\(1),
      I3 => \dx_reg[1]_1\(1),
      I4 => \dx_reg[1]_2\(1),
      O => dx12_in(1)
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => db(0),
      Q => \^d\(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => db(1),
      Q => \^d\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized1\ is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    sclk : in STD_LOGIC;
    td : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized1\ : entity is "pdts_synchro";
end \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized1\;

architecture STRUCTURE of \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized1\ is
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
      C => CLK,
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
entity \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized2\ is
  port (
    clk : in STD_LOGIC;
    clks : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 2 downto 0 );
    q : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute N : integer;
  attribute N of \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized2\ : entity is 3;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized2\ : entity is "pdts_synchro";
end \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized2\;

architecture STRUCTURE of \design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized2\ is
  signal da : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal db : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of db : signal is "yes";
  attribute shreg_extract : string;
  attribute shreg_extract of db : signal is "no";
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
  attribute ASYNC_REG_boolean of \q_reg[0]\ : label is std.standard.true;
  attribute KEEP of \q_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \q_reg[1]\ : label is std.standard.true;
  attribute KEEP of \q_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \q_reg[2]\ : label is std.standard.true;
  attribute KEEP of \q_reg[2]\ : label is "yes";
  attribute async_reg of q : signal is "yes";
begin
\da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(0),
      Q => da(0),
      R => '0'
    );
\da_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(1),
      Q => da(1),
      R => '0'
    );
\da_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d(2),
      Q => da(2),
      R => '0'
    );
\db_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clks,
      CE => '1',
      D => da(0),
      Q => db(0),
      R => '0'
    );
\db_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clks,
      CE => '1',
      D => da(1),
      Q => db(1),
      R => '0'
    );
\db_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clks,
      CE => '1',
      D => da(2),
      Q => db(2),
      R => '0'
    );
\q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clks,
      CE => '1',
      D => db(0),
      Q => q(0),
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clks,
      CE => '1',
      D => db(1),
      Q => q(1),
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clks,
      CE => '1',
      D => db(2),
      Q => q(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_cksum is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    stbo_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    stbo : in STD_LOGIC;
    \lfsr_q_reg[15]\ : in STD_LOGIC;
    in5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \lfsr_q_reg[1]\ : in STD_LOGIC;
    k : in STD_LOGIC;
    disp : in STD_LOGIC;
    \q_reg[0]\ : in STD_LOGIC;
    \q[2]_i_2\ : in STD_LOGIC;
    \q_reg[3]\ : in STD_LOGIC;
    \q_reg[1]\ : in STD_LOGIC;
    \q_reg[3]_0\ : in STD_LOGIC;
    \q_reg[6]\ : in STD_LOGIC;
    \q_reg[6]_0\ : in STD_LOGIC;
    \q_reg[6]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_cksum : entity is "pdts_cksum";
end design_1_pdts_endpoint_wrapper_0_0_pdts_cksum;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_cksum is
begin
crc: entity work.design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16
     port map (
      CLK => CLK,
      D(9 downto 0) => D(9 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      SS(0) => SS(0),
      disp => disp,
      in5(7 downto 0) => in5(7 downto 0),
      k => k,
      \lfsr_q_reg[15]_0\ => \lfsr_q_reg[15]\,
      \lfsr_q_reg[1]_0\ => \lfsr_q_reg[1]\,
      \q[2]_i_2_0\ => \q[2]_i_2\,
      \q_reg[0]\ => \q_reg[0]\,
      \q_reg[1]\ => \q_reg[1]\,
      \q_reg[3]\ => \q_reg[3]\,
      \q_reg[3]_0\ => \q_reg[3]_0\,
      \q_reg[6]\ => \q_reg[6]\,
      \q_reg[6]_0\ => \q_reg[6]_0\,
      \q_reg[6]_1\(1 downto 0) => \q_reg[6]_1\(1 downto 0),
      stbo => stbo,
      stbo_reg => stbo_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_cksum_1 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ks : out STD_LOGIC;
    ka : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s0 : out STD_LOGIC;
    \^d\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_12_in : out STD_LOGIC;
    \q_reg[4]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \state0__0\ : in STD_LOGIC;
    p_11_in : in STD_LOGIC;
    \acmd_rx_w[valid]\ : in STD_LOGIC;
    \acmdw_rx[valid]\ : in STD_LOGIC;
    \txdone__0\ : in STD_LOGIC;
    trst : in STD_LOGIC;
    a_match : in STD_LOGIC;
    last_reg : in STD_LOGIC;
    state5 : in STD_LOGIC;
    state40_in : in STD_LOGIC;
    s_reg : in STD_LOGIC;
    s_reg_0 : in STD_LOGIC;
    state35_out : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    k : in STD_LOGIC;
    \^q\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_cksum_1 : entity is "pdts_cksum";
end design_1_pdts_endpoint_wrapper_0_0_pdts_cksum_1;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_cksum_1 is
begin
crc: entity work.design_1_pdts_endpoint_wrapper_0_0_outputlogic_crc16_2
     port map (
      CLK => CLK,
      D(1 downto 0) => D(1 downto 0),
      E(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      SS(0) => ka,
      a_match => a_match,
      \acmd_rx_w[valid]\ => \acmd_rx_w[valid]\,
      \acmdw_rx[valid]\ => \acmdw_rx[valid]\,
      \^d\(0) => \^d\(0),
      k => k,
      ks => ks,
      last_reg => last_reg,
      \lfsr_q_reg[0]_0\(0) => SS(0),
      p_11_in => p_11_in,
      \^q\(7 downto 0) => \^q\(7 downto 0),
      \q_reg[4]\ => \q_reg[4]\,
      s0 => s0,
      s_reg => s_reg,
      s_reg_0 => s_reg_0,
      \state0__0\ => \state0__0\,
      state35_out => state35_out,
      state40_in => state40_in,
      state5 => state5,
      \state_reg[0]\(0) => p_12_in,
      trst => trst,
      \txdone__0\ => \txdone__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_ep_cdr is
  port (
    d : in STD_LOGIC;
    rclko : out STD_LOGIC;
    rclki : in STD_LOGIC;
    rsti : in STD_LOGIC;
    clko : out STD_LOGIC;
    clko4x : out STD_LOGIC;
    clko2x : out STD_LOGIC;
    rsto : out STD_LOGIC;
    q : out STD_LOGIC;
    locked : out STD_LOGIC;
    phase : in STD_LOGIC_VECTOR ( 11 downto 0 );
    phase_done : out STD_LOGIC;
    dbg : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute EXT_PLL_DIV : integer;
  attribute EXT_PLL_DIV of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_cdr : entity is 2;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_cdr : entity is "pdts_ep_cdr";
  attribute USE_EXT_PLL : string;
  attribute USE_EXT_PLL of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_cdr : entity is "FALSE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_cdr : entity is "soft";
end design_1_pdts_endpoint_wrapper_0_0_pdts_ep_cdr;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_cdr is
  signal \<const0>\ : STD_LOGIC;
  signal bclk : STD_LOGIC;
  signal bclk_f : STD_LOGIC;
  signal bufg2x_n_0 : STD_LOGIC;
  signal \^clko\ : STD_LOGIC;
  signal \^clko4x\ : STD_LOGIC;
  signal clku : STD_LOGIC;
  signal clku2x : STD_LOGIC;
  signal clku4x : STD_LOGIC;
  signal cphase : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of cphase : signal is std.standard.true;
  signal \cphase[11]_i_2_n_0\ : STD_LOGIC;
  signal \cphase[11]_i_3_n_0\ : STD_LOGIC;
  signal \cphase[11]_i_4_n_0\ : STD_LOGIC;
  signal \cphase[11]_i_5_n_0\ : STD_LOGIC;
  signal \cphase[7]_i_10_n_0\ : STD_LOGIC;
  signal \cphase[7]_i_2_n_0\ : STD_LOGIC;
  signal \cphase[7]_i_3_n_0\ : STD_LOGIC;
  signal \cphase[7]_i_4_n_0\ : STD_LOGIC;
  signal \cphase[7]_i_5_n_0\ : STD_LOGIC;
  signal \cphase[7]_i_6_n_0\ : STD_LOGIC;
  signal \cphase[7]_i_7_n_0\ : STD_LOGIC;
  signal \cphase[7]_i_8_n_0\ : STD_LOGIC;
  signal \cphase[7]_i_9_n_0\ : STD_LOGIC;
  signal \cphase__0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \cphase_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \cphase_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \cphase_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \cphase_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \cphase_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \cphase_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \cphase_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \cphase_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \cphase_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \cphase_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \cphase_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal mlock : STD_LOGIC;
  signal oddr_rclko_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal psact : STD_LOGIC;
  attribute MARK_DEBUG of psact : signal is std.standard.true;
  signal psact_i_1_n_0 : STD_LOGIC;
  signal psd : STD_LOGIC;
  attribute MARK_DEBUG of psd : signal is std.standard.true;
  signal psd_inferred_i_2_n_0 : STD_LOGIC;
  signal psd_inferred_i_3_n_0 : STD_LOGIC;
  signal psd_inferred_i_4_n_0 : STD_LOGIC;
  signal psd_inferred_i_5_n_0 : STD_LOGIC;
  signal psdone : STD_LOGIC;
  attribute MARK_DEBUG of psdone : signal is std.standard.true;
  signal psen : STD_LOGIC;
  attribute MARK_DEBUG of psen : signal is std.standard.true;
  signal psen_i_1_n_0 : STD_LOGIC;
  signal psen_i_2_n_0 : STD_LOGIC;
  signal psincdec : STD_LOGIC;
  attribute MARK_DEBUG of psincdec : signal is std.standard.true;
  signal psincdec_i_10_n_0 : STD_LOGIC;
  signal psincdec_i_11_n_0 : STD_LOGIC;
  signal psincdec_i_12_n_0 : STD_LOGIC;
  signal psincdec_i_13_n_0 : STD_LOGIC;
  signal psincdec_i_14_n_0 : STD_LOGIC;
  signal psincdec_i_1_n_0 : STD_LOGIC;
  signal psincdec_i_3_n_0 : STD_LOGIC;
  signal psincdec_i_4_n_0 : STD_LOGIC;
  signal psincdec_i_5_n_0 : STD_LOGIC;
  signal psincdec_i_6_n_0 : STD_LOGIC;
  signal psincdec_i_7_n_0 : STD_LOGIC;
  signal psincdec_i_8_n_0 : STD_LOGIC;
  signal psincdec_i_9_n_0 : STD_LOGIC;
  signal psincdec_reg_i_2_n_2 : STD_LOGIC;
  signal psincdec_reg_i_2_n_3 : STD_LOGIC;
  signal psincdec_reg_i_2_n_4 : STD_LOGIC;
  signal psincdec_reg_i_2_n_5 : STD_LOGIC;
  signal psincdec_reg_i_2_n_6 : STD_LOGIC;
  signal psincdec_reg_i_2_n_7 : STD_LOGIC;
  signal rst : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst : signal is "yes";
  signal rsta : STD_LOGIC;
  attribute async_reg of rsta : signal is "yes";
  signal \NLW_cphase_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_cphase_reg[11]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_mmcm_CDDCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKFBIN_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKFBOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_oddr_rclko_CLKDIV_UNCONNECTED : STD_LOGIC;
  signal NLW_oddr_rclko_T_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_oddr_rclko_D_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_psincdec_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_psincdec_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_sm_dbg_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of bufg0 : label is "BUFG";
  attribute box_type : string;
  attribute box_type of bufg0 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of bufg2x : label is "BUFG";
  attribute box_type of bufg2x : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of bufg4x : label is "BUFG";
  attribute box_type of bufg4x : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of bufgb : label is "BUFG";
  attribute box_type of bufgb : label is "PRIMITIVE";
  attribute LOPT_BUFG_MISC : boolean;
  attribute LOPT_BUFG_MISC of bufr0 : label is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of bufr0 : label is "MLO";
  attribute XILINX_LEGACY_PRIM of bufr0 : label is "BUFR";
  attribute KEEP : string;
  attribute KEEP of \cphase_reg[0]\ : label is "yes";
  attribute KEEP of \cphase_reg[10]\ : label is "yes";
  attribute KEEP of \cphase_reg[11]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cphase_reg[11]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \cphase_reg[11]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute KEEP of \cphase_reg[1]\ : label is "yes";
  attribute KEEP of \cphase_reg[2]\ : label is "yes";
  attribute KEEP of \cphase_reg[3]\ : label is "yes";
  attribute KEEP of \cphase_reg[4]\ : label is "yes";
  attribute KEEP of \cphase_reg[5]\ : label is "yes";
  attribute KEEP of \cphase_reg[6]\ : label is "yes";
  attribute KEEP of \cphase_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \cphase_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \cphase_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute KEEP of \cphase_reg[8]\ : label is "yes";
  attribute KEEP of \cphase_reg[9]\ : label is "yes";
  attribute OPT_MODIFIED of mmcm : label is "MLO";
  attribute XILINX_LEGACY_PRIM of mmcm : label is "MMCME2_ADV";
  attribute box_type of mmcm : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of oddr_rclko : label is "ODDRE1";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of oddr_rclko : label is "C:CLK SR:RST Q:OQ D1:D[0] D2:D[4]";
  attribute box_type of oddr_rclko : label is "PRIMITIVE";
  attribute KEEP of psact_reg : label is "yes";
  attribute KEEP of psen_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of psen_reg : label is "true";
  attribute KEEP of psincdec_reg : label is "yes";
  attribute mark_debug_string of psincdec_reg : label is "true";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of psincdec_reg_i_2 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of psincdec_reg_i_2 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_reg : label is std.standard.true;
  attribute KEEP of rst_reg : label is "yes";
  attribute ASYNC_REG_boolean of rsta_reg : label is std.standard.true;
  attribute KEEP of rsta_reg : label is "yes";
  attribute KEEP_HIERARCHY of sm : label is "soft";
  attribute mark_debug_string of phase : signal is "true";
begin
  clko <= \^clko\;
  clko2x <= \<const0>\;
  clko4x <= \^clko4x\;
  dbg(7) <= \<const0>\;
  dbg(6) <= \<const0>\;
  dbg(5) <= \<const0>\;
  dbg(4) <= \<const0>\;
  dbg(3) <= \<const0>\;
  dbg(2) <= \<const0>\;
  dbg(1) <= \<const0>\;
  dbg(0) <= \<const0>\;
  phase_done <= psd;
  rclko <= \<const0>\;
  rsto <= rst;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
bufg0: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => clku,
      O => \^clko\
    );
bufg2x: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => clku2x,
      O => bufg2x_n_0
    );
bufg4x: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => clku4x,
      O => \^clko4x\
    );
bufgb: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => bclk,
      O => bclk_f
    );
bufr0: unisim.vcomponents.BUFGCE_DIV
    generic map(
      BUFGCE_DIVIDE => 2
    )
        port map (
      CE => '1',
      CLR => '0',
      I => d,
      O => bclk
    );
\cphase[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cphase(10),
      I1 => cphase(11),
      O => \cphase[11]_i_2_n_0\
    );
\cphase[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cphase(9),
      I1 => cphase(10),
      O => \cphase[11]_i_3_n_0\
    );
\cphase[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cphase(8),
      I1 => cphase(9),
      O => \cphase[11]_i_4_n_0\
    );
\cphase[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cphase(7),
      I1 => cphase(8),
      O => \cphase[11]_i_5_n_0\
    );
\cphase[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => psdone,
      I1 => psact,
      I2 => cphase(0),
      O => \cphase[7]_i_10_n_0\
    );
\cphase[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cphase(1),
      O => \cphase[7]_i_2_n_0\
    );
\cphase[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cphase(6),
      I1 => cphase(7),
      O => \cphase[7]_i_3_n_0\
    );
\cphase[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cphase(5),
      I1 => cphase(6),
      O => \cphase[7]_i_4_n_0\
    );
\cphase[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cphase(4),
      I1 => cphase(5),
      O => \cphase[7]_i_5_n_0\
    );
\cphase[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cphase(3),
      I1 => cphase(4),
      O => \cphase[7]_i_6_n_0\
    );
\cphase[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cphase(2),
      I1 => cphase(3),
      O => \cphase[7]_i_7_n_0\
    );
\cphase[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cphase(1),
      I1 => cphase(2),
      O => \cphase[7]_i_8_n_0\
    );
\cphase[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => cphase(1),
      I1 => psdone,
      I2 => psincdec,
      I3 => psact,
      O => \cphase[7]_i_9_n_0\
    );
\cphase_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(0),
      Q => cphase(0),
      R => rst
    );
\cphase_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(10),
      Q => cphase(10),
      R => rst
    );
\cphase_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(11),
      Q => cphase(11),
      R => rst
    );
\cphase_reg[11]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \cphase_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_cphase_reg[11]_i_1_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \cphase_reg[11]_i_1_n_5\,
      CO(1) => \cphase_reg[11]_i_1_n_6\,
      CO(0) => \cphase_reg[11]_i_1_n_7\,
      DI(7 downto 3) => B"00000",
      DI(2 downto 0) => cphase(9 downto 7),
      O(7 downto 4) => \NLW_cphase_reg[11]_i_1_O_UNCONNECTED\(7 downto 4),
      O(3 downto 0) => \cphase__0\(11 downto 8),
      S(7 downto 4) => B"0000",
      S(3) => \cphase[11]_i_2_n_0\,
      S(2) => \cphase[11]_i_3_n_0\,
      S(1) => \cphase[11]_i_4_n_0\,
      S(0) => \cphase[11]_i_5_n_0\
    );
\cphase_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(1),
      Q => cphase(1),
      R => rst
    );
\cphase_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(2),
      Q => cphase(2),
      R => rst
    );
\cphase_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(3),
      Q => cphase(3),
      R => rst
    );
\cphase_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(4),
      Q => cphase(4),
      R => rst
    );
\cphase_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(5),
      Q => cphase(5),
      R => rst
    );
\cphase_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(6),
      Q => cphase(6),
      R => rst
    );
\cphase_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(7),
      Q => cphase(7),
      R => rst
    );
\cphase_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \cphase_reg[7]_i_1_n_0\,
      CO(6) => \cphase_reg[7]_i_1_n_1\,
      CO(5) => \cphase_reg[7]_i_1_n_2\,
      CO(4) => \cphase_reg[7]_i_1_n_3\,
      CO(3) => \cphase_reg[7]_i_1_n_4\,
      CO(2) => \cphase_reg[7]_i_1_n_5\,
      CO(1) => \cphase_reg[7]_i_1_n_6\,
      CO(0) => \cphase_reg[7]_i_1_n_7\,
      DI(7 downto 2) => cphase(6 downto 1),
      DI(1) => \cphase[7]_i_2_n_0\,
      DI(0) => cphase(0),
      O(7 downto 0) => \cphase__0\(7 downto 0),
      S(7) => \cphase[7]_i_3_n_0\,
      S(6) => \cphase[7]_i_4_n_0\,
      S(5) => \cphase[7]_i_5_n_0\,
      S(4) => \cphase[7]_i_6_n_0\,
      S(3) => \cphase[7]_i_7_n_0\,
      S(2) => \cphase[7]_i_8_n_0\,
      S(1) => \cphase[7]_i_9_n_0\,
      S(0) => \cphase[7]_i_10_n_0\
    );
\cphase_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(8),
      Q => cphase(8),
      R => rst
    );
\cphase_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \cphase__0\(9),
      Q => cphase(9),
      R => rst
    );
mmcm: unisim.vcomponents.MMCME4_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 32.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => "FALSE",
      CLKIN1_PERIOD => 32.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 16.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => "TRUE",
      CLKOUT1_DIVIDE => 4,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => "TRUE",
      CLKOUT2_DIVIDE => 8,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => "TRUE",
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
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.000000,
      REF_JITTER2 => 0.000000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CDDCDONE => NLW_mmcm_CDDCDONE_UNCONNECTED,
      CDDCREQ => '0',
      CLKFBIN => NLW_mmcm_CLKFBIN_UNCONNECTED,
      CLKFBOUT => NLW_mmcm_CLKFBOUT_UNCONNECTED,
      CLKFBOUTB => NLW_mmcm_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => bclk,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clku,
      CLKOUT0B => NLW_mmcm_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clku4x,
      CLKOUT1B => NLW_mmcm_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => clku2x,
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
      LOCKED => mlock,
      PSCLK => \^clko\,
      PSDONE => psdone,
      PSEN => psen,
      PSINCDEC => psincdec,
      PWRDWN => '0',
      RST => '0'
    );
oddr_rclko: unisim.vcomponents.OSERDESE3
    generic map(
      INIT => '0',
      IS_CLK_INVERTED => '0',
      ODDR_MODE => "TRUE",
      OSERDES_T_BYPASS => "TRUE",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CLK => bclk_f,
      CLKDIV => NLW_oddr_rclko_CLKDIV_UNCONNECTED,
      D(7 downto 5) => NLW_oddr_rclko_D_UNCONNECTED(7 downto 5),
      D(4) => '1',
      D(3 downto 1) => NLW_oddr_rclko_D_UNCONNECTED(3 downto 1),
      D(0) => '0',
      OQ => oddr_rclko_n_0,
      RST => '0',
      T => '0',
      T_OUT => NLW_oddr_rclko_T_OUT_UNCONNECTED
    );
psact_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => psdone,
      I1 => psd,
      I2 => psact,
      O => psact_i_1_n_0
    );
psact_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => psact_i_1_n_0,
      Q => psact,
      R => rst
    );
psd_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => psd_inferred_i_2_n_0,
      I1 => psd_inferred_i_3_n_0,
      I2 => psd_inferred_i_4_n_0,
      I3 => psd_inferred_i_5_n_0,
      O => psd
    );
psd_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cphase(3),
      I1 => phase(3),
      I2 => phase(5),
      I3 => cphase(5),
      I4 => phase(4),
      I5 => cphase(4),
      O => psd_inferred_i_2_n_0
    );
psd_inferred_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cphase(0),
      I1 => phase(0),
      I2 => phase(2),
      I3 => cphase(2),
      I4 => phase(1),
      I5 => cphase(1),
      O => psd_inferred_i_3_n_0
    );
psd_inferred_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cphase(9),
      I1 => phase(9),
      I2 => phase(11),
      I3 => cphase(11),
      I4 => phase(10),
      I5 => cphase(10),
      O => psd_inferred_i_4_n_0
    );
psd_inferred_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cphase(6),
      I1 => phase(6),
      I2 => phase(8),
      I3 => cphase(8),
      I4 => phase(7),
      I5 => cphase(7),
      O => psd_inferred_i_5_n_0
    );
psen_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rst,
      I1 => psact,
      O => psen_i_1_n_0
    );
psen_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CD"
    )
        port map (
      I0 => rst,
      I1 => psen,
      I2 => psd,
      O => psen_i_2_n_0
    );
psen_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => psen_i_1_n_0,
      D => psen_i_2_n_0,
      Q => psen,
      R => '0'
    );
psincdec_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => rst,
      I1 => psincdec,
      I2 => psd,
      I3 => psincdec_reg_i_2_n_2,
      O => psincdec_i_1_n_0
    );
psincdec_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => phase(8),
      I1 => cphase(8),
      I2 => phase(9),
      I3 => cphase(9),
      O => psincdec_i_10_n_0
    );
psincdec_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => phase(6),
      I1 => cphase(6),
      I2 => phase(7),
      I3 => cphase(7),
      O => psincdec_i_11_n_0
    );
psincdec_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => phase(4),
      I1 => cphase(4),
      I2 => phase(5),
      I3 => cphase(5),
      O => psincdec_i_12_n_0
    );
psincdec_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => phase(2),
      I1 => cphase(2),
      I2 => phase(3),
      I3 => cphase(3),
      O => psincdec_i_13_n_0
    );
psincdec_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => phase(0),
      I1 => cphase(0),
      I2 => phase(1),
      I3 => cphase(1),
      O => psincdec_i_14_n_0
    );
psincdec_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => phase(10),
      I1 => cphase(10),
      I2 => cphase(11),
      I3 => phase(11),
      O => psincdec_i_3_n_0
    );
psincdec_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => phase(8),
      I1 => cphase(8),
      I2 => cphase(9),
      I3 => phase(9),
      O => psincdec_i_4_n_0
    );
psincdec_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => phase(6),
      I1 => cphase(6),
      I2 => cphase(7),
      I3 => phase(7),
      O => psincdec_i_5_n_0
    );
psincdec_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => phase(4),
      I1 => cphase(4),
      I2 => cphase(5),
      I3 => phase(5),
      O => psincdec_i_6_n_0
    );
psincdec_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => phase(2),
      I1 => cphase(2),
      I2 => cphase(3),
      I3 => phase(3),
      O => psincdec_i_7_n_0
    );
psincdec_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => phase(0),
      I1 => cphase(0),
      I2 => cphase(1),
      I3 => phase(1),
      O => psincdec_i_8_n_0
    );
psincdec_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => phase(10),
      I1 => cphase(10),
      I2 => phase(11),
      I3 => cphase(11),
      O => psincdec_i_9_n_0
    );
psincdec_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => psen_i_1_n_0,
      D => psincdec_i_1_n_0,
      Q => psincdec,
      R => '0'
    );
psincdec_reg_i_2: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_psincdec_reg_i_2_CO_UNCONNECTED(7 downto 6),
      CO(5) => psincdec_reg_i_2_n_2,
      CO(4) => psincdec_reg_i_2_n_3,
      CO(3) => psincdec_reg_i_2_n_4,
      CO(2) => psincdec_reg_i_2_n_5,
      CO(1) => psincdec_reg_i_2_n_6,
      CO(0) => psincdec_reg_i_2_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => psincdec_i_3_n_0,
      DI(4) => psincdec_i_4_n_0,
      DI(3) => psincdec_i_5_n_0,
      DI(2) => psincdec_i_6_n_0,
      DI(1) => psincdec_i_7_n_0,
      DI(0) => psincdec_i_8_n_0,
      O(7 downto 0) => NLW_psincdec_reg_i_2_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => psincdec_i_9_n_0,
      S(4) => psincdec_i_10_n_0,
      S(3) => psincdec_i_11_n_0,
      S(2) => psincdec_i_12_n_0,
      S(1) => psincdec_i_13_n_0,
      S(0) => psincdec_i_14_n_0
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => rsta,
      Q => rst,
      R => '0'
    );
rsta_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mlock,
      O => \p_0_in__0\
    );
rsta_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clko\,
      CE => '1',
      D => \p_0_in__0\,
      Q => rsta,
      R => '0'
    );
sm: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_cdr_sampler
     port map (
      clk => \^clko\,
      clk4x => \^clko4x\,
      d => d,
      dbg(7 downto 0) => NLW_sm_dbg_UNCONNECTED(7 downto 0),
      locked => locked,
      q => q,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf is
  port (
    s_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \acmdw_rx[last]\ : out STD_LOGIC;
    err_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \^d\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wen : in STD_LOGIC;
    \p1__0\ : in STD_LOGIC;
    \txdone__0\ : in STD_LOGIC;
    rxdone : in STD_LOGIC;
    trst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    err_tx : in STD_LOGIC;
    p_11_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf : entity is "pdts_pktbuf";
end design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf is
  signal err_i_i_1_n_0 : STD_LOGIC;
  signal err_i_i_2_n_0 : STD_LOGIC;
  signal err_rx : STD_LOGIC;
  signal p : STD_LOGIC;
  signal p0 : STD_LOGIC;
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sel__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of err_i_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \p[0]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \p[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \p[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \p[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \p[4]_i_3\ : label is "soft_lutpair7";
begin
\da[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => err_rx,
      I1 => Q(0),
      I2 => err_tx,
      O => err_i_reg_0(0)
    );
err_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0008"
    )
        port map (
      I0 => err_i_i_2_n_0,
      I1 => \p1__0\,
      I2 => \txdone__0\,
      I3 => rxdone,
      I4 => err_rx,
      I5 => trst,
      O => err_i_i_1_n_0
    );
err_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \sel__0\(0),
      I1 => \sel__0\(3),
      I2 => \sel__0\(4),
      I3 => \sel__0\(1),
      I4 => \sel__0\(2),
      O => err_i_i_2_n_0
    );
err_i_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => err_i_i_1_n_0,
      Q => err_rx,
      R => '0'
    );
\p[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel__0\(0),
      O => \plusOp__2\(0)
    );
\p[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sel__0\(0),
      I1 => \sel__0\(1),
      O => \plusOp__2\(1)
    );
\p[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sel__0\(0),
      I1 => \sel__0\(1),
      I2 => \sel__0\(2),
      O => \plusOp__2\(2)
    );
\p[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sel__0\(1),
      I1 => \sel__0\(0),
      I2 => \sel__0\(2),
      I3 => \sel__0\(3),
      O => \plusOp__2\(3)
    );
\p[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBAAA"
    )
        port map (
      I0 => trst,
      I1 => err_rx,
      I2 => p_11_in,
      I3 => wen,
      I4 => \txdone__0\,
      O => p0
    );
\p[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \p1__0\,
      I1 => \sel__0\(2),
      I2 => \sel__0\(1),
      I3 => \sel__0\(4),
      I4 => \sel__0\(3),
      I5 => \sel__0\(0),
      O => p
    );
\p[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sel__0\(2),
      I1 => \sel__0\(0),
      I2 => \sel__0\(1),
      I3 => \sel__0\(3),
      I4 => \sel__0\(4),
      O => \plusOp__2\(4)
    );
\p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p,
      D => \plusOp__2\(0),
      Q => \sel__0\(0),
      R => p0
    );
\p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p,
      D => \plusOp__2\(1),
      Q => \sel__0\(1),
      R => p0
    );
\p_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p,
      D => \plusOp__2\(2),
      Q => \sel__0\(2),
      R => p0
    );
\p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p,
      D => \plusOp__2\(3),
      Q => \sel__0\(3),
      R => p0
    );
\p_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p,
      D => \plusOp__2\(4),
      Q => \sel__0\(4),
      R => p0
    );
ram: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_lutram_4
     port map (
      CLK => CLK,
      D(7 downto 0) => D(7 downto 0),
      Q(4 downto 0) => \sel__0\(4 downto 0),
      \acmdw_rx[last]\ => \acmdw_rx[last]\,
      \^d\(8 downto 0) => \^d\(8 downto 0),
      wen => wen
    );
s_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => s0,
      Q => s_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf_3 is
  port (
    \acmd_tx_w[valid]\ : out STD_LOGIC;
    err_tx : out STD_LOGIC;
    \p_reg[0]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \p1__0\ : in STD_LOGIC;
    \txdone__0_0\ : in STD_LOGIC;
    \rxdone__0\ : in STD_LOGIC;
    trst : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wen : in STD_LOGIC;
    \ren__0\ : in STD_LOGIC;
    sel : in STD_LOGIC;
    \acmdr[rdy]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf_3 : entity is "pdts_pktbuf";
end design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf_3;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf_3 is
  signal \^acmd_tx_w[valid]\ : STD_LOGIC;
  signal \err_i_i_1__0_n_0\ : STD_LOGIC;
  signal \^err_tx\ : STD_LOGIC;
  signal p : STD_LOGIC;
  signal p0 : STD_LOGIC;
  signal \p[4]_i_4_n_0\ : STD_LOGIC;
  signal \p_reg_n_0_[0]\ : STD_LOGIC;
  signal \p_reg_n_0_[1]\ : STD_LOGIC;
  signal \p_reg_n_0_[2]\ : STD_LOGIC;
  signal \p_reg_n_0_[3]\ : STD_LOGIC;
  signal \p_reg_n_0_[4]\ : STD_LOGIC;
  signal \plusOp__4\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \p[0]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \p[1]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \p[2]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \p[3]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \p[4]_i_3__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \p[4]_i_4\ : label is "soft_lutpair25";
begin
  \acmd_tx_w[valid]\ <= \^acmd_tx_w[valid]\;
  err_tx <= \^err_tx\;
\err_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0008"
    )
        port map (
      I0 => \p[4]_i_4_n_0\,
      I1 => \p1__0\,
      I2 => \txdone__0_0\,
      I3 => \rxdone__0\,
      I4 => \^err_tx\,
      I5 => trst,
      O => \err_i_i_1__0_n_0\
    );
err_i_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \err_i_i_1__0_n_0\,
      Q => \^err_tx\,
      R => '0'
    );
\p[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \p_reg_n_0_[0]\,
      O => \plusOp__4\(0)
    );
\p[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p_reg_n_0_[0]\,
      I1 => \p_reg_n_0_[1]\,
      O => \plusOp__4\(1)
    );
\p[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \p_reg_n_0_[0]\,
      I1 => \p_reg_n_0_[1]\,
      I2 => \p_reg_n_0_[2]\,
      O => \plusOp__4\(2)
    );
\p[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \p_reg_n_0_[1]\,
      I1 => \p_reg_n_0_[0]\,
      I2 => \p_reg_n_0_[2]\,
      I3 => \p_reg_n_0_[3]\,
      O => \plusOp__4\(3)
    );
\p[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF20"
    )
        port map (
      I0 => \^acmd_tx_w[valid]\,
      I1 => sel,
      I2 => \acmdr[rdy]\,
      I3 => wen,
      I4 => \p[4]_i_4_n_0\,
      O => p
    );
\p[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \p_reg_n_0_[2]\,
      I1 => \p_reg_n_0_[0]\,
      I2 => \p_reg_n_0_[1]\,
      I3 => \p_reg_n_0_[3]\,
      I4 => \p_reg_n_0_[4]\,
      O => \plusOp__4\(4)
    );
\p[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \p_reg_n_0_[0]\,
      I1 => \p_reg_n_0_[3]\,
      I2 => \p_reg_n_0_[4]\,
      I3 => \p_reg_n_0_[1]\,
      I4 => \p_reg_n_0_[2]\,
      O => \p[4]_i_4_n_0\
    );
\p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p,
      D => \plusOp__4\(0),
      Q => \p_reg_n_0_[0]\,
      R => p0
    );
\p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p,
      D => \plusOp__4\(1),
      Q => \p_reg_n_0_[1]\,
      R => p0
    );
\p_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p,
      D => \plusOp__4\(2),
      Q => \p_reg_n_0_[2]\,
      R => p0
    );
\p_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p,
      D => \plusOp__4\(3),
      Q => \p_reg_n_0_[3]\,
      R => p0
    );
\p_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p,
      D => \plusOp__4\(4),
      Q => \p_reg_n_0_[4]\,
      R => p0
    );
ram: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_lutram
     port map (
      CLK => CLK,
      Q(4) => \p_reg_n_0_[4]\,
      Q(3) => \p_reg_n_0_[3]\,
      Q(2) => \p_reg_n_0_[2]\,
      Q(1) => \p_reg_n_0_[1]\,
      Q(0) => \p_reg_n_0_[0]\,
      SR(0) => p0,
      d(8 downto 0) => d(8 downto 0),
      err_tx => \^err_tx\,
      \p_reg[0]\(8 downto 0) => \p_reg[0]_0\(8 downto 0),
      \ren__0\ => \ren__0\,
      trst => trst,
      wen => wen
    );
s_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => s0,
      Q => \^acmd_tx_w[valid]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_rx_phy is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    d : in STD_LOGIC;
    delay : in STD_LOGIC_VECTOR ( 3 downto 0 );
    locked : out STD_LOGIC;
    q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    k : out STD_LOGIC;
    stbo : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_rx_phy : entity is "pdts_rx_phy";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_pdts_endpoint_wrapper_0_0_pdts_rx_phy : entity is "soft";
end design_1_pdts_endpoint_wrapper_0_0_pdts_rx_phy;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_rx_phy is
  signal c : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of c : signal is std.standard.true;
  signal c_inferred_i_2_n_0 : STD_LOGIC;
  signal c_inferred_i_3_n_0 : STD_LOGIC;
  signal cctr : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of cctr : signal is std.standard.true;
  signal \cctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \cctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \cctr[1]_i_2_n_0\ : STD_LOGIC;
  signal cerr : STD_LOGIC;
  attribute MARK_DEBUG of cerr : signal is std.standard.true;
  signal dd : STD_LOGIC;
  attribute MARK_DEBUG of dd : signal is std.standard.true;
  signal dec_en : STD_LOGIC;
  attribute MARK_DEBUG of dec_en : signal is std.standard.true;
  signal derr : STD_LOGIC;
  attribute MARK_DEBUG of derr : signal is std.standard.true;
  signal ectr : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute MARK_DEBUG of ectr : signal is std.standard.true;
  signal \ectr[0]_i_1_n_0\ : STD_LOGIC;
  signal \ectr[1]_i_1_n_0\ : STD_LOGIC;
  signal \ectr[2]_i_1_n_0\ : STD_LOGIC;
  signal \ectr[3]_i_1_n_0\ : STD_LOGIC;
  signal \ectr[4]_i_1_n_0\ : STD_LOGIC;
  signal \ectr[5]_i_1_n_0\ : STD_LOGIC;
  signal \ectr[5]_i_3_n_0\ : STD_LOGIC;
  signal ectr_reg0 : STD_LOGIC;
  signal eok : STD_LOGIC;
  attribute MARK_DEBUG of eok : signal is std.standard.true;
  signal lctr : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute MARK_DEBUG of lctr : signal is std.standard.true;
  signal \lctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \lctr[5]_i_1_n_0\ : STD_LOGIC;
  signal lock : STD_LOGIC;
  attribute MARK_DEBUG of lock : signal is std.standard.true;
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sctr : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of sctr : signal is std.standard.true;
  signal \sctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sctr[3]_i_2_n_0\ : STD_LOGIC;
  signal \sctr[3]_i_3_n_0\ : STD_LOGIC;
  signal sctr_reg0 : STD_LOGIC;
  signal stb : STD_LOGIC;
  attribute MARK_DEBUG of stb : signal is std.standard.true;
  signal stbo0 : STD_LOGIC;
  signal w : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute MARK_DEBUG of w : signal is std.standard.true;
  attribute DEL_RADIX : integer;
  attribute DEL_RADIX of c_del : label is 4;
  attribute KEEP_HIERARCHY of c_del : label is "soft";
  attribute WIDTH : integer;
  attribute WIDTH of c_del : label is 1;
  attribute KEEP : string;
  attribute KEEP of \cctr_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \cctr_reg[0]\ : label is "true";
  attribute KEEP of \cctr_reg[1]\ : label is "yes";
  attribute mark_debug_string of \cctr_reg[1]\ : label is "true";
  attribute KEEP_HIERARCHY of dec : label is "soft";
  attribute KEEP of \ectr_reg[0]\ : label is "yes";
  attribute mark_debug_string of \ectr_reg[0]\ : label is "true";
  attribute KEEP of \ectr_reg[1]\ : label is "yes";
  attribute mark_debug_string of \ectr_reg[1]\ : label is "true";
  attribute KEEP of \ectr_reg[2]\ : label is "yes";
  attribute mark_debug_string of \ectr_reg[2]\ : label is "true";
  attribute KEEP of \ectr_reg[3]\ : label is "yes";
  attribute mark_debug_string of \ectr_reg[3]\ : label is "true";
  attribute KEEP of \ectr_reg[4]\ : label is "yes";
  attribute mark_debug_string of \ectr_reg[4]\ : label is "true";
  attribute KEEP of \ectr_reg[5]\ : label is "yes";
  attribute mark_debug_string of \ectr_reg[5]\ : label is "true";
  attribute KEEP of \lctr_reg[0]\ : label is "yes";
  attribute mark_debug_string of \lctr_reg[0]\ : label is "true";
  attribute KEEP of \lctr_reg[1]\ : label is "yes";
  attribute mark_debug_string of \lctr_reg[1]\ : label is "true";
  attribute KEEP of \lctr_reg[2]\ : label is "yes";
  attribute mark_debug_string of \lctr_reg[2]\ : label is "true";
  attribute KEEP of \lctr_reg[3]\ : label is "yes";
  attribute mark_debug_string of \lctr_reg[3]\ : label is "true";
  attribute KEEP of \lctr_reg[4]\ : label is "yes";
  attribute mark_debug_string of \lctr_reg[4]\ : label is "true";
  attribute KEEP of \lctr_reg[5]\ : label is "yes";
  attribute mark_debug_string of \lctr_reg[5]\ : label is "true";
  attribute KEEP of \sctr_reg[0]\ : label is "yes";
  attribute KEEP of \sctr_reg[1]\ : label is "yes";
  attribute KEEP of \sctr_reg[2]\ : label is "yes";
  attribute KEEP of \sctr_reg[3]\ : label is "yes";
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
  attribute mark_debug_string of d : signal is "true";
  attribute mark_debug_string of k : signal is "true";
  attribute mark_debug_string of q : signal is "true";
begin
  locked <= eok;
c_del: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_del
     port map (
      a(3 downto 0) => delay(3 downto 0),
      clk => clk,
      d(0) => d,
      q(0) => dd
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
\cctr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"84B4"
    )
        port map (
      I0 => lock,
      I1 => c,
      I2 => cctr(0),
      I3 => \cctr[1]_i_2_n_0\,
      O => \cctr[0]_i_1_n_0\
    );
\cctr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B040BF40"
    )
        port map (
      I0 => lock,
      I1 => cctr(0),
      I2 => c,
      I3 => cctr(1),
      I4 => \cctr[1]_i_2_n_0\,
      O => \cctr[1]_i_1_n_0\
    );
\cctr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => lctr(1),
      I1 => lctr(0),
      I2 => lctr(4),
      I3 => lctr(5),
      I4 => lctr(2),
      I5 => lctr(3),
      O => \cctr[1]_i_2_n_0\
    );
\cctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => stb,
      D => \cctr[0]_i_1_n_0\,
      Q => cctr(0),
      R => rst
    );
\cctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => stb,
      D => \cctr[1]_i_1_n_0\,
      Q => cctr(1),
      R => rst
    );
dec: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_dec8b10b
     port map (
      cerr => cerr,
      clk => clk,
      d(9 downto 0) => w(9 downto 0),
      derr => derr,
      en => dec_en,
      k => k,
      q(7 downto 0) => q(7 downto 0),
      rst => rst
    );
dec_en_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stb,
      I1 => lock,
      O => dec_en
    );
\ectr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ectr(0),
      O => \ectr[0]_i_1_n_0\
    );
\ectr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ectr(0),
      I1 => ectr(1),
      O => \ectr[1]_i_1_n_0\
    );
\ectr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ectr(1),
      I1 => ectr(0),
      I2 => ectr(2),
      O => \ectr[2]_i_1_n_0\
    );
\ectr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ectr(0),
      I1 => ectr(1),
      I2 => ectr(2),
      I3 => ectr(3),
      O => \ectr[3]_i_1_n_0\
    );
\ectr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ectr(2),
      I1 => ectr(1),
      I2 => ectr(0),
      I3 => ectr(3),
      I4 => ectr(4),
      O => \ectr[4]_i_1_n_0\
    );
\ectr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => lock,
      I1 => rst,
      I2 => cerr,
      I3 => derr,
      O => \ectr[5]_i_1_n_0\
    );
\ectr[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dec_en,
      I1 => eok,
      O => ectr_reg0
    );
\ectr[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ectr(3),
      I1 => ectr(0),
      I2 => ectr(1),
      I3 => ectr(2),
      I4 => ectr(4),
      I5 => ectr(5),
      O => \ectr[5]_i_3_n_0\
    );
\ectr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ectr_reg0,
      D => \ectr[0]_i_1_n_0\,
      Q => ectr(0),
      R => \ectr[5]_i_1_n_0\
    );
\ectr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ectr_reg0,
      D => \ectr[1]_i_1_n_0\,
      Q => ectr(1),
      R => \ectr[5]_i_1_n_0\
    );
\ectr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ectr_reg0,
      D => \ectr[2]_i_1_n_0\,
      Q => ectr(2),
      R => \ectr[5]_i_1_n_0\
    );
\ectr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ectr_reg0,
      D => \ectr[3]_i_1_n_0\,
      Q => ectr(3),
      R => \ectr[5]_i_1_n_0\
    );
\ectr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ectr_reg0,
      D => \ectr[4]_i_1_n_0\,
      Q => ectr(4),
      R => \ectr[5]_i_1_n_0\
    );
\ectr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ectr_reg0,
      D => \ectr[5]_i_3_n_0\,
      Q => ectr(5),
      R => \ectr[5]_i_1_n_0\
    );
eok_inferred_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ectr(1),
      I1 => ectr(0),
      I2 => ectr(4),
      I3 => ectr(5),
      I4 => ectr(2),
      I5 => ectr(3),
      O => eok
    );
\lctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lctr(0),
      O => plusOp(0)
    );
\lctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lctr(0),
      I1 => lctr(1),
      O => plusOp(1)
    );
\lctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => lctr(1),
      I1 => lctr(0),
      I2 => lctr(2),
      O => \lctr[2]_i_1_n_0\
    );
\lctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => lctr(0),
      I1 => lctr(1),
      I2 => lctr(2),
      I3 => lctr(3),
      O => plusOp(3)
    );
\lctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => lctr(2),
      I1 => lctr(1),
      I2 => lctr(0),
      I3 => lctr(3),
      I4 => lctr(4),
      O => plusOp(4)
    );
\lctr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rst,
      I1 => c,
      I2 => stb,
      O => \lctr[5]_i_1_n_0\
    );
\lctr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => lctr(3),
      I1 => lctr(0),
      I2 => lctr(1),
      I3 => lctr(2),
      I4 => lctr(4),
      I5 => lctr(5),
      O => plusOp(5)
    );
\lctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => stb,
      D => plusOp(0),
      Q => lctr(0),
      R => \lctr[5]_i_1_n_0\
    );
\lctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => stb,
      D => plusOp(1),
      Q => lctr(1),
      R => \lctr[5]_i_1_n_0\
    );
\lctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => stb,
      D => \lctr[2]_i_1_n_0\,
      Q => lctr(2),
      R => \lctr[5]_i_1_n_0\
    );
\lctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => stb,
      D => plusOp(3),
      Q => lctr(3),
      R => \lctr[5]_i_1_n_0\
    );
\lctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => stb,
      D => plusOp(4),
      Q => lctr(4),
      R => \lctr[5]_i_1_n_0\
    );
\lctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => stb,
      D => plusOp(5),
      Q => lctr(5),
      R => \lctr[5]_i_1_n_0\
    );
lock_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cctr(0),
      I1 => cctr(1),
      O => lock
    );
\sctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sctr(0),
      O => \sctr[0]_i_1_n_0\
    );
\sctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sctr(0),
      I1 => sctr(1),
      O => \sctr[1]_i_1_n_0\
    );
\sctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sctr(0),
      I1 => sctr(1),
      I2 => sctr(2),
      O => \sctr[2]_i_1_n_0\
    );
\sctr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEAEAEAEAEAEAE"
    )
        port map (
      I0 => rst,
      I1 => c,
      I2 => lock,
      I3 => \sctr[3]_i_3_n_0\,
      I4 => sctr(0),
      I5 => sctr(3),
      O => sctr_reg0
    );
\sctr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => sctr(1),
      I1 => sctr(0),
      I2 => sctr(2),
      I3 => sctr(3),
      O => \sctr[3]_i_2_n_0\
    );
\sctr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sctr(1),
      I1 => sctr(2),
      O => \sctr[3]_i_3_n_0\
    );
\sctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sctr[0]_i_1_n_0\,
      Q => sctr(0),
      R => sctr_reg0
    );
\sctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sctr[1]_i_1_n_0\,
      Q => sctr(1),
      R => sctr_reg0
    );
\sctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sctr[2]_i_1_n_0\,
      Q => sctr(2),
      R => sctr_reg0
    );
\sctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sctr[3]_i_2_n_0\,
      Q => sctr(3),
      R => sctr_reg0
    );
stb_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => sctr(2),
      I1 => sctr(1),
      I2 => sctr(3),
      I3 => sctr(0),
      O => stb
    );
stbo_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dec_en,
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
\w_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => w(1),
      Q => w(0),
      R => '0'
    );
\w_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => w(2),
      Q => w(1),
      R => '0'
    );
\w_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => w(3),
      Q => w(2),
      R => '0'
    );
\w_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => w(4),
      Q => w(3),
      R => '0'
    );
\w_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => w(5),
      Q => w(4),
      R => '0'
    );
\w_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => w(6),
      Q => w(5),
      R => '0'
    );
\w_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => w(7),
      Q => w(6),
      R => '0'
    );
\w_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => w(8),
      Q => w(7),
      R => '0'
    );
\w_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => w(9),
      Q => w(8),
      R => '0'
    );
\w_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dd,
      Q => w(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_synchro_pulse is
  port (
    in0 : out STD_LOGIC;
    reset_i : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rsto : in STD_LOGIC;
    CLK : in STD_LOGIC;
    sclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_synchro_pulse : entity is "pdts_synchro_pulse";
end design_1_pdts_endpoint_wrapper_0_0_pdts_synchro_pulse;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_synchro_pulse is
  signal dd : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dx : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dx12_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal qf : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal qfd : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal qs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal qsd : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\dd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => dd(0),
      R => '0'
    );
\dd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => dd(1),
      R => '0'
    );
\dx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => dx12_in(0),
      Q => dx(0),
      R => rsto
    );
\dx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => dx12_in(1),
      Q => dx(1),
      R => rsto
    );
\qfd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => qf(0),
      Q => qfd(0),
      R => '0'
    );
\qfd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => qf(1),
      Q => qfd(1),
      R => '0'
    );
reset_i_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => qs(1),
      I1 => qsd(1),
      O => reset_i
    );
resync_i_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => qs(0),
      I1 => qsd(0),
      O => in0
    );
s1: entity work.\design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0\
     port map (
      CLK => CLK,
      D(1 downto 0) => qs(1 downto 0),
      \da_reg[1]_0\(1 downto 0) => dx(1 downto 0),
      sclk => sclk
    );
s2: entity work.\design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized0_0\
     port map (
      CLK => CLK,
      D(1 downto 0) => qf(1 downto 0),
      Q(1 downto 0) => qsd(1 downto 0),
      \da_reg[1]_0\(1 downto 0) => qs(1 downto 0),
      dx12_in(1 downto 0) => dx12_in(1 downto 0),
      \dx_reg[1]\(1 downto 0) => qfd(1 downto 0),
      \dx_reg[1]_0\(1 downto 0) => dx(1 downto 0),
      \dx_reg[1]_1\(1 downto 0) => dd(1 downto 0),
      \dx_reg[1]_2\(1 downto 0) => D(1 downto 0),
      sclk => sclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_tx_phy is
  port (
    disp : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    stbo : in STD_LOGIC;
    CLK : in STD_LOGIC;
    trst : in STD_LOGIC;
    disp_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_tx_phy : entity is "pdts_tx_phy";
end design_1_pdts_endpoint_wrapper_0_0_pdts_tx_phy;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_tx_phy is
  signal enc_n_1 : STD_LOGIC;
  signal enc_n_10 : STD_LOGIC;
  signal enc_n_2 : STD_LOGIC;
  signal enc_n_3 : STD_LOGIC;
  signal enc_n_4 : STD_LOGIC;
  signal enc_n_5 : STD_LOGIC;
  signal enc_n_6 : STD_LOGIC;
  signal enc_n_7 : STD_LOGIC;
  signal enc_n_8 : STD_LOGIC;
  signal enc_n_9 : STD_LOGIC;
  signal s : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \wb[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \wb[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \wb[2]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \wb[3]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \wb[4]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \wb[5]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \wb[6]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \wb[7]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \wb[8]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \wb[9]_i_1\ : label is "soft_lutpair68";
begin
enc: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_enc8b10b
     port map (
      CLK => CLK,
      D(9 downto 0) => D(9 downto 0),
      Q(9) => enc_n_1,
      Q(8) => enc_n_2,
      Q(7) => enc_n_3,
      Q(6) => enc_n_4,
      Q(5) => enc_n_5,
      Q(4) => enc_n_6,
      Q(3) => enc_n_7,
      Q(2) => enc_n_8,
      Q(1) => enc_n_9,
      Q(0) => enc_n_10,
      disp => disp,
      disp_reg_0 => disp_reg,
      stbo => stbo,
      trst => trst
    );
s_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => stbo,
      Q => s,
      R => '0'
    );
\wb[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enc_n_10,
      I1 => s,
      I2 => wb(1),
      O => \wb[0]_i_1_n_0\
    );
\wb[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enc_n_9,
      I1 => s,
      I2 => wb(2),
      O => \wb[1]_i_1_n_0\
    );
\wb[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enc_n_8,
      I1 => s,
      I2 => wb(3),
      O => \wb[2]_i_1_n_0\
    );
\wb[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enc_n_7,
      I1 => s,
      I2 => wb(4),
      O => \wb[3]_i_1_n_0\
    );
\wb[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enc_n_6,
      I1 => s,
      I2 => wb(5),
      O => \wb[4]_i_1_n_0\
    );
\wb[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enc_n_5,
      I1 => s,
      I2 => wb(6),
      O => \wb[5]_i_1_n_0\
    );
\wb[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enc_n_4,
      I1 => s,
      I2 => wb(7),
      O => \wb[6]_i_1_n_0\
    );
\wb[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enc_n_3,
      I1 => s,
      I2 => wb(8),
      O => \wb[7]_i_1_n_0\
    );
\wb[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enc_n_2,
      I1 => s,
      I2 => wb(9),
      O => \wb[8]_i_1_n_0\
    );
\wb[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s,
      I1 => enc_n_1,
      O => \wb[9]_i_1_n_0\
    );
\wb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wb[0]_i_1_n_0\,
      Q => Q(0),
      R => '0'
    );
\wb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wb[1]_i_1_n_0\,
      Q => wb(1),
      R => '0'
    );
\wb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wb[2]_i_1_n_0\,
      Q => wb(2),
      R => '0'
    );
\wb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wb[3]_i_1_n_0\,
      Q => wb(3),
      R => '0'
    );
\wb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wb[4]_i_1_n_0\,
      Q => wb(4),
      R => '0'
    );
\wb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wb[5]_i_1_n_0\,
      Q => wb(5),
      R => '0'
    );
\wb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wb[6]_i_1_n_0\,
      Q => wb(6),
      R => '0'
    );
\wb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wb[7]_i_1_n_0\,
      Q => wb(7),
      R => '0'
    );
\wb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wb[8]_i_1_n_0\,
      Q => wb(8),
      R => '0'
    );
\wb_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wb[9]_i_1_n_0\,
      Q => wb(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_ep_ctrl is
  port (
    \acmdw_rx[valid]\ : out STD_LOGIC;
    \^q\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \acmd_tx_w[valid]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \addr_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \txdone__0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_reg[0]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ctrl_in[stb]\ : out STD_LOGIC;
    s0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \ctrl_out[ack]\ : in STD_LOGIC;
    wen : in STD_LOGIC;
    rxdone : in STD_LOGIC;
    trst : in STD_LOGIC;
    \txdone__0_0\ : in STD_LOGIC;
    \ren__0\ : in STD_LOGIC;
    sel : in STD_LOGIC;
    \acmdr[rdy]\ : in STD_LOGIC;
    \ctrl_out[d]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_11_in : in STD_LOGIC;
    \^d\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_ctrl : entity is "pdts_ep_ctrl";
end design_1_pdts_endpoint_wrapper_0_0_pdts_ep_ctrl;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_ctrl is
  signal \^acmd_tx_w[valid]\ : STD_LOGIC;
  signal \acmdw_rx[last]\ : STD_LOGIC;
  signal \^acmdw_rx[valid]\ : STD_LOGIC;
  signal \acmdw_tx[last]\ : STD_LOGIC;
  signal err_trans : STD_LOGIC;
  signal err_tx : STD_LOGIC;
  signal \p1__0\ : STD_LOGIC;
  signal \p1__0_1\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^p_reg[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^q_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rxdone__0\ : STD_LOGIC;
  signal s0_0 : STD_LOGIC;
  signal trans_n_2 : STD_LOGIC;
  signal \^txdone__0\ : STD_LOGIC;
begin
  \^q\(7 downto 0) <= \^q_1\(7 downto 0);
  \acmd_tx_w[valid]\ <= \^acmd_tx_w[valid]\;
  \acmdw_rx[valid]\ <= \^acmdw_rx[valid]\;
  \p_reg[0]\(8 downto 0) <= \^p_reg[0]\(8 downto 0);
  \txdone__0\ <= \^txdone__0\;
rxbuf: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf
     port map (
      CLK => CLK,
      D(7 downto 0) => \^q_1\(7 downto 0),
      Q(0) => err_trans,
      \acmdw_rx[last]\ => \acmdw_rx[last]\,
      \^d\(8 downto 0) => \^d\(8 downto 0),
      err_i_reg_0(0) => D(0),
      err_tx => err_tx,
      \p1__0\ => \p1__0_1\,
      p_11_in => p_11_in,
      rxdone => rxdone,
      s0 => s0,
      s_reg_0 => \^acmdw_rx[valid]\,
      trst => trst,
      \txdone__0\ => \^txdone__0\,
      wen => wen
    );
trans: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_ep_transactor
     port map (
      CLK => CLK,
      D(7 downto 0) => \^q_1\(7 downto 0),
      \FSM_onehot_state_reg[0]_0\ => \^acmd_tx_w[valid]\,
      \FSM_onehot_state_reg[0]_1\ => \^acmdw_rx[valid]\,
      Q(1) => Q(0),
      Q(0) => err_trans,
      \acmdr[rdy]\ => \acmdr[rdy]\,
      \acmdw_rx[last]\ => \acmdw_rx[last]\,
      \acmdw_tx[last]\ => \acmdw_tx[last]\,
      \addr_reg[6]_0\(6 downto 0) => \addr_reg[6]\(6 downto 0),
      \ctrl_in[stb]\ => \ctrl_in[stb]\,
      \ctrl_out[ack]\ => \ctrl_out[ack]\,
      \ctrl_out[d]\(7 downto 0) => \ctrl_out[d]\(7 downto 0),
      \^d\(7 downto 0) => p_0_out(7 downto 0),
      \p1__0\ => \p1__0_1\,
      \p1__0_1\ => \p1__0\,
      \ren__0\ => \ren__0\,
      \rxdone__0\ => \rxdone__0\,
      s0 => s0_0,
      s_reg(0) => \^p_reg[0]\(8),
      sel => sel,
      trst => trst,
      \txdone__0\ => \^txdone__0\,
      wen => wen,
      wen_0 => trans_n_2
    );
txbuf: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_pktbuf_3
     port map (
      CLK => CLK,
      \acmd_tx_w[valid]\ => \^acmd_tx_w[valid]\,
      \acmdr[rdy]\ => \acmdr[rdy]\,
      d(8) => \acmdw_tx[last]\,
      d(7 downto 0) => p_0_out(7 downto 0),
      err_tx => err_tx,
      \p1__0\ => \p1__0\,
      \p_reg[0]_0\(8 downto 0) => \^p_reg[0]\(8 downto 0),
      \ren__0\ => \ren__0\,
      \rxdone__0\ => \rxdone__0\,
      s0 => s0_0,
      sel => sel,
      trst => trst,
      \txdone__0_0\ => \txdone__0_0\,
      wen => trans_n_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_ep_sm is
  port (
    q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    trst : out STD_LOGIC;
    rst : out STD_LOGIC;
    sclk : in STD_LOGIC;
    CLK : in STD_LOGIC;
    srst : in STD_LOGIC;
    rsto : in STD_LOGIC;
    resync : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    locked : in STD_LOGIC;
    \dd_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    addr_done : in STD_LOGIC;
    deskew_done : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_sm : entity is "pdts_ep_sm";
end design_1_pdts_endpoint_wrapper_0_0_pdts_ep_sm;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_sm is
  signal cctr01_out : STD_LOGIC;
  signal \cctr[15]_i_1_n_0\ : STD_LOGIC;
  signal \cctr[15]_i_3_n_0\ : STD_LOGIC;
  signal \cctr[15]_i_4_n_0\ : STD_LOGIC;
  signal \cctr[15]_i_5_n_0\ : STD_LOGIC;
  signal cctr_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cdr_ok : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of cdr_ok : signal is std.standard.true;
  signal clk_ok : STD_LOGIC;
  attribute MARK_DEBUG of clk_ok : signal is std.standard.true;
  signal f_ok_i_1_n_0 : STD_LOGIC;
  signal f_ok_i_2_n_0 : STD_LOGIC;
  signal f_ok_i_3_n_0 : STD_LOGIC;
  signal f_ok_i_4_n_0 : STD_LOGIC;
  signal f_ok_i_5_n_0 : STD_LOGIC;
  signal f_ok_reg_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 2 to 2 );
  signal pkt_err_i : STD_LOGIC;
  attribute MARK_DEBUG of pkt_err_i : signal is std.standard.true;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal \plusOp__6\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \plusOp__7\ : STD_LOGIC_VECTOR ( 15 downto 0 );
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
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rctr[7]_i_2_n_0\ : STD_LOGIC;
  signal rctr_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \rctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[3]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[4]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[5]\ : STD_LOGIC;
  signal \rctr_reg_n_0_[6]\ : STD_LOGIC;
  signal rdy : STD_LOGIC;
  attribute MARK_DEBUG of rdy : signal is std.standard.true;
  signal reg_rst : STD_LOGIC;
  signal reset_i : STD_LOGIC;
  attribute MARK_DEBUG of reset_i : signal is std.standard.true;
  signal resync_i : STD_LOGIC;
  attribute MARK_DEBUG of resync_i : signal is std.standard.true;
  signal rx_en_i : STD_LOGIC;
  attribute MARK_DEBUG of rx_en_i : signal is std.standard.true;
  signal rx_ok : STD_LOGIC;
  attribute MARK_DEBUG of rx_ok : signal is std.standard.true;
  signal \sctr[15]_i_1_n_0\ : STD_LOGIC;
  signal sctr_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^stat\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of state : signal is std.standard.true;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_5_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_5_n_0\ : STD_LOGIC;
  signal state_reg0 : STD_LOGIC;
  signal t : STD_LOGIC;
  signal td : STD_LOGIC;
  signal ts_ok : STD_LOGIC;
  attribute MARK_DEBUG of ts_ok : signal is std.standard.true;
  signal \NLW_plusOp__28_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_plusOp__28_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_plusOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of phy_i_1 : label is "soft_lutpair56";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \plusOp__28_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__28_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \rctr[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rctr[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rctr[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rctr[4]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair56";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "st_reset:0000,st_w_clk:0001,st_w_freq:0010,st_w_cdr:0011,st_w_rx:0100,st_w_addr:0101,st_w_deskew:0110,st_w_ts:0111,st_ready:1000,st_err_p:1001,st_err_r:1010,st_err_t:1011,st_err_x:1100";
  attribute KEEP : string;
  attribute KEEP of \state_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \state_reg[0]\ : label is "true";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "st_reset:0000,st_w_clk:0001,st_w_freq:0010,st_w_cdr:0011,st_w_rx:0100,st_w_addr:0101,st_w_deskew:0110,st_w_ts:0111,st_ready:1000,st_err_p:1001,st_err_r:1010,st_err_t:1011,st_err_x:1100";
  attribute KEEP of \state_reg[1]\ : label is "yes";
  attribute mark_debug_string of \state_reg[1]\ : label is "true";
  attribute FSM_ENCODED_STATES of \state_reg[2]\ : label is "st_reset:0000,st_w_clk:0001,st_w_freq:0010,st_w_cdr:0011,st_w_rx:0100,st_w_addr:0101,st_w_deskew:0110,st_w_ts:0111,st_ready:1000,st_err_p:1001,st_err_r:1010,st_err_t:1011,st_err_x:1100";
  attribute KEEP of \state_reg[2]\ : label is "yes";
  attribute mark_debug_string of \state_reg[2]\ : label is "true";
  attribute FSM_ENCODED_STATES of \state_reg[3]\ : label is "st_reset:0000,st_w_clk:0001,st_w_freq:0010,st_w_cdr:0011,st_w_rx:0100,st_w_addr:0101,st_w_deskew:0110,st_w_ts:0111,st_ready:1000,st_err_p:1001,st_err_r:1010,st_err_t:1011,st_err_x:1100";
  attribute KEEP of \state_reg[3]\ : label is "yes";
  attribute mark_debug_string of \state_reg[3]\ : label is "true";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of sync_clk : label is "soft";
  attribute N : integer;
  attribute N of sync_clk : label is 3;
begin
  q(1 downto 0) <= \^q\(1 downto 0);
  stat(3) <= state(3);
  stat(2 downto 0) <= \^stat\(2 downto 0);
\cctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cctr_reg(0),
      O => \plusOp__7\(0)
    );
\cctr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \sctr[15]_i_1_n_0\,
      I1 => \cctr[15]_i_3_n_0\,
      I2 => \cctr[15]_i_4_n_0\,
      I3 => sctr_reg(0),
      I4 => sctr_reg(1),
      I5 => \cctr[15]_i_5_n_0\,
      O => \cctr[15]_i_1_n_0\
    );
\cctr[15]_i_3\: unisim.vcomponents.LUT6
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
      O => \cctr[15]_i_3_n_0\
    );
\cctr[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sctr_reg(2),
      I1 => sctr_reg(3),
      O => \cctr[15]_i_4_n_0\
    );
\cctr[15]_i_5\: unisim.vcomponents.LUT6
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
      O => \cctr[15]_i_5_n_0\
    );
\cctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(0),
      Q => cctr_reg(0),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(10),
      Q => cctr_reg(10),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(11),
      Q => cctr_reg(11),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(12),
      Q => cctr_reg(12),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(13),
      Q => cctr_reg(13),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(14),
      Q => cctr_reg(14),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(15),
      Q => cctr_reg(15),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(1),
      Q => cctr_reg(1),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(2),
      Q => cctr_reg(2),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(3),
      Q => cctr_reg(3),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(4),
      Q => cctr_reg(4),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(5),
      Q => cctr_reg(5),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(6),
      Q => cctr_reg(6),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(7),
      Q => cctr_reg(7),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(8),
      Q => cctr_reg(8),
      R => \cctr[15]_i_1_n_0\
    );
\cctr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => cctr01_out,
      D => \plusOp__7\(9),
      Q => cctr_reg(9),
      R => \cctr[15]_i_1_n_0\
    );
f_ok_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \cctr[15]_i_5_n_0\,
      I1 => f_ok_i_2_n_0,
      I2 => f_ok_reg_n_0,
      O => f_ok_i_1_n_0
    );
f_ok_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \cctr[15]_i_3_n_0\,
      I1 => f_ok_i_3_n_0,
      I2 => f_ok_i_4_n_0,
      I3 => f_ok_i_5_n_0,
      I4 => cctr_reg(0),
      I5 => cctr_reg(1),
      O => f_ok_i_2_n_0
    );
f_ok_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => sctr_reg(0),
      I1 => sctr_reg(1),
      I2 => cctr_reg(14),
      I3 => cctr_reg(15),
      I4 => sctr_reg(3),
      I5 => sctr_reg(2),
      O => f_ok_i_3_n_0
    );
f_ok_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cctr_reg(10),
      I1 => cctr_reg(11),
      I2 => cctr_reg(8),
      I3 => cctr_reg(9),
      I4 => cctr_reg(13),
      I5 => cctr_reg(12),
      O => f_ok_i_4_n_0
    );
f_ok_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => cctr_reg(5),
      I1 => cctr_reg(4),
      I2 => cctr_reg(2),
      I3 => cctr_reg(3),
      I4 => cctr_reg(6),
      I5 => cctr_reg(7),
      O => f_ok_i_5_n_0
    );
f_ok_reg: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => f_ok_i_1_n_0,
      Q => f_ok_reg_n_0,
      R => \sctr[15]_i_1_n_0\
    );
phy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^q\(1),
      I1 => rsto,
      I2 => D(0),
      I3 => resync,
      O => trst
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
      O(7 downto 0) => \plusOp__7\(8 downto 1),
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
      O(6 downto 0) => \plusOp__7\(15 downto 9),
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
      O(7 downto 0) => \plusOp__6\(8 downto 1),
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
      O(6 downto 0) => \plusOp__6\(15 downto 9),
      S(7) => '0',
      S(6 downto 0) => sctr_reg(15 downto 9)
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
      INIT => X"78"
    )
        port map (
      I0 => \rctr_reg_n_0_[0]\,
      I1 => \rctr_reg_n_0_[1]\,
      I2 => \rctr_reg_n_0_[2]\,
      O => plusOp(2)
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
      O => plusOp(3)
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
      O => plusOp(4)
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
      O => plusOp(5)
    );
\rctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rctr[7]_i_2_n_0\,
      I1 => \rctr_reg_n_0_[6]\,
      O => plusOp(6)
    );
\rctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rctr[7]_i_2_n_0\,
      I1 => \rctr_reg_n_0_[6]\,
      I2 => rctr_reg(7),
      O => plusOp(7)
    );
\rctr[7]_i_2\: unisim.vcomponents.LUT6
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
      O => \rctr[7]_i_2_n_0\
    );
\rctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => plusOp(0),
      Q => \rctr_reg_n_0_[0]\,
      R => rsto
    );
\rctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => plusOp(1),
      Q => \rctr_reg_n_0_[1]\,
      R => rsto
    );
\rctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => plusOp(2),
      Q => \rctr_reg_n_0_[2]\,
      R => rsto
    );
\rctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => plusOp(3),
      Q => \rctr_reg_n_0_[3]\,
      R => rsto
    );
\rctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => plusOp(4),
      Q => \rctr_reg_n_0_[4]\,
      R => rsto
    );
\rctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => plusOp(5),
      Q => \rctr_reg_n_0_[5]\,
      R => rsto
    );
\rctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => plusOp(6),
      Q => \rctr_reg_n_0_[6]\,
      R => rsto
    );
\rctr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => plusOp(7),
      Q => rctr_reg(7),
      S => rsto
    );
rdy_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      I3 => state(0),
      O => rdy
    );
regfile_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rsto,
      I1 => reg_rst,
      O => rst
    );
rx_en_i_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => rx_en_i
    );
\sctr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sctr_reg(0),
      O => \plusOp__6\(0)
    );
\sctr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      O => \sctr[15]_i_1_n_0\
    );
\sctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(0),
      Q => sctr_reg(0),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(10),
      Q => sctr_reg(10),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(11),
      Q => sctr_reg(11),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(12),
      Q => sctr_reg(12),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(13),
      Q => sctr_reg(13),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(14),
      Q => sctr_reg(14),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(15),
      Q => sctr_reg(15),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(1),
      Q => sctr_reg(1),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(2),
      Q => sctr_reg(2),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(3),
      Q => sctr_reg(3),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(4),
      Q => sctr_reg(4),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(5),
      Q => sctr_reg(5),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(6),
      Q => sctr_reg(6),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(7),
      Q => sctr_reg(7),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(8),
      Q => sctr_reg(8),
      R => \sctr[15]_i_1_n_0\
    );
\sctr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \plusOp__6\(9),
      Q => sctr_reg(9),
      R => \sctr[15]_i_1_n_0\
    );
\stat[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BCAC"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(3),
      I3 => state(1),
      O => \^stat\(0)
    );
\stat[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EACC"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => state(3),
      O => \^stat\(1)
    );
\stat[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => \^stat\(2)
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F700F7000000F7"
    )
        port map (
      I0 => cdr_ok,
      I1 => clk_ok,
      I2 => \state[0]_i_2_n_0\,
      I3 => \state[0]_i_3_n_0\,
      I4 => \state[0]_i_4_n_0\,
      I5 => \state[0]_i_5_n_0\,
      O => \p_0_in__0\(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE00FF5DEE4CFF5D"
    )
        port map (
      I0 => state(3),
      I1 => rx_ok,
      I2 => ts_ok,
      I3 => state(0),
      I4 => state(2),
      I5 => state(1),
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4440"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      I4 => resync_i,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000404FF030404"
    )
        port map (
      I0 => f_ok_reg_n_0,
      I1 => state(1),
      I2 => state(2),
      I3 => cdr_ok,
      I4 => state(0),
      I5 => state(3),
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0FDF0F"
    )
        port map (
      I0 => addr_done,
      I1 => deskew_done,
      I2 => clk_ok,
      I3 => state(2),
      I4 => state(1),
      O => \state[0]_i_5_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => resync,
      I1 => D(0),
      I2 => rsto,
      I3 => \^q\(1),
      I4 => locked,
      O => SR(0)
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBAAA"
    )
        port map (
      I0 => \state[1]_i_2__0_n_0\,
      I1 => resync_i,
      I2 => state(3),
      I3 => state(1),
      I4 => \state[1]_i_3__0_n_0\,
      O => \p_0_in__0\(1)
    );
\state[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808880888088AAAA"
    )
        port map (
      I0 => \state[3]_i_5_n_0\,
      I1 => \state[1]_i_4__0_n_0\,
      I2 => addr_done,
      I3 => rx_ok,
      I4 => resync_i,
      I5 => \state[1]_i_5__0_n_0\,
      O => \state[1]_i_2__0_n_0\
    );
\state[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000006E0000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => cdr_ok,
      I3 => state(3),
      I4 => clk_ok,
      I5 => state(2),
      O => \state[1]_i_3__0_n_0\
    );
\state[1]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      I2 => state(1),
      O => \state[1]_i_4__0_n_0\
    );
\state[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5550000FFFFFBBB"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => ts_ok,
      I3 => rx_ok,
      I4 => state(0),
      I5 => state(1),
      O => \state[1]_i_5__0_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E0FFF0FFE0FF"
    )
        port map (
      I0 => resync_i,
      I1 => \state[2]_i_2_n_0\,
      I2 => state(3),
      I3 => \state[2]_i_3_n_0\,
      I4 => state(2),
      I5 => \state[2]_i_4_n_0\,
      O => \p_0_in__0\(2)
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => state(2),
      I1 => pkt_err_i,
      I2 => \state[3]_i_5_n_0\,
      I3 => state(1),
      I4 => state(0),
      I5 => \state[2]_i_5_n_0\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDDDDDDDDDDDDDDD"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => clk_ok,
      I3 => state(1),
      I4 => state(0),
      I5 => cdr_ok,
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D5505000FFFFFF"
    )
        port map (
      I0 => rx_ok,
      I1 => ts_ok,
      I2 => state(0),
      I3 => resync_i,
      I4 => state(1),
      I5 => \state[3]_i_5_n_0\,
      O => \state[2]_i_4_n_0\
    );
\state[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ts_ok,
      I1 => rx_ok,
      O => \state[2]_i_5_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => srst,
      I1 => reset_i,
      O => state_reg0
    );
\state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => resync_i,
      I1 => state(3),
      I2 => \state[3]_i_3_n_0\,
      I3 => \state[3]_i_4_n_0\,
      I4 => state(2),
      O => \p_0_in__0\(3)
    );
\state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FF8888F8FF"
    )
        port map (
      I0 => \state[3]_i_5_n_0\,
      I1 => rx_ok,
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => resync_i,
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => resync_i,
      I1 => state(1),
      I2 => state(0),
      I3 => ts_ok,
      O => \state[3]_i_4_n_0\
    );
\state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cdr_ok,
      I1 => clk_ok,
      O => \state[3]_i_5_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => state(0),
      R => state_reg0
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => state(1),
      R => state_reg0
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => state(2),
      R => state_reg0
    );
\state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sclk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => state(3),
      R => state_reg0
    );
sync_clk: entity work.\design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized2\
     port map (
      clk => sclk,
      clks => CLK,
      d(2) => p_3_out(2),
      d(1) => rx_en_i,
      d(0) => rdy,
      q(2) => reg_rst,
      q(1 downto 0) => \^q\(1 downto 0)
    );
sync_clk_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(3),
      I3 => state(2),
      O => p_3_out(2)
    );
sync_sys_clk: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_synchro
     port map (
      CLK => CLK,
      D(3 downto 0) => D(3 downto 0),
      \out\(4) => pkt_err_i,
      \out\(3) => ts_ok,
      \out\(2) => rx_ok,
      \out\(1) => cdr_ok,
      \out\(0) => clk_ok,
      rsto => rsto,
      sclk => sclk
    );
sync_sys_clk_p: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_synchro_pulse
     port map (
      CLK => CLK,
      D(1) => \dd_reg[1]\(0),
      D(0) => resync,
      in0 => resync_i,
      reset_i => reset_i,
      rsto => rsto,
      sclk => sclk
    );
sync_t: entity work.\design_1_pdts_endpoint_wrapper_0_0_pdts_synchro__parameterized1\
     port map (
      CLK => CLK,
      E(0) => cctr01_out,
      Q(0) => rctr_reg(7),
      \out\ => t,
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
entity design_1_pdts_endpoint_wrapper_0_0_pdts_rx_pkt is
  port (
    d : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wen : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s0 : out STD_LOGIC;
    p_11_in : out STD_LOGIC;
    s : out STD_LOGIC;
    sync_stb : out STD_LOGIC;
    rxdone : out STD_LOGIC;
    q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    \acmdw_rx[valid]\ : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \actr_i_reg[4]\ : in STD_LOGIC;
    locked : in STD_LOGIC;
    \txdone__0\ : in STD_LOGIC;
    trst : in STD_LOGIC;
    lock_reg : in STD_LOGIC;
    k : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_rx_pkt : entity is "pdts_rx_pkt";
end design_1_pdts_endpoint_wrapper_0_0_pdts_rx_pkt;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_rx_pkt is
  signal \a_bcast[0]_i_1_n_0\ : STD_LOGIC;
  signal \a_bcast[0]_i_2_n_0\ : STD_LOGIC;
  signal \a_bcast[1]_i_1_n_0\ : STD_LOGIC;
  signal \a_bcast[1]_i_2_n_0\ : STD_LOGIC;
  signal \a_bcast[1]_i_4_n_0\ : STD_LOGIC;
  signal \a_bcast_reg_n_0_[0]\ : STD_LOGIC;
  signal \a_bcast_reg_n_0_[1]\ : STD_LOGIC;
  signal a_match : STD_LOGIC;
  signal a_match_d : STD_LOGIC;
  signal \a_ucast1__2\ : STD_LOGIC;
  signal \a_ucast[0]_i_1_n_0\ : STD_LOGIC;
  signal \a_ucast[0]_i_2_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_10_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_11_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_12_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_13_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_1_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_2_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_3_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_4_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_5_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_6_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_7_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_8_n_0\ : STD_LOGIC;
  signal \a_ucast[1]_i_9_n_0\ : STD_LOGIC;
  signal \a_ucast_reg_n_0_[0]\ : STD_LOGIC;
  signal \a_ucast_reg_n_0_[1]\ : STD_LOGIC;
  signal \acmd_rx_w[valid]\ : STD_LOGIC;
  signal actr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ada0 : STD_LOGIC;
  signal \adb_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal \adb_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \adb_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \adb_reg[3]_srl2_n_0\ : STD_LOGIC;
  signal \adb_reg[4]_srl2_n_0\ : STD_LOGIC;
  signal \adb_reg[5]_srl2_n_0\ : STD_LOGIC;
  signal \adb_reg[6]_srl2_n_0\ : STD_LOGIC;
  signal \adb_reg[7]_srl2_n_0\ : STD_LOGIC;
  signal \avalid0__1\ : STD_LOGIC;
  signal cksum_n_0 : STD_LOGIC;
  signal cksum_n_8 : STD_LOGIC;
  signal issue : STD_LOGIC;
  signal ka : STD_LOGIC;
  signal ks : STD_LOGIC;
  signal \^p_11_in\ : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal pend : STD_LOGIC;
  signal pend0 : STD_LOGIC;
  signal \pend3__3\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_reg_0_31_8_8_i_2_n_0 : STD_LOGIC;
  signal ram_reg_0_31_8_8_i_6_n_0 : STD_LOGIC;
  signal sctr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^ss\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state0__0\ : STD_LOGIC;
  signal state35_out : STD_LOGIC;
  signal state40_in : STD_LOGIC;
  signal state5 : STD_LOGIC;
  signal \state6__3\ : STD_LOGIC;
  signal \state[1]_i_6_n_0\ : STD_LOGIC;
  signal \state[1]_i_8_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \^sync_stb\ : STD_LOGIC;
  signal sync_stb_INST_0_i_4_n_0 : STD_LOGIC;
  signal ts : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ts0 : STD_LOGIC;
  signal \vctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \vctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \vctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \vctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \vctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \vctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \vctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \vctr_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_ucast[0]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \a_ucast[1]_i_12\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \a_ucast[1]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \a_ucast[1]_i_6\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \actr[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \actr[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \actr[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \actr[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \actr[4]_i_1\ : label is "soft_lutpair47";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \adb_reg[0]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg ";
  attribute srl_name : string;
  attribute srl_name of \adb_reg[0]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg[0]_srl2 ";
  attribute srl_bus_name of \adb_reg[1]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg ";
  attribute srl_name of \adb_reg[1]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg[1]_srl2 ";
  attribute srl_bus_name of \adb_reg[2]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg ";
  attribute srl_name of \adb_reg[2]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg[2]_srl2 ";
  attribute srl_bus_name of \adb_reg[3]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg ";
  attribute srl_name of \adb_reg[3]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg[3]_srl2 ";
  attribute srl_bus_name of \adb_reg[4]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg ";
  attribute srl_name of \adb_reg[4]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg[4]_srl2 ";
  attribute srl_bus_name of \adb_reg[5]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg ";
  attribute srl_name of \adb_reg[5]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg[5]_srl2 ";
  attribute srl_bus_name of \adb_reg[6]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg ";
  attribute srl_name of \adb_reg[6]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg[6]_srl2 ";
  attribute srl_bus_name of \adb_reg[7]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg ";
  attribute srl_name of \adb_reg[7]_srl2\ : label is "\inst/ts_ep/ep/rx/pkt/adb_reg[7]_srl2 ";
  attribute SOFT_HLUTNM of \da[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of ram_reg_0_31_8_8_i_4 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of ram_reg_0_31_8_8_i_6 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of s_i_2 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \sctr[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \sctr[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \sctr[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \sctr[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sctr[4]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \state[1]_i_7\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \state[1]_i_8\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \state[1]_i_9\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of sync_stb_INST_0_i_1 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \vctr[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \vctr[3]_i_1\ : label is "soft_lutpair52";
begin
  p_11_in <= \^p_11_in\;
  sync_stb <= \^sync_stb\;
\a_bcast[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => q(7),
      I1 => \a_bcast[0]_i_2_n_0\,
      I2 => q(6),
      I3 => \a_ucast1__2\,
      I4 => \a_bcast_reg_n_0_[0]\,
      O => \a_bcast[0]_i_1_n_0\
    );
\a_bcast[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \a_ucast[0]_i_2_n_0\,
      I1 => q(0),
      I2 => q(2),
      I3 => q(1),
      I4 => \a_bcast[1]_i_4_n_0\,
      I5 => cksum_n_8,
      O => \a_bcast[0]_i_2_n_0\
    );
\a_bcast[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => q(7),
      I1 => \a_bcast[1]_i_2_n_0\,
      I2 => q(6),
      I3 => \a_ucast1__2\,
      I4 => \a_bcast_reg_n_0_[1]\,
      O => \a_bcast[1]_i_1_n_0\
    );
\a_bcast[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \a_ucast[1]_i_2_n_0\,
      I1 => q(0),
      I2 => q(2),
      I3 => q(1),
      I4 => \a_bcast[1]_i_4_n_0\,
      I5 => cksum_n_8,
      O => \a_bcast[1]_i_2_n_0\
    );
\a_bcast[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => actr_reg(1),
      I1 => actr_reg(2),
      I2 => actr_reg(4),
      I3 => actr_reg(3),
      I4 => p_12_in,
      O => \a_ucast1__2\
    );
\a_bcast[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => q(5),
      I1 => q(4),
      I2 => q(3),
      O => \a_bcast[1]_i_4_n_0\
    );
\a_bcast_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \a_bcast[0]_i_1_n_0\,
      Q => \a_bcast_reg_n_0_[0]\,
      R => ka
    );
\a_bcast_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \a_bcast[1]_i_1_n_0\,
      Q => \a_bcast_reg_n_0_[1]\,
      R => ka
    );
a_match_d_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_12_in,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      O => ada0
    );
a_match_d_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \a_ucast_reg_n_0_[1]\,
      I1 => \a_ucast_reg_n_0_[0]\,
      I2 => \a_bcast_reg_n_0_[1]\,
      I3 => \a_bcast_reg_n_0_[0]\,
      O => a_match
    );
a_match_d_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => ada0,
      D => a_match,
      Q => a_match_d,
      R => '0'
    );
\a_ucast[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \a_ucast[0]_i_2_n_0\,
      I1 => \a_ucast[1]_i_3_n_0\,
      I2 => \a_ucast[1]_i_4_n_0\,
      I3 => \a_ucast1__2\,
      I4 => \a_ucast_reg_n_0_[0]\,
      O => \a_ucast[0]_i_1_n_0\
    );
\a_ucast[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => actr_reg(3),
      I1 => actr_reg(4),
      I2 => actr_reg(1),
      I3 => actr_reg(2),
      I4 => actr_reg(0),
      O => \a_ucast[0]_i_2_n_0\
    );
\a_ucast[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \a_ucast[1]_i_2_n_0\,
      I1 => \a_ucast[1]_i_3_n_0\,
      I2 => \a_ucast[1]_i_4_n_0\,
      I3 => \a_ucast1__2\,
      I4 => \a_ucast_reg_n_0_[1]\,
      O => \a_ucast[1]_i_1_n_0\
    );
\a_ucast[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => q(2),
      I1 => q(3),
      I2 => q(0),
      I3 => q(1),
      O => \a_ucast[1]_i_10_n_0\
    );
\a_ucast[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4450BBAF"
    )
        port map (
      I0 => actr_reg(1),
      I1 => addr(15),
      I2 => addr(7),
      I3 => actr_reg(0),
      I4 => q(7),
      O => \a_ucast[1]_i_11_n_0\
    );
\a_ucast[1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4450BBAF"
    )
        port map (
      I0 => actr_reg(1),
      I1 => addr(13),
      I2 => addr(5),
      I3 => actr_reg(0),
      I4 => q(5),
      O => \a_ucast[1]_i_12_n_0\
    );
\a_ucast[1]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4450BBAF"
    )
        port map (
      I0 => actr_reg(1),
      I1 => addr(10),
      I2 => addr(2),
      I3 => actr_reg(0),
      I4 => q(2),
      O => \a_ucast[1]_i_13_n_0\
    );
\a_ucast[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => actr_reg(0),
      I1 => actr_reg(3),
      I2 => actr_reg(4),
      I3 => actr_reg(1),
      I4 => actr_reg(2),
      O => \a_ucast[1]_i_2_n_0\
    );
\a_ucast[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \a_ucast[1]_i_5_n_0\,
      I1 => \a_ucast[1]_i_6_n_0\,
      I2 => \a_ucast[1]_i_7_n_0\,
      I3 => \a_ucast[1]_i_8_n_0\,
      I4 => \a_ucast[1]_i_9_n_0\,
      O => \a_ucast[1]_i_3_n_0\
    );
\a_ucast[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => q(5),
      I1 => q(4),
      I2 => q(6),
      I3 => q(7),
      I4 => \a_ucast[1]_i_10_n_0\,
      O => \a_ucast[1]_i_4_n_0\
    );
\a_ucast[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA569AFFFFFFFF"
    )
        port map (
      I0 => q(6),
      I1 => actr_reg(0),
      I2 => addr(6),
      I3 => addr(14),
      I4 => actr_reg(1),
      I5 => \a_ucast[1]_i_11_n_0\,
      O => \a_ucast[1]_i_5_n_0\
    );
\a_ucast[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4450BBAF"
    )
        port map (
      I0 => actr_reg(1),
      I1 => addr(11),
      I2 => addr(3),
      I3 => actr_reg(0),
      I4 => q(3),
      O => \a_ucast[1]_i_6_n_0\
    );
\a_ucast[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A96500000000"
    )
        port map (
      I0 => q(4),
      I1 => actr_reg(0),
      I2 => addr(4),
      I3 => addr(12),
      I4 => actr_reg(1),
      I5 => \a_ucast[1]_i_12_n_0\,
      O => \a_ucast[1]_i_7_n_0\
    );
\a_ucast[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4450BBAF"
    )
        port map (
      I0 => actr_reg(1),
      I1 => addr(8),
      I2 => addr(0),
      I3 => actr_reg(0),
      I4 => q(0),
      O => \a_ucast[1]_i_8_n_0\
    );
\a_ucast[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A96500000000"
    )
        port map (
      I0 => q(1),
      I1 => actr_reg(0),
      I2 => addr(1),
      I3 => addr(9),
      I4 => actr_reg(1),
      I5 => \a_ucast[1]_i_13_n_0\,
      O => \a_ucast[1]_i_9_n_0\
    );
\a_ucast_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \a_ucast[0]_i_1_n_0\,
      Q => \a_ucast_reg_n_0_[0]\,
      R => ka
    );
\a_ucast_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \a_ucast[1]_i_1_n_0\,
      Q => \a_ucast_reg_n_0_[1]\,
      R => ka
    );
\actr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => actr_reg(0),
      O => \plusOp__0\(0)
    );
\actr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => actr_reg(0),
      I1 => actr_reg(1),
      O => \plusOp__0\(1)
    );
\actr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => actr_reg(0),
      I1 => actr_reg(1),
      I2 => actr_reg(2),
      O => \plusOp__0\(2)
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
      O => \plusOp__0\(3)
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
      O => \plusOp__0\(4)
    );
\actr_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SS(0),
      I1 => \actr_i_reg[4]\,
      O => E(0)
    );
\actr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_12_in,
      D => \plusOp__0\(0),
      Q => actr_reg(0),
      R => ka
    );
\actr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_12_in,
      D => \plusOp__0\(1),
      Q => actr_reg(1),
      R => ka
    );
\actr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_12_in,
      D => \plusOp__0\(2),
      Q => actr_reg(2),
      R => ka
    );
\actr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_12_in,
      D => \plusOp__0\(3),
      Q => actr_reg(3),
      R => ka
    );
\actr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_12_in,
      D => \plusOp__0\(4),
      Q => actr_reg(4),
      R => ka
    );
\adb_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => ada0,
      CLK => CLK,
      D => q(0),
      Q => \adb_reg[0]_srl2_n_0\
    );
\adb_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => ada0,
      CLK => CLK,
      D => q(1),
      Q => \adb_reg[1]_srl2_n_0\
    );
\adb_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => ada0,
      CLK => CLK,
      D => q(2),
      Q => \adb_reg[2]_srl2_n_0\
    );
\adb_reg[3]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => ada0,
      CLK => CLK,
      D => q(3),
      Q => \adb_reg[3]_srl2_n_0\
    );
\adb_reg[4]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => ada0,
      CLK => CLK,
      D => q(4),
      Q => \adb_reg[4]_srl2_n_0\
    );
\adb_reg[5]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => ada0,
      CLK => CLK,
      D => q(5),
      Q => \adb_reg[5]_srl2_n_0\
    );
\adb_reg[6]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => ada0,
      CLK => CLK,
      D => q(6),
      Q => \adb_reg[6]_srl2_n_0\
    );
\adb_reg[7]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => ada0,
      CLK => CLK,
      D => q(7),
      Q => \adb_reg[7]_srl2_n_0\
    );
\adc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => ada0,
      D => \adb_reg[0]_srl2_n_0\,
      Q => d(0),
      R => '0'
    );
\adc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => ada0,
      D => \adb_reg[1]_srl2_n_0\,
      Q => d(1),
      R => '0'
    );
\adc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => ada0,
      D => \adb_reg[2]_srl2_n_0\,
      Q => d(2),
      R => '0'
    );
\adc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => ada0,
      D => \adb_reg[3]_srl2_n_0\,
      Q => d(3),
      R => '0'
    );
\adc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => ada0,
      D => \adb_reg[4]_srl2_n_0\,
      Q => d(4),
      R => '0'
    );
\adc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => ada0,
      D => \adb_reg[5]_srl2_n_0\,
      Q => d(5),
      R => '0'
    );
\adc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => ada0,
      D => \adb_reg[6]_srl2_n_0\,
      Q => d(6),
      R => '0'
    );
\adc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => ada0,
      D => \adb_reg[7]_srl2_n_0\,
      Q => d(7),
      R => '0'
    );
cksum: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_cksum_1
     port map (
      CLK => CLK,
      D(1 downto 0) => state(1 downto 0),
      E(0) => cksum_n_0,
      Q(1) => \state_reg_n_0_[1]\,
      Q(0) => \state_reg_n_0_[0]\,
      SS(0) => SS(0),
      a_match => a_match,
      \acmd_rx_w[valid]\ => \acmd_rx_w[valid]\,
      \acmdw_rx[valid]\ => \acmdw_rx[valid]\,
      \^d\(0) => d(8),
      k => k,
      ka => ka,
      ks => ks,
      last_reg => ram_reg_0_31_8_8_i_2_n_0,
      p_11_in => \^p_11_in\,
      p_12_in => p_12_in,
      \^q\(7 downto 0) => q(7 downto 0),
      \q_reg[4]\ => cksum_n_8,
      s0 => s0,
      s_reg => ram_reg_0_31_8_8_i_6_n_0,
      s_reg_0 => \state[1]_i_6_n_0\,
      \state0__0\ => \state0__0\,
      state35_out => state35_out,
      state40_in => state40_in,
      state5 => state5,
      trst => trst,
      \txdone__0\ => \txdone__0\
    );
\ctr[63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => lock_reg,
      I1 => q(7),
      I2 => q(6),
      I3 => q(4),
      I4 => q(5),
      I5 => \^sync_stb\,
      O => s
    );
\da[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => locked,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      O => \state_reg[1]_0\(0)
    );
\err_i_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \acmd_rx_w[valid]\,
      I1 => \acmdw_rx[valid]\,
      I2 => \^p_11_in\,
      O => rxdone
    );
pend_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F80000"
    )
        port map (
      I0 => \pend3__3\,
      I1 => \^ss\,
      I2 => pend,
      I3 => trst,
      I4 => locked,
      I5 => issue,
      O => pend0
    );
pend_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => pend0,
      Q => pend,
      R => '0'
    );
\ram_reg_0_31_0_0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => a_match_d,
      I1 => a_match,
      I2 => p_12_in,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \acmdw_rx[valid]\,
      O => wen
    );
ram_reg_0_31_8_8_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008888FFF00000"
    )
        port map (
      I0 => \acmdw_rx[valid]\,
      I1 => \avalid0__1\,
      I2 => ka,
      I3 => ks,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state_reg_n_0_[0]\,
      O => ram_reg_0_31_8_8_i_2_n_0
    );
ram_reg_0_31_8_8_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_12_in,
      I1 => actr_reg(2),
      I2 => actr_reg(1),
      I3 => actr_reg(4),
      I4 => actr_reg(3),
      I5 => actr_reg(0),
      O => state5
    );
ram_reg_0_31_8_8_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => sctr_reg(3),
      I1 => sctr_reg(2),
      I2 => sctr_reg(1),
      I3 => sctr_reg(0),
      I4 => sctr_reg(4),
      O => state40_in
    );
ram_reg_0_31_8_8_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => ka,
      O => ram_reg_0_31_8_8_i_6_n_0
    );
ram_reg_0_31_8_8_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => ks,
      I1 => SS(0),
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => a_match,
      I5 => a_match_d,
      O => \avalid0__1\
    );
s_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => a_match,
      I1 => ka,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      O => \^p_11_in\
    );
s_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => p_12_in,
      I3 => a_match,
      I4 => a_match_d,
      O => \acmd_rx_w[valid]\
    );
\sctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sctr_reg(0),
      O => \plusOp__1\(0)
    );
\sctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sctr_reg(0),
      I1 => sctr_reg(1),
      O => \plusOp__1\(1)
    );
\sctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sctr_reg(0),
      I1 => sctr_reg(1),
      I2 => sctr_reg(2),
      O => \plusOp__1\(2)
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
      O => \plusOp__1\(3)
    );
\sctr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => sctr_reg(2),
      I1 => sctr_reg(0),
      I2 => sctr_reg(1),
      I3 => sctr_reg(3),
      I4 => sctr_reg(4),
      O => \plusOp__1\(4)
    );
\sctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^ss\,
      D => \plusOp__1\(0),
      Q => sctr_reg(0),
      R => ks
    );
\sctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^ss\,
      D => \plusOp__1\(1),
      Q => sctr_reg(1),
      R => ks
    );
\sctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^ss\,
      D => \plusOp__1\(2),
      Q => sctr_reg(2),
      R => ks
    );
\sctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^ss\,
      D => \plusOp__1\(3),
      Q => sctr_reg(3),
      R => ks
    );
\sctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^ss\,
      D => \plusOp__1\(4),
      Q => sctr_reg(4),
      R => ks
    );
\state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => sctr_reg(2),
      I1 => sctr_reg(1),
      I2 => sctr_reg(0),
      I3 => sctr_reg(4),
      I4 => sctr_reg(3),
      I5 => SS(0),
      O => \state0__0\
    );
\state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => sctr_reg(4),
      I1 => \state[1]_i_8_n_0\,
      I2 => sctr_reg(2),
      I3 => sctr_reg(3),
      I4 => \state6__3\,
      I5 => p_12_in,
      O => \state[1]_i_6_n_0\
    );
\state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => ks,
      I3 => ka,
      O => state35_out
    );
\state[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sctr_reg(1),
      I1 => sctr_reg(0),
      O => \state[1]_i_8_n_0\
    );
\state[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => actr_reg(0),
      I1 => actr_reg(3),
      I2 => actr_reg(4),
      I3 => actr_reg(1),
      I4 => actr_reg(2),
      O => \state6__3\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => cksum_n_0,
      D => state(0),
      Q => \state_reg_n_0_[0]\,
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => cksum_n_0,
      D => state(1),
      Q => \state_reg_n_0_[1]\,
      R => SR(0)
    );
sync_stb_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => \pend3__3\,
      I1 => \^ss\,
      I2 => pend,
      I3 => issue,
      O => \^sync_stb\
    );
sync_stb_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => sctr_reg(3),
      I1 => sctr_reg(4),
      I2 => sctr_reg(0),
      I3 => sctr_reg(1),
      I4 => sctr_reg(2),
      O => \pend3__3\
    );
sync_stb_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => SS(0),
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => ks,
      O => \^ss\
    );
sync_stb_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \vctr_reg_n_0_[3]\,
      I1 => ts(3),
      I2 => sync_stb_INST_0_i_4_n_0,
      O => issue
    );
sync_stb_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \vctr_reg_n_0_[0]\,
      I1 => ts(0),
      I2 => ts(2),
      I3 => \vctr_reg_n_0_[2]\,
      I4 => ts(1),
      I5 => \vctr_reg_n_0_[1]\,
      O => sync_stb_INST_0_i_4_n_0
    );
\ts[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => sctr_reg(2),
      I1 => sctr_reg(4),
      I2 => sctr_reg(0),
      I3 => sctr_reg(1),
      I4 => sctr_reg(3),
      I5 => \^ss\,
      O => ts0
    );
\ts_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ts0,
      D => q(0),
      Q => ts(0),
      R => '0'
    );
\ts_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ts0,
      D => q(1),
      Q => ts(1),
      R => '0'
    );
\ts_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ts0,
      D => q(2),
      Q => ts(2),
      R => '0'
    );
\ts_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => ts0,
      D => q(3),
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
      INIT => X"2C3C"
    )
        port map (
      I0 => \vctr_reg_n_0_[2]\,
      I1 => \vctr_reg_n_0_[1]\,
      I2 => \vctr_reg_n_0_[0]\,
      I3 => \vctr_reg_n_0_[3]\,
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
      INIT => X"6F80"
    )
        port map (
      I0 => \vctr_reg_n_0_[2]\,
      I1 => \vctr_reg_n_0_[1]\,
      I2 => \vctr_reg_n_0_[0]\,
      I3 => \vctr_reg_n_0_[3]\,
      O => \vctr[3]_i_1_n_0\
    );
\vctr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \vctr[0]_i_1_n_0\,
      Q => \vctr_reg_n_0_[0]\,
      S => SS(0)
    );
\vctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \vctr[1]_i_1_n_0\,
      Q => \vctr_reg_n_0_[1]\,
      R => SS(0)
    );
\vctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \vctr[2]_i_1_n_0\,
      Q => \vctr_reg_n_0_[2]\,
      R => SS(0)
    );
\vctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \vctr[3]_i_1_n_0\,
      Q => \vctr_reg_n_0_[3]\,
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_tx_pkt is
  port (
    smode_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    stbo_reg : out STD_LOGIC;
    \txdone__0\ : out STD_LOGIC;
    \acmdr[rdy]\ : out STD_LOGIC;
    \ren__0\ : out STD_LOGIC;
    \d__0\ : out STD_LOGIC;
    \p_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    trst : in STD_LOGIC;
    resync : in STD_LOGIC;
    locked : in STD_LOGIC;
    rsto : in STD_LOGIC;
    q : in STD_LOGIC_VECTOR ( 0 to 0 );
    stbo : in STD_LOGIC;
    in5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    disp : in STD_LOGIC;
    sync_stb : in STD_LOGIC;
    \ctr_reg[7]\ : in STD_LOGIC;
    \acmd_tx_w[valid]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \acmdw[last]\ : in STD_LOGIC;
    \acmdw_v[1][last]\ : in STD_LOGIC;
    \sd_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_tx_pkt : entity is "pdts_tx_pkt";
end design_1_pdts_endpoint_wrapper_0_0_pdts_tx_pkt;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_tx_pkt is
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \^acmdr[rdy]\ : STD_LOGIC;
  signal actr_i : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \actr_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \actr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \actr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \actr_i[4]_i_2_n_0\ : STD_LOGIC;
  signal cksum_n_0 : STD_LOGIC;
  signal iactr0 : STD_LOGIC;
  signal k : STD_LOGIC;
  signal \lfsr_q[15]_i_9_n_0\ : STD_LOGIC;
  signal \plusOp__5\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \q[0]_i_2_n_0\ : STD_LOGIC;
  signal \q[1]_i_5_n_0\ : STD_LOGIC;
  signal \q[3]_i_6_n_0\ : STD_LOGIC;
  signal \q[3]_i_8_n_0\ : STD_LOGIC;
  signal \q[9]_i_10_n_0\ : STD_LOGIC;
  signal \q[9]_i_16_n_0\ : STD_LOGIC;
  signal \q[9]_i_8_n_0\ : STD_LOGIC;
  signal s_ok : STD_LOGIC;
  signal s_ok_i_1_n_0 : STD_LOGIC;
  signal \sctr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \sctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \sctr_reg_n_0_[0]\ : STD_LOGIC;
  signal \sctr_reg_n_0_[1]\ : STD_LOGIC;
  signal \sctr_reg_n_0_[2]\ : STD_LOGIC;
  signal \sctr_reg_n_0_[3]\ : STD_LOGIC;
  signal sd : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smode_i_1_n_0 : STD_LOGIC;
  signal smode_i_2_n_0 : STD_LOGIC;
  signal \^smode_reg_0\ : STD_LOGIC;
  signal \spctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \spctr[3]_i_1_n_0\ : STD_LOGIC;
  signal spctr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal svalid : STD_LOGIC;
  signal \sw[3]_i_1_n_0\ : STD_LOGIC;
  signal \sw_reg_n_0_[0]\ : STD_LOGIC;
  signal \sw_reg_n_0_[1]\ : STD_LOGIC;
  signal \sw_reg_n_0_[2]\ : STD_LOGIC;
  signal \sw_reg_n_0_[3]\ : STD_LOGIC;
  signal trans : STD_LOGIC;
  signal trans_i_1_n_0 : STD_LOGIC;
  signal trans_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair79";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "start:101,st_k:001,st_a:100,st_d:010,st_c:000,st_e:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "start:101,st_k:001,st_a:100,st_d:010,st_c:000,st_e:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "start:101,st_k:001,st_a:100,st_d:010,st_c:000,st_e:011";
  attribute SOFT_HLUTNM of \actr_i[0]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \actr_i[1]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \actr_i[2]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \actr_i[3]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \p[0]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \q[3]_i_6\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \q[9]_i_10\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \q[9]_i_8\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sctr[1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \sctr[3]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \spctr[1]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \spctr[2]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \spctr[3]_i_2\ : label is "soft_lutpair81";
begin
  \acmdr[rdy]\ <= \^acmdr[rdy]\;
  smode_reg_0 <= \^smode_reg_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1099"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \state__0\(1),
      O => \state__1\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0062"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \state__0\(0),
      O => \state__1\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => actr_i(0),
      I1 => actr_i(3),
      I2 => trans_reg_n_0,
      I3 => actr_i(4),
      I4 => actr_i(1),
      I5 => actr_i(2),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444000004440"
    )
        port map (
      I0 => \^smode_reg_0\,
      I1 => stbo,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => \FSM_sequential_state[2]_i_4_n_0\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      O => \state__1\(2)
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => actr_i(4),
      I1 => actr_i(3),
      I2 => actr_i(0),
      I3 => trans_reg_n_0,
      I4 => actr_i(1),
      I5 => actr_i(2),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFB8"
    )
        port map (
      I0 => \acmdw_v[1][last]\,
      I1 => \ctr_reg[7]\,
      I2 => \FSM_sequential_state_reg[0]_0\(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \state__0\(0),
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      D => \state__1\(0),
      Q => \state__0\(0),
      S => trst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      D => \state__1\(1),
      Q => \state__0\(1),
      R => trst
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      D => \state__1\(2),
      Q => \state__0\(2),
      S => trst
    );
\actr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => trans_reg_n_0,
      I1 => actr_i(0),
      O => iactr0
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
\actr_i[4]_i_2\: unisim.vcomponents.LUT6
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
      O => \actr_i[4]_i_2_n_0\
    );
\actr_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => iactr0,
      Q => actr_i(0),
      R => '0'
    );
\actr_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \actr_i[1]_i_1_n_0\,
      Q => actr_i(1),
      R => '0'
    );
\actr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \actr_i[2]_i_1_n_0\,
      Q => actr_i(2),
      R => '0'
    );
\actr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \actr_i[3]_i_1_n_0\,
      Q => actr_i(3),
      R => '0'
    );
\actr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \actr_i[4]_i_2_n_0\,
      Q => actr_i(4),
      R => '0'
    );
cksum: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_cksum
     port map (
      CLK => CLK,
      D(9 downto 0) => D(9 downto 0),
      Q(2 downto 0) => \state__0\(2 downto 0),
      SS(0) => cksum_n_0,
      disp => disp,
      in5(7 downto 0) => in5(7 downto 0),
      k => k,
      \lfsr_q_reg[15]\ => \^smode_reg_0\,
      \lfsr_q_reg[1]\ => \lfsr_q[15]_i_9_n_0\,
      \q[2]_i_2\ => \q[9]_i_16_n_0\,
      \q_reg[0]\ => \q[0]_i_2_n_0\,
      \q_reg[1]\ => \q[1]_i_5_n_0\,
      \q_reg[3]\ => \q[3]_i_8_n_0\,
      \q_reg[3]_0\ => \q[3]_i_6_n_0\,
      \q_reg[6]\ => \q[9]_i_10_n_0\,
      \q_reg[6]_0\ => \q[9]_i_8_n_0\,
      \q_reg[6]_1\(1 downto 0) => sd(7 downto 6),
      stbo => stbo,
      stbo_reg => stbo_reg
    );
err_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^acmdr[rdy]\,
      I1 => \ctr_reg[7]\,
      I2 => \acmd_tx_w[valid]\,
      I3 => \FSM_sequential_state_reg[0]_0\(0),
      O => \txdone__0\
    );
\lfsr_q[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFF0001"
    )
        port map (
      I0 => actr_i(1),
      I1 => actr_i(2),
      I2 => actr_i(4),
      I3 => actr_i(3),
      I4 => trans_reg_n_0,
      I5 => actr_i(0),
      O => \lfsr_q[15]_i_9_n_0\
    );
\p[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00060000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \^smode_reg_0\,
      I4 => stbo,
      O => \^acmdr[rdy]\
    );
\q[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAA8AAA8AAA8"
    )
        port map (
      I0 => sd(0),
      I1 => spctr_reg(3),
      I2 => spctr_reg(1),
      I3 => spctr_reg(2),
      I4 => spctr_reg(0),
      I5 => \sw_reg_n_0_[0]\,
      O => \q[0]_i_2_n_0\
    );
\q[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAA8AAA8AAA8"
    )
        port map (
      I0 => sd(1),
      I1 => spctr_reg(3),
      I2 => spctr_reg(1),
      I3 => spctr_reg(2),
      I4 => spctr_reg(0),
      I5 => \sw_reg_n_0_[1]\,
      O => \q[1]_i_5_n_0\
    );
\q[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAB"
    )
        port map (
      I0 => sd(4),
      I1 => spctr_reg(3),
      I2 => spctr_reg(1),
      I3 => spctr_reg(2),
      I4 => spctr_reg(0),
      O => \q[3]_i_6_n_0\
    );
\q[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAA8AAABAAAB"
    )
        port map (
      I0 => sd(3),
      I1 => spctr_reg(3),
      I2 => spctr_reg(1),
      I3 => spctr_reg(2),
      I4 => \sw_reg_n_0_[3]\,
      I5 => spctr_reg(0),
      O => \q[3]_i_8_n_0\
    );
\q[9]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAB"
    )
        port map (
      I0 => sd(5),
      I1 => spctr_reg(3),
      I2 => spctr_reg(1),
      I3 => spctr_reg(2),
      I4 => spctr_reg(0),
      O => \q[9]_i_10_n_0\
    );
\q[9]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAA8AAABAAAB"
    )
        port map (
      I0 => sd(2),
      I1 => spctr_reg(3),
      I2 => spctr_reg(1),
      I3 => spctr_reg(2),
      I4 => \sw_reg_n_0_[2]\,
      I5 => spctr_reg(0),
      O => \q[9]_i_16_n_0\
    );
\q[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => spctr_reg(3),
      I1 => spctr_reg(2),
      I2 => spctr_reg(0),
      I3 => spctr_reg(1),
      I4 => \^smode_reg_0\,
      I5 => cksum_n_0,
      O => k
    );
\q[9]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => spctr_reg(3),
      I1 => spctr_reg(1),
      I2 => spctr_reg(2),
      O => \q[9]_i_8_n_0\
    );
\r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800080000"
    )
        port map (
      I0 => \ctr_reg[7]\,
      I1 => stbo,
      I2 => \^smode_reg_0\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => \p_reg[0]\(0)
    );
\s_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000022000000000"
    )
        port map (
      I0 => \acmd_tx_w[valid]\,
      I1 => \ctr_reg[7]\,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      I5 => E(0),
      O => \ren__0\
    );
\s_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800080000"
    )
        port map (
      I0 => \acmdw[last]\,
      I1 => stbo,
      I2 => \^smode_reg_0\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => \d__0\
    );
s_ok_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF00000200"
    )
        port map (
      I0 => stbo,
      I1 => \^smode_reg_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => s_ok,
      O => s_ok_i_1_n_0
    );
s_ok_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => s_ok_i_1_n_0,
      Q => s_ok,
      R => trst
    );
\sctr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sctr_reg_n_0_[0]\,
      O => \sctr[0]_i_1__1_n_0\
    );
\sctr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C3C"
    )
        port map (
      I0 => \sctr_reg_n_0_[2]\,
      I1 => \sctr_reg_n_0_[1]\,
      I2 => \sctr_reg_n_0_[0]\,
      I3 => \sctr_reg_n_0_[3]\,
      O => \sctr[1]_i_1_n_0\
    );
\sctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \sctr_reg_n_0_[2]\,
      I1 => \sctr_reg_n_0_[1]\,
      I2 => \sctr_reg_n_0_[0]\,
      O => \sctr[2]_i_1_n_0\
    );
\sctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F80"
    )
        port map (
      I0 => \sctr_reg_n_0_[2]\,
      I1 => \sctr_reg_n_0_[1]\,
      I2 => \sctr_reg_n_0_[0]\,
      I3 => \sctr_reg_n_0_[3]\,
      O => \sctr[3]_i_1_n_0\
    );
\sctr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => '1',
      D => \sctr[0]_i_1__1_n_0\,
      Q => \sctr_reg_n_0_[0]\,
      S => stbo
    );
\sctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sctr[1]_i_1_n_0\,
      Q => \sctr_reg_n_0_[1]\,
      R => stbo
    );
\sctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sctr[2]_i_1_n_0\,
      Q => \sctr_reg_n_0_[2]\,
      R => stbo
    );
\sctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sctr[3]_i_1_n_0\,
      Q => \sctr_reg_n_0_[3]\,
      R => stbo
    );
\sd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sd_reg[7]_0\(0),
      Q => sd(0),
      R => '0'
    );
\sd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sd_reg[7]_0\(1),
      Q => sd(1),
      R => '0'
    );
\sd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sd_reg[7]_0\(2),
      Q => sd(2),
      R => '0'
    );
\sd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sd_reg[7]_0\(3),
      Q => sd(3),
      R => '0'
    );
\sd_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sd_reg[7]_0\(4),
      Q => sd(4),
      R => '0'
    );
\sd_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sd_reg[7]_0\(5),
      Q => sd(5),
      R => '0'
    );
\sd_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sd_reg[7]_0\(6),
      Q => sd(6),
      R => '0'
    );
\sd_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sd_reg[7]_0\(7),
      Q => sd(7),
      R => '0'
    );
smode_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFAAAAAAAA"
    )
        port map (
      I0 => svalid,
      I1 => smode_i_2_n_0,
      I2 => spctr_reg(1),
      I3 => spctr_reg(0),
      I4 => stbo,
      I5 => \^smode_reg_0\,
      O => smode_i_1_n_0
    );
smode_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => spctr_reg(2),
      I1 => spctr_reg(3),
      O => smode_i_2_n_0
    );
smode_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => smode_i_1_n_0,
      Q => \^smode_reg_0\,
      R => trst
    );
\spctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spctr_reg(0),
      O => \spctr[0]_i_1_n_0\
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
\spctr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \^smode_reg_0\,
      I1 => stbo,
      I2 => resync,
      I3 => locked,
      I4 => rsto,
      I5 => q(0),
      O => \spctr[3]_i_1_n_0\
    );
\spctr[3]_i_2\: unisim.vcomponents.LUT4
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
      C => CLK,
      CE => \spctr[3]_i_1_n_0\,
      D => \spctr[0]_i_1_n_0\,
      Q => spctr_reg(0),
      R => \sw[3]_i_1_n_0\
    );
\spctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \spctr[3]_i_1_n_0\,
      D => \plusOp__5\(1),
      Q => spctr_reg(1),
      R => \sw[3]_i_1_n_0\
    );
\spctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \spctr[3]_i_1_n_0\,
      D => \plusOp__5\(2),
      Q => spctr_reg(2),
      R => \sw[3]_i_1_n_0\
    );
\spctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \spctr[3]_i_1_n_0\,
      D => \plusOp__5\(3),
      Q => spctr_reg(3),
      R => \sw[3]_i_1_n_0\
    );
\sw[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => svalid,
      I1 => resync,
      I2 => locked,
      I3 => rsto,
      I4 => q(0),
      O => \sw[3]_i_1_n_0\
    );
\sw[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => sync_stb,
      I1 => \^smode_reg_0\,
      I2 => s_ok,
      O => svalid
    );
\sw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sctr_reg_n_0_[0]\,
      Q => \sw_reg_n_0_[0]\,
      R => '0'
    );
\sw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sctr_reg_n_0_[1]\,
      Q => \sw_reg_n_0_[1]\,
      R => '0'
    );
\sw_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sctr_reg_n_0_[2]\,
      Q => \sw_reg_n_0_[2]\,
      R => '0'
    );
\sw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \sw[3]_i_1_n_0\,
      D => \sctr_reg_n_0_[3]\,
      Q => \sw_reg_n_0_[3]\,
      R => '0'
    );
trans_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => trans,
      I1 => \^smode_reg_0\,
      I2 => stbo,
      I3 => trst,
      I4 => trans_reg_n_0,
      O => trans_i_1_n_0
    );
trans_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001055FF001000AA"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => \acmdw[last]\,
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => \FSM_sequential_state[2]_i_3_n_0\,
      O => trans
    );
trans_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => trans_i_1_n_0,
      Q => trans_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_rx is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \^d\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    locked : out STD_LOGIC;
    stbo : out STD_LOGIC;
    wen : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s0 : out STD_LOGIC;
    p_11_in : out STD_LOGIC;
    s : out STD_LOGIC;
    sync_stb : out STD_LOGIC;
    rxdone : out STD_LOGIC;
    CLK : in STD_LOGIC;
    trst : in STD_LOGIC;
    \s_reg[1][0]\ : in STD_LOGIC;
    delay : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \acmdw_rx[valid]\ : in STD_LOGIC;
    \actr_i_reg[4]\ : in STD_LOGIC;
    \txdone__0\ : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_rx : entity is "pdts_rx";
end design_1_pdts_endpoint_wrapper_0_0_pdts_rx;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_rx is
  signal \^d_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ctr[63]_i_12_n_0\ : STD_LOGIC;
  signal \^locked\ : STD_LOGIC;
  signal rxk : STD_LOGIC;
  signal \^stbo\ : STD_LOGIC;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of phy : label is "soft";
begin
  D(7 downto 0) <= \^d_1\(7 downto 0);
  locked <= \^locked\;
  stbo <= \^stbo\;
\ctr[63]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^d_1\(2),
      I1 => \^d_1\(3),
      I2 => \^d_1\(0),
      I3 => \^d_1\(1),
      O => \ctr[63]_i_12_n_0\
    );
phy: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_rx_phy
     port map (
      clk => CLK,
      d => \s_reg[1][0]\,
      delay(3 downto 0) => delay(3 downto 0),
      k => rxk,
      locked => \^locked\,
      q(7 downto 0) => \^d_1\(7 downto 0),
      rst => trst,
      stbo => \^stbo\
    );
pkt: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_rx_pkt
     port map (
      CLK => CLK,
      E(0) => E(0),
      SR(0) => SR(0),
      SS(0) => \^stbo\,
      \acmdw_rx[valid]\ => \acmdw_rx[valid]\,
      \actr_i_reg[4]\ => \actr_i_reg[4]\,
      addr(15 downto 0) => addr(15 downto 0),
      d(8 downto 0) => \^d\(8 downto 0),
      k => rxk,
      lock_reg => \ctr[63]_i_12_n_0\,
      locked => \^locked\,
      p_11_in => p_11_in,
      q(7 downto 0) => \^d_1\(7 downto 0),
      rxdone => rxdone,
      s => s,
      s0 => s0,
      \state_reg[1]_0\(0) => \state_reg[1]\(0),
      sync_stb => sync_stb,
      trst => trst,
      \txdone__0\ => \txdone__0\,
      wen => wen
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_tx is
  port (
    sel : out STD_LOGIC;
    smode_reg : out STD_LOGIC;
    \txdone__0\ : out STD_LOGIC;
    \acmdr[rdy]\ : out STD_LOGIC;
    \ren__0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    trst : in STD_LOGIC;
    CLK : in STD_LOGIC;
    stbo : in STD_LOGIC;
    resync : in STD_LOGIC;
    locked : in STD_LOGIC;
    rsto : in STD_LOGIC;
    \^q\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sync_stb : in STD_LOGIC;
    \acmd_tx_w[valid]\ : in STD_LOGIC;
    \p_reg[0]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sd_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_tx : entity is "pdts_tx";
end design_1_pdts_endpoint_wrapper_0_0_pdts_tx;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_tx is
  signal \^acmdr[rdy]\ : STD_LOGIC;
  signal \acmdw[last]\ : STD_LOGIC;
  signal \acmdw_v[1][last]\ : STD_LOGIC;
  signal \d__0\ : STD_LOGIC;
  signal \enc/dataOut\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \enc/disp\ : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pkt_n_11 : STD_LOGIC;
  signal pkt_n_16 : STD_LOGIC;
  signal \^sel\ : STD_LOGIC;
begin
  \acmdr[rdy]\ <= \^acmdr[rdy]\;
  sel <= \^sel\;
arb: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_acmd_arb
     port map (
      CLK => CLK,
      \acmd_tx_w[valid]\ => \acmd_tx_w[valid]\,
      \acmdr[rdy]\ => \^acmdr[rdy]\,
      \acmdw_v[1][last]\ => \acmdw_v[1][last]\,
      \d__0\ => \d__0\,
      \p_reg[0]_0\ => \^sel\,
      \p_reg[0]_1\(0) => \p_reg[0]\(8),
      trst => trst
    );
idle: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_idle_gen
     port map (
      CLK => CLK,
      E(0) => pkt_n_16,
      \acmdw[last]\ => \acmdw[last]\,
      \acmdw_v[1][last]\ => \acmdw_v[1][last]\,
      in5(7 downto 0) => in5(7 downto 0),
      trans_i_2 => \^sel\,
      trans_i_2_0(8 downto 0) => \p_reg[0]\(8 downto 0),
      trst => trst
    );
phy: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_tx_phy
     port map (
      CLK => CLK,
      D(9 downto 0) => \enc/dataOut\(9 downto 0),
      Q(0) => Q(0),
      disp => \enc/disp\,
      disp_reg => pkt_n_11,
      stbo => stbo,
      trst => trst
    );
pkt: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_tx_pkt
     port map (
      CLK => CLK,
      D(9 downto 0) => \enc/dataOut\(9 downto 0),
      E(0) => E(0),
      \FSM_sequential_state_reg[0]_0\(0) => \p_reg[0]\(8),
      \acmd_tx_w[valid]\ => \acmd_tx_w[valid]\,
      \acmdr[rdy]\ => \^acmdr[rdy]\,
      \acmdw[last]\ => \acmdw[last]\,
      \acmdw_v[1][last]\ => \acmdw_v[1][last]\,
      \ctr_reg[7]\ => \^sel\,
      \d__0\ => \d__0\,
      disp => \enc/disp\,
      in5(7 downto 0) => in5(7 downto 0),
      locked => locked,
      \p_reg[0]\(0) => pkt_n_16,
      q(0) => \^q\(0),
      \ren__0\ => \ren__0\,
      resync => resync,
      rsto => rsto,
      \sd_reg[7]_0\(7 downto 0) => \sd_reg[7]\(7 downto 0),
      smode_reg_0 => smode_reg,
      stbo => stbo,
      stbo_reg => pkt_n_11,
      sync_stb => sync_stb,
      trst => trst,
      \txdone__0\ => \txdone__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_ep_core is
  port (
    \^q\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rdy : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    phase : out STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_dis : out STD_LOGIC;
    stat : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    sync_stb : out STD_LOGIC;
    CLK : in STD_LOGIC;
    sclk : in STD_LOGIC;
    \s_reg[1][0]\ : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_done : in STD_LOGIC;
    locked : in STD_LOGIC;
    rsto : in STD_LOGIC;
    srst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_core : entity is "pdts_ep_core";
end design_1_pdts_endpoint_wrapper_0_0_pdts_ep_core;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_ep_core is
  signal \acmd_rx_w[last]\ : STD_LOGIC;
  signal \acmd_tx_w[last]\ : STD_LOGIC;
  signal \acmd_tx_w[valid]\ : STD_LOGIC;
  signal \acmdr[rdy]\ : STD_LOGIC;
  signal \acmdw_rx[valid]\ : STD_LOGIC;
  signal adc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal addr_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal addr_done : STD_LOGIC;
  signal \arb/sel\ : STD_LOGIC;
  signal ctrl_n_1 : STD_LOGIC;
  signal ctrl_n_10 : STD_LOGIC;
  signal ctrl_n_11 : STD_LOGIC;
  signal ctrl_n_12 : STD_LOGIC;
  signal ctrl_n_13 : STD_LOGIC;
  signal ctrl_n_14 : STD_LOGIC;
  signal ctrl_n_15 : STD_LOGIC;
  signal ctrl_n_16 : STD_LOGIC;
  signal ctrl_n_17 : STD_LOGIC;
  signal ctrl_n_2 : STD_LOGIC;
  signal ctrl_n_21 : STD_LOGIC;
  signal ctrl_n_22 : STD_LOGIC;
  signal ctrl_n_23 : STD_LOGIC;
  signal ctrl_n_24 : STD_LOGIC;
  signal ctrl_n_25 : STD_LOGIC;
  signal ctrl_n_26 : STD_LOGIC;
  signal ctrl_n_27 : STD_LOGIC;
  signal ctrl_n_28 : STD_LOGIC;
  signal ctrl_n_29 : STD_LOGIC;
  signal ctrl_n_3 : STD_LOGIC;
  signal ctrl_n_4 : STD_LOGIC;
  signal ctrl_n_5 : STD_LOGIC;
  signal ctrl_n_6 : STD_LOGIC;
  signal ctrl_n_7 : STD_LOGIC;
  signal ctrl_n_8 : STD_LOGIC;
  signal delay : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal deskew_done : STD_LOGIC;
  signal locked_0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \pkt/p_11_in\ : STD_LOGIC;
  signal pkt_err : STD_LOGIC;
  signal \^q_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rctrl_r[ack]\ : STD_LOGIC;
  signal \rctrl_r[d]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reset : STD_LOGIC;
  signal resync : STD_LOGIC;
  signal rrst : STD_LOGIC;
  signal rst_pkt : STD_LOGIC;
  signal rx_en : STD_LOGIC;
  signal rx_n_19 : STD_LOGIC;
  signal rx_n_20 : STD_LOGIC;
  signal rx_rdy : STD_LOGIC;
  signal \rxbuf/s0\ : STD_LOGIC;
  signal \rxbuf/txdone__0\ : STD_LOGIC;
  signal rxdone : STD_LOGIC;
  signal s : STD_LOGIC;
  signal \^stat\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal stb : STD_LOGIC;
  signal \^sync_stb\ : STD_LOGIC;
  signal trst : STD_LOGIC;
  signal ts_stb : STD_LOGIC;
  signal tsrdy : STD_LOGIC;
  signal tstamp_i : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal tx_n_1 : STD_LOGIC;
  signal \txbuf/ren__0\ : STD_LOGIC;
  signal \txbuf/txdone__0\ : STD_LOGIC;
  attribute EXT_ADDR : string;
  attribute EXT_ADDR of regfile : label is "TRUE";
  attribute FORCE_TX : string;
  attribute FORCE_TX of regfile : label is "FALSE";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of regfile : label is "soft";
  attribute SKIP_DESKEW : string;
  attribute SKIP_DESKEW of regfile : label is "TRUE";
begin
  \^q\(7 downto 0) <= \^q_1\(7 downto 0);
  \out\(0) <= \^out\(0);
  stat(2 downto 0) <= \^stat\(2 downto 0);
  sync_stb <= \^sync_stb\;
ctrl: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_ep_ctrl
     port map (
      CLK => CLK,
      D(0) => pkt_err,
      Q(0) => ctrl_n_10,
      \acmd_tx_w[valid]\ => \acmd_tx_w[valid]\,
      \acmdr[rdy]\ => \acmdr[rdy]\,
      \acmdw_rx[valid]\ => \acmdw_rx[valid]\,
      \addr_reg[6]\(6) => ctrl_n_11,
      \addr_reg[6]\(5) => ctrl_n_12,
      \addr_reg[6]\(4) => ctrl_n_13,
      \addr_reg[6]\(3) => ctrl_n_14,
      \addr_reg[6]\(2) => ctrl_n_15,
      \addr_reg[6]\(1) => ctrl_n_16,
      \addr_reg[6]\(0) => ctrl_n_17,
      \ctrl_in[stb]\ => ctrl_n_29,
      \ctrl_out[ack]\ => \rctrl_r[ack]\,
      \ctrl_out[d]\(7 downto 0) => \rctrl_r[d]\(7 downto 0),
      \^d\(8) => \acmd_rx_w[last]\,
      \^d\(7 downto 0) => adc(7 downto 0),
      p_11_in => \pkt/p_11_in\,
      \p_reg[0]\(8) => \acmd_tx_w[last]\,
      \p_reg[0]\(7) => ctrl_n_21,
      \p_reg[0]\(6) => ctrl_n_22,
      \p_reg[0]\(5) => ctrl_n_23,
      \p_reg[0]\(4) => ctrl_n_24,
      \p_reg[0]\(3) => ctrl_n_25,
      \p_reg[0]\(2) => ctrl_n_26,
      \p_reg[0]\(1) => ctrl_n_27,
      \p_reg[0]\(0) => ctrl_n_28,
      \^q\(7) => ctrl_n_1,
      \^q\(6) => ctrl_n_2,
      \^q\(5) => ctrl_n_3,
      \^q\(4) => ctrl_n_4,
      \^q\(3) => ctrl_n_5,
      \^q\(2) => ctrl_n_6,
      \^q\(1) => ctrl_n_7,
      \^q\(0) => ctrl_n_8,
      \ren__0\ => \txbuf/ren__0\,
      rxdone => rxdone,
      s0 => \rxbuf/s0\,
      sel => \arb/sel\,
      trst => trst,
      \txdone__0\ => \rxbuf/txdone__0\,
      \txdone__0_0\ => \txbuf/txdone__0\,
      wen => rx_n_19
    );
regfile: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_ep_regfile
     port map (
      addr(15 downto 0) => addr_0(15 downto 0),
      addr_done => addr_done,
      clk => CLK,
      \ctrl_in[a]\(6) => ctrl_n_11,
      \ctrl_in[a]\(5) => ctrl_n_12,
      \ctrl_in[a]\(4) => ctrl_n_13,
      \ctrl_in[a]\(3) => ctrl_n_14,
      \ctrl_in[a]\(2) => ctrl_n_15,
      \ctrl_in[a]\(1) => ctrl_n_16,
      \ctrl_in[a]\(0) => ctrl_n_17,
      \ctrl_in[d]\(7) => ctrl_n_1,
      \ctrl_in[d]\(6) => ctrl_n_2,
      \ctrl_in[d]\(5) => ctrl_n_3,
      \ctrl_in[d]\(4) => ctrl_n_4,
      \ctrl_in[d]\(3) => ctrl_n_5,
      \ctrl_in[d]\(2) => ctrl_n_6,
      \ctrl_in[d]\(1) => ctrl_n_7,
      \ctrl_in[d]\(0) => ctrl_n_8,
      \ctrl_in[rw]\ => ctrl_n_10,
      \ctrl_in[stb]\ => ctrl_n_29,
      \ctrl_out[ack]\ => \rctrl_r[ack]\,
      \ctrl_out[d]\(7 downto 0) => \rctrl_r[d]\(7 downto 0),
      delay(3 downto 0) => delay(3 downto 0),
      deskew_done => deskew_done,
      phase(11 downto 0) => phase(11 downto 0),
      phase_done => phase_done,
      reset => reset,
      resync => resync,
      rst => rrst,
      stat(3) => \^out\(0),
      stat(2 downto 0) => \^stat\(2 downto 0),
      sys_addr(15 downto 0) => addr(15 downto 0),
      ts_stb => ts_stb,
      tstamp(63 downto 0) => tstamp_i(63 downto 0),
      txenb => tx_dis
    );
rx: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_rx
     port map (
      CLK => CLK,
      D(7 downto 0) => \^q_1\(7 downto 0),
      E(0) => rx_n_20,
      SR(0) => rst_pkt,
      \acmdw_rx[valid]\ => \acmdw_rx[valid]\,
      \actr_i_reg[4]\ => tx_n_1,
      addr(15 downto 0) => addr_0(15 downto 0),
      \^d\(8) => \acmd_rx_w[last]\,
      \^d\(7 downto 0) => adc(7 downto 0),
      delay(3 downto 0) => delay(3 downto 0),
      locked => locked_0,
      p_11_in => \pkt/p_11_in\,
      rxdone => rxdone,
      s => s,
      s0 => \rxbuf/s0\,
      \s_reg[1][0]\ => \s_reg[1][0]\,
      \state_reg[1]\(0) => rx_rdy,
      stbo => stb,
      sync_stb => \^sync_stb\,
      trst => trst,
      \txdone__0\ => \rxbuf/txdone__0\,
      wen => rx_n_19
    );
sm: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_ep_sm
     port map (
      CLK => CLK,
      D(3) => pkt_err,
      D(2) => tsrdy,
      D(1) => rx_rdy,
      D(0) => locked,
      SR(0) => rst_pkt,
      addr_done => addr_done,
      \dd_reg[1]\(0) => reset,
      deskew_done => deskew_done,
      locked => locked_0,
      q(1) => rx_en,
      q(0) => rdy,
      resync => resync,
      rst => rrst,
      rsto => rsto,
      sclk => sclk,
      srst => srst,
      stat(3) => \^out\(0),
      stat(2 downto 0) => \^stat\(2 downto 0),
      trst => trst
    );
ts: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_ep_tstamp
     port map (
      CLK => CLK,
      D(0) => tsrdy,
      \ctr_reg[63]_0\(63 downto 0) => tstamp_i(63 downto 0),
      s => s,
      trst => trst,
      ts_stb => ts_stb,
      tstamp(63 downto 0) => tstamp(63 downto 0)
    );
tx: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_tx
     port map (
      CLK => CLK,
      E(0) => rx_n_20,
      Q(0) => Q(0),
      \acmd_tx_w[valid]\ => \acmd_tx_w[valid]\,
      \acmdr[rdy]\ => \acmdr[rdy]\,
      locked => locked,
      \p_reg[0]\(8) => \acmd_tx_w[last]\,
      \p_reg[0]\(7) => ctrl_n_21,
      \p_reg[0]\(6) => ctrl_n_22,
      \p_reg[0]\(5) => ctrl_n_23,
      \p_reg[0]\(4) => ctrl_n_24,
      \p_reg[0]\(3) => ctrl_n_25,
      \p_reg[0]\(2) => ctrl_n_26,
      \p_reg[0]\(1) => ctrl_n_27,
      \p_reg[0]\(0) => ctrl_n_28,
      \^q\(0) => rx_en,
      \ren__0\ => \txbuf/ren__0\,
      resync => resync,
      rsto => rsto,
      \sd_reg[7]\(7 downto 0) => \^q_1\(7 downto 0),
      sel => \arb/sel\,
      smode_reg => tx_n_1,
      stbo => stb,
      sync_stb => \^sync_stb\,
      trst => trst,
      \txdone__0\ => \txbuf/txdone__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint is
  port (
    sync : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : out STD_LOGIC;
    rst : out STD_LOGIC;
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rdy : out STD_LOGIC;
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_dis : out STD_LOGIC;
    txd : out STD_LOGIC;
    sync_stb : out STD_LOGIC;
    rec_d : in STD_LOGIC;
    sclk : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    srst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint : entity is "pdts_endpoint";
end design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint is
  signal cdr_locked : STD_LOGIC;
  signal \^clk\ : STD_LOGIC;
  signal d : STD_LOGIC;
  signal phase : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal phase_done : STD_LOGIC;
  signal \^rst\ : STD_LOGIC;
  signal rxcdr_n_2 : STD_LOGIC;
  signal wb : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rxcdr_clko2x_UNCONNECTED : STD_LOGIC;
  signal NLW_rxcdr_rclko_UNCONNECTED : STD_LOGIC;
  signal NLW_rxcdr_dbg_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute EXT_PLL_DIV : integer;
  attribute EXT_PLL_DIV of rxcdr : label is 2;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of rxcdr : label is "soft";
  attribute USE_EXT_PLL : string;
  attribute USE_EXT_PLL of rxcdr : label is "FALSE";
begin
  clk <= \^clk\;
  rst <= \^rst\;
ep: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_ep_core
     port map (
      CLK => \^clk\,
      Q(0) => wb(0),
      addr(15 downto 0) => addr(15 downto 0),
      locked => cdr_locked,
      \out\(0) => stat(3),
      phase(11 downto 0) => phase(11 downto 0),
      phase_done => phase_done,
      \^q\(7 downto 0) => sync(7 downto 0),
      rdy => rdy,
      rsto => \^rst\,
      \s_reg[1][0]\ => d,
      sclk => sclk,
      srst => srst,
      stat(2 downto 0) => stat(2 downto 0),
      sync_stb => sync_stb,
      tstamp(63 downto 0) => tstamp(63 downto 0),
      tx_dis => tx_dis
    );
rxcdr: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_ep_cdr
     port map (
      clko => \^clk\,
      clko2x => NLW_rxcdr_clko2x_UNCONNECTED,
      clko4x => rxcdr_n_2,
      d => rec_d,
      dbg(7 downto 0) => NLW_rxcdr_dbg_UNCONNECTED(7 downto 0),
      locked => cdr_locked,
      phase(11 downto 0) => phase(11 downto 0),
      phase_done => phase_done,
      q => d,
      rclki => '0',
      rclko => NLW_rxcdr_rclko_UNCONNECTED,
      rsti => '0',
      rsto => \^rst\
    );
txmod: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_mod
     port map (
      CLK => rxcdr_n_2,
      Q(0) => wb(0),
      SS(0) => \^rst\,
      txd => txd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint_wrapper is
  port (
    sync : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : out STD_LOGIC;
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rdy : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_dis : out STD_LOGIC;
    stat : out STD_LOGIC_VECTOR ( 2 downto 0 );
    txd : out STD_LOGIC;
    sync_stb : out STD_LOGIC;
    clk : out STD_LOGIC;
    rec_d : in STD_LOGIC;
    sclk : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    srst : in STD_LOGIC;
    rec_clk : in STD_LOGIC;
    ts_clk_sel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint_wrapper : entity is "pdts_endpoint_wrapper";
end design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint_wrapper;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint_wrapper is
  signal clk_from_endpoint : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ts_clk_mux : label is "BUFGMUX";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of ts_clk_mux : label is "S:CE1,CE0";
  attribute box_type : string;
  attribute box_type of ts_clk_mux : label is "PRIMITIVE";
begin
ts_clk_mux: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      IS_CE0_INVERTED => '1',
      PRESELECT_I0 => true,
      PRESELECT_I1 => false,
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE0 => ts_clk_sel,
      CE1 => ts_clk_sel,
      I0 => clk_from_endpoint,
      I1 => rec_clk,
      IGNORE0 => '0',
      IGNORE1 => '0',
      O => clk,
      S0 => '1',
      S1 => '1'
    );
ts_ep: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint
     port map (
      addr(15 downto 0) => addr(15 downto 0),
      clk => clk_from_endpoint,
      rdy => rdy,
      rec_d => rec_d,
      rst => rst,
      sclk => sclk,
      srst => srst,
      stat(3) => \out\(0),
      stat(2 downto 0) => stat(2 downto 0),
      sync(7 downto 0) => sync(7 downto 0),
      sync_stb => sync_stb,
      tstamp(63 downto 0) => tstamp(63 downto 0),
      tx_dis => tx_dis,
      txd => txd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pdts_endpoint_wrapper_0_0 is
  port (
    sclk : in STD_LOGIC;
    srst : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tgrp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ts_clk_sel : in STD_LOGIC;
    rec_clk : in STD_LOGIC;
    rec_d : in STD_LOGIC;
    sfp_los : in STD_LOGIC;
    cdr_los : in STD_LOGIC;
    cdr_lol : in STD_LOGIC;
    pll_locked : in STD_LOGIC;
    stat : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : out STD_LOGIC;
    clkx2 : out STD_LOGIC;
    rst : out STD_LOGIC;
    rdy : out STD_LOGIC;
    sync : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sync_stb : out STD_LOGIC;
    sync_first : out STD_LOGIC;
    tstamp : out STD_LOGIC_VECTOR ( 63 downto 0 );
    txd : out STD_LOGIC;
    tx_dis : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pdts_endpoint_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pdts_endpoint_wrapper_0_0 : entity is "design_1_pdts_endpoint_wrapper_0_0,pdts_endpoint_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pdts_endpoint_wrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pdts_endpoint_wrapper_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pdts_endpoint_wrapper_0_0 : entity is "pdts_endpoint_wrapper,Vivado 2020.1";
end design_1_pdts_endpoint_wrapper_0_0;

architecture STRUCTURE of design_1_pdts_endpoint_wrapper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_pdts_endpoint_wrapper_0_0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rec_clk : signal is "xilinx.com:signal:clock:1.0 rec_clk CLK";
  attribute X_INTERFACE_PARAMETER of rec_clk : signal is "XIL_INTERFACENAME rec_clk, FREQ_HZ 312500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ts_rec_d_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  clkx2 <= \<const0>\;
  sync_first <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_pdts_endpoint_wrapper_0_0_pdts_endpoint_wrapper
     port map (
      addr(15 downto 0) => addr(15 downto 0),
      clk => clk,
      \out\(0) => stat(3),
      rdy => rdy,
      rec_clk => rec_clk,
      rec_d => rec_d,
      rst => rst,
      sclk => sclk,
      srst => srst,
      stat(2 downto 0) => stat(2 downto 0),
      sync(7 downto 0) => sync(7 downto 0),
      sync_stb => sync_stb,
      ts_clk_sel => ts_clk_sel,
      tstamp(63 downto 0) => tstamp(63 downto 0),
      tx_dis => tx_dis,
      txd => txd
    );
end STRUCTURE;
