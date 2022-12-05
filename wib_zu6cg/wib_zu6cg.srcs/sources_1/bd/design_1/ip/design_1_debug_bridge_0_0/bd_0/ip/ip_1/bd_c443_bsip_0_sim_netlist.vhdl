-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Dec  5 09:31:04 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_0/bd_0/ip/ip_1/bd_c443_bsip_0_sim_netlist.vhdl
-- Design      : bd_c443_bsip_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_c443_bsip_0_bsip_v1_1_0_jtag_reg is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \REG_O_reg[5]_0\ : in STD_LOGIC;
    \REG_O_reg[5]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sh_reg_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    capir_lcl : in STD_LOGIC;
    tap_tdi : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_c443_bsip_0_bsip_v1_1_0_jtag_reg : entity is "bsip_v1_1_0_jtag_reg";
end bd_c443_bsip_0_bsip_v1_1_0_jtag_reg;

architecture STRUCTURE of bd_c443_bsip_0_bsip_v1_1_0_jtag_reg is
  signal sh_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sh_reg : signal is "yes";
  signal \sh_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sh_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sh_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sh_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sh_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sh_reg[5]_i_2_n_0\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \sh_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \sh_reg_reg[0]\ : label is "no";
  attribute KEEP of \sh_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[1]\ : label is "no";
  attribute KEEP of \sh_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[2]\ : label is "no";
  attribute KEEP of \sh_reg_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[3]\ : label is "no";
  attribute KEEP of \sh_reg_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[4]\ : label is "no";
  attribute KEEP of \sh_reg_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[5]\ : label is "no";
begin
  D(0) <= sh_reg(0);
\REG_O_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => \REG_O_reg[5]_1\(0),
      D => sh_reg(0),
      PRE => AR(0),
      Q => Q(0)
    );
\REG_O_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => \REG_O_reg[5]_1\(0),
      CLR => AR(0),
      D => sh_reg(1),
      Q => Q(1)
    );
\REG_O_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => \REG_O_reg[5]_1\(0),
      CLR => AR(0),
      D => sh_reg(2),
      Q => Q(2)
    );
\REG_O_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => \REG_O_reg[5]_1\(0),
      D => sh_reg(3),
      PRE => AR(0),
      Q => Q(3)
    );
\REG_O_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => \REG_O_reg[5]_1\(0),
      CLR => AR(0),
      D => sh_reg(4),
      Q => Q(4)
    );
\REG_O_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => \REG_O_reg[5]_1\(0),
      CLR => AR(0),
      D => sh_reg(5),
      Q => Q(5)
    );
\sh_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sh_reg_reg[5]_0\(0),
      I1 => capir_lcl,
      I2 => sh_reg(1),
      O => \sh_reg[0]_i_1_n_0\
    );
\sh_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sh_reg_reg[5]_0\(1),
      I1 => capir_lcl,
      I2 => sh_reg(2),
      O => \sh_reg[1]_i_1_n_0\
    );
\sh_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sh_reg_reg[5]_0\(2),
      I1 => capir_lcl,
      I2 => sh_reg(3),
      O => \sh_reg[2]_i_1_n_0\
    );
\sh_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sh_reg_reg[5]_0\(3),
      I1 => capir_lcl,
      I2 => sh_reg(4),
      O => \sh_reg[3]_i_1_n_0\
    );
\sh_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sh_reg_reg[5]_0\(4),
      I1 => capir_lcl,
      I2 => sh_reg(5),
      O => \sh_reg[4]_i_1_n_0\
    );
\sh_reg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sh_reg_reg[5]_0\(5),
      I1 => capir_lcl,
      I2 => tap_tdi,
      O => \sh_reg[5]_i_2_n_0\
    );
\sh_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => E(0),
      D => \sh_reg[0]_i_1_n_0\,
      Q => sh_reg(0),
      R => '0'
    );
\sh_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => E(0),
      D => \sh_reg[1]_i_1_n_0\,
      Q => sh_reg(1),
      R => '0'
    );
\sh_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => E(0),
      D => \sh_reg[2]_i_1_n_0\,
      Q => sh_reg(2),
      R => '0'
    );
\sh_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => E(0),
      D => \sh_reg[3]_i_1_n_0\,
      Q => sh_reg(3),
      R => '0'
    );
\sh_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => E(0),
      D => \sh_reg[4]_i_1_n_0\,
      Q => sh_reg(4),
      R => '0'
    );
\sh_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \REG_O_reg[5]_0\,
      CE => E(0),
      D => \sh_reg[5]_i_2_n_0\,
      Q => sh_reg(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized1\ is
  port (
    in0 : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \sh_reg_reg[0]_0\ : in STD_LOGIC;
    \sh_reg_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized1\ : entity is "bsip_v1_1_0_jtag_reg";
end \bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized1\;

architecture STRUCTURE of \bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized1\ is
  signal sh_reg : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sh_reg : signal is "yes";
  attribute KEEP : string;
  attribute KEEP of \sh_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \sh_reg_reg[0]\ : label is "no";
begin
  in0 <= sh_reg;
  \out\ <= sh_reg;
\sh_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[0]_1\,
      CE => '1',
      D => \sh_reg_reg[0]_0\,
      Q => sh_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized3\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sh_reg_reg[31]_0\ : in STD_LOGIC;
    \sh_reg_reg[31]_1\ : in STD_LOGIC;
    tap_tdi : in STD_LOGIC;
    \sh_reg_reg[31]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized3\ : entity is "bsip_v1_1_0_jtag_reg";
end \bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized3\;

architecture STRUCTURE of \bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized3\ is
  signal sh_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sh_reg : signal is "yes";
  attribute KEEP : string;
  attribute KEEP of \sh_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \sh_reg_reg[0]\ : label is "no";
  attribute KEEP of \sh_reg_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[10]\ : label is "no";
  attribute KEEP of \sh_reg_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[11]\ : label is "no";
  attribute KEEP of \sh_reg_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[12]\ : label is "no";
  attribute KEEP of \sh_reg_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[13]\ : label is "no";
  attribute KEEP of \sh_reg_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[14]\ : label is "no";
  attribute KEEP of \sh_reg_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[15]\ : label is "no";
  attribute KEEP of \sh_reg_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[16]\ : label is "no";
  attribute KEEP of \sh_reg_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[17]\ : label is "no";
  attribute KEEP of \sh_reg_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[18]\ : label is "no";
  attribute KEEP of \sh_reg_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[19]\ : label is "no";
  attribute KEEP of \sh_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[1]\ : label is "no";
  attribute KEEP of \sh_reg_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[20]\ : label is "no";
  attribute KEEP of \sh_reg_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[21]\ : label is "no";
  attribute KEEP of \sh_reg_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[22]\ : label is "no";
  attribute KEEP of \sh_reg_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[23]\ : label is "no";
  attribute KEEP of \sh_reg_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[24]\ : label is "no";
  attribute KEEP of \sh_reg_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[25]\ : label is "no";
  attribute KEEP of \sh_reg_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[26]\ : label is "no";
  attribute KEEP of \sh_reg_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[27]\ : label is "no";
  attribute KEEP of \sh_reg_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[28]\ : label is "no";
  attribute KEEP of \sh_reg_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[29]\ : label is "no";
  attribute KEEP of \sh_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[2]\ : label is "no";
  attribute KEEP of \sh_reg_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[30]\ : label is "no";
  attribute KEEP of \sh_reg_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[31]\ : label is "no";
  attribute KEEP of \sh_reg_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[3]\ : label is "no";
  attribute KEEP of \sh_reg_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[4]\ : label is "no";
  attribute KEEP of \sh_reg_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[5]\ : label is "no";
  attribute KEEP of \sh_reg_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[6]\ : label is "no";
  attribute KEEP of \sh_reg_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[7]\ : label is "no";
  attribute KEEP of \sh_reg_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[8]\ : label is "no";
  attribute KEEP of \sh_reg_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \sh_reg_reg[9]\ : label is "no";
begin
  \out\(0) <= sh_reg(0);
\sh_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(1),
      Q => sh_reg(0),
      S => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(11),
      Q => sh_reg(10),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(12),
      Q => sh_reg(11),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(13),
      Q => sh_reg(12),
      S => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(14),
      Q => sh_reg(13),
      S => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(15),
      Q => sh_reg(14),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(16),
      Q => sh_reg(15),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(17),
      Q => sh_reg(16),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(18),
      Q => sh_reg(17),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(19),
      Q => sh_reg(18),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(20),
      Q => sh_reg(19),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(2),
      Q => sh_reg(1),
      S => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(21),
      Q => sh_reg(20),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(22),
      Q => sh_reg(21),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(23),
      Q => sh_reg(22),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(24),
      Q => sh_reg(23),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(25),
      Q => sh_reg(24),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(26),
      Q => sh_reg(25),
      S => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(27),
      Q => sh_reg(26),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(28),
      Q => sh_reg(27),
      S => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(29),
      Q => sh_reg(28),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(30),
      Q => sh_reg(29),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(3),
      Q => sh_reg(2),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(31),
      Q => sh_reg(30),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => tap_tdi,
      Q => sh_reg(31),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(4),
      Q => sh_reg(3),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(5),
      Q => sh_reg(4),
      S => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(6),
      Q => sh_reg(5),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(7),
      Q => sh_reg(6),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(8),
      Q => sh_reg(7),
      S => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(9),
      Q => sh_reg(8),
      R => \sh_reg_reg[31]_0\
    );
\sh_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \sh_reg_reg[31]_2\,
      CE => \sh_reg_reg[31]_1\,
      D => sh_reg(10),
      Q => sh_reg(9),
      R => \sh_reg_reg[31]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_c443_bsip_0_bsip_v1_1_0_jtag_tapctl is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    capir_lcl : out STD_LOGIC;
    CAPDR_O_reg_0 : out STD_LOGIC;
    SHIFTDR_O_reg_0 : out STD_LOGIC;
    runtest : out STD_LOGIC;
    UPDATEIR_O_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    capture : out STD_LOGIC;
    shift : out STD_LOGIC;
    update : out STD_LOGIC;
    tap_tdi_0 : out STD_LOGIC;
    tdo_rise_edge : out STD_LOGIC;
    UPDATEDR_O_reg_0 : in STD_LOGIC;
    SEL : in STD_LOGIC;
    tap_tdi : in STD_LOGIC;
    in0 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    TDO_O_reg : in STD_LOGIC;
    tap_tms : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_c443_bsip_0_bsip_v1_1_0_jtag_tapctl : entity is "bsip_v1_1_0_jtag_tapctl";
end bd_c443_bsip_0_bsip_v1_1_0_jtag_tapctl;

architecture STRUCTURE of bd_c443_bsip_0_bsip_v1_1_0_jtag_tapctl is
  signal \^capdr_o_reg_0\ : STD_LOGIC;
  signal RUNTEST_O_i_1_n_0 : STD_LOGIC;
  signal \^shiftdr_o_reg_0\ : STD_LOGIC;
  signal UPDATEDR_O : STD_LOGIC;
  signal capdr_i_n_0 : STD_LOGIC;
  signal capir_i_n_0 : STD_LOGIC;
  signal \^capir_lcl\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state : signal is "yes";
  attribute signal_encoding : string;
  attribute signal_encoding of current_state : signal is "user";
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset_i_n_0 : STD_LOGIC;
  signal shiftdr_i_n_0 : STD_LOGIC;
  signal shiftir_i_n_0 : STD_LOGIC;
  signal shiftir_lcl : STD_LOGIC;
  signal updatedr_i_n_0 : STD_LOGIC;
  signal updateir_i_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of capture_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \current_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \current_state[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_state[3]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \current_state_reg[0]\ : label is "tlr_st:1111,rti_st:1100,seldr_st:0111,capdr_st:0110,shdr_st:0010,ex1dr_st:0001,pdr_st:0011,ex2dr_st:0000,udr_st:0101,selir_st:0100,capir_st:1110,shir_st:1010,ex1ir_st:1001,pir_st:1011,ex2ir_st:1000,uir_st:1101";
  attribute KEEP : string;
  attribute KEEP of \current_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \current_state_reg[0]\ : label is "no";
  attribute signal_encoding of \current_state_reg[0]\ : label is "user";
  attribute FSM_ENCODED_STATES of \current_state_reg[1]\ : label is "tlr_st:1111,rti_st:1100,seldr_st:0111,capdr_st:0110,shdr_st:0010,ex1dr_st:0001,pdr_st:0011,ex2dr_st:0000,udr_st:0101,selir_st:0100,capir_st:1110,shir_st:1010,ex1ir_st:1001,pir_st:1011,ex2ir_st:1000,uir_st:1101";
  attribute KEEP of \current_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \current_state_reg[1]\ : label is "no";
  attribute signal_encoding of \current_state_reg[1]\ : label is "user";
  attribute FSM_ENCODED_STATES of \current_state_reg[2]\ : label is "tlr_st:1111,rti_st:1100,seldr_st:0111,capdr_st:0110,shdr_st:0010,ex1dr_st:0001,pdr_st:0011,ex2dr_st:0000,udr_st:0101,selir_st:0100,capir_st:1110,shir_st:1010,ex1ir_st:1001,pir_st:1011,ex2ir_st:1000,uir_st:1101";
  attribute KEEP of \current_state_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \current_state_reg[2]\ : label is "no";
  attribute signal_encoding of \current_state_reg[2]\ : label is "user";
  attribute FSM_ENCODED_STATES of \current_state_reg[3]\ : label is "tlr_st:1111,rti_st:1100,seldr_st:0111,capdr_st:0110,shdr_st:0010,ex1dr_st:0001,pdr_st:0011,ex2dr_st:0000,udr_st:0101,selir_st:0100,capir_st:1110,shir_st:1010,ex1ir_st:1001,pir_st:1011,ex2ir_st:1000,uir_st:1101";
  attribute KEEP of \current_state_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \current_state_reg[3]\ : label is "no";
  attribute signal_encoding of \current_state_reg[3]\ : label is "user";
  attribute SOFT_HLUTNM of \sh_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of shift_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of update_INST_0 : label is "soft_lutpair3";
begin
  CAPDR_O_reg_0 <= \^capdr_o_reg_0\;
  SHIFTDR_O_reg_0 <= \^shiftdr_o_reg_0\;
  capir_lcl <= \^capir_lcl\;
CAPDR_O_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => capdr_i_n_0,
      Q => \^capdr_o_reg_0\,
      R => '0'
    );
CAPIR_O_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => capir_i_n_0,
      Q => \^capir_lcl\,
      R => '0'
    );
RESET_O_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => reset_i_n_0,
      Q => AS(0),
      R => '0'
    );
RUNTEST_O_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(3),
      I3 => current_state(2),
      O => RUNTEST_O_i_1_n_0
    );
RUNTEST_O_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => RUNTEST_O_i_1_n_0,
      Q => runtest,
      R => '0'
    );
SHIFTDR_O_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => shiftdr_i_n_0,
      Q => \^shiftdr_o_reg_0\,
      R => '0'
    );
SHIFTIR_O_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => shiftir_i_n_0,
      Q => shiftir_lcl,
      R => '0'
    );
UPDATEDR_O_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => updatedr_i_n_0,
      Q => UPDATEDR_O,
      R => '0'
    );
UPDATEIR_O_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => updateir_i_n_0,
      Q => UPDATEIR_O_reg_0(0),
      R => '0'
    );
capdr_i: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => capdr_i_n_0
    );
capir_i: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(3),
      I3 => current_state(1),
      O => capir_i_n_0
    );
capture_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SEL,
      I1 => \^capdr_o_reg_0\,
      O => capture
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF3300"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => tap_tms,
      O => \next_state__0\(0)
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3004DFF"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(2),
      I4 => tap_tms,
      O => \next_state__0\(1)
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88FC"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => tap_tms,
      I3 => current_state(1),
      O => \next_state__0\(2)
    );
\current_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A6AEAE"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => tap_tms,
      O => \next_state__0\(3)
    );
\current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => \next_state__0\(0),
      Q => current_state(0),
      R => '0'
    );
\current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => \next_state__0\(1),
      Q => current_state(1),
      R => '0'
    );
\current_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => \next_state__0\(2),
      Q => current_state(2),
      R => '0'
    );
\current_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => UPDATEDR_O_reg_0,
      CE => '1',
      D => \next_state__0\(3),
      Q => current_state(3),
      R => '0'
    );
reset_i: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => current_state(1),
      O => reset_i_n_0
    );
\sh_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => tap_tdi,
      I1 => \^capdr_o_reg_0\,
      I2 => \^shiftdr_o_reg_0\,
      I3 => in0,
      O => tap_tdi_0
    );
\sh_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^capir_lcl\,
      I1 => shiftir_lcl,
      O => E(0)
    );
shift_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SEL,
      I1 => \^shiftdr_o_reg_0\,
      O => shift
    );
shiftdr_i: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      O => shiftdr_i_n_0
    );
shiftir_i: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(3),
      O => shiftir_i_n_0
    );
tdo_rise_edge_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out\,
      I1 => current_state(3),
      I2 => TDO_O_reg,
      O => tdo_rise_edge
    );
update_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SEL,
      I1 => UPDATEDR_O,
      O => update
    );
updatedr_i: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(2),
      O => updatedr_i_n_0
    );
updateir_i: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(3),
      O => updateir_i_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_c443_bsip_0_bsip_v1_1_0_jtag_tap is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tap_tdo : out STD_LOGIC;
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    capdr : out STD_LOGIC;
    shiftdr : out STD_LOGIC;
    runtest : out STD_LOGIC;
    capture : out STD_LOGIC;
    shift : out STD_LOGIC;
    update : out STD_LOGIC;
    UPDATEDR_O_reg : in STD_LOGIC;
    SEL : in STD_LOGIC;
    tap_tdi : in STD_LOGIC;
    \sh_reg_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    tdo : in STD_LOGIC;
    tap_tms : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_c443_bsip_0_bsip_v1_1_0_jtag_tap : entity is "bsip_v1_1_0_jtag_tap";
end bd_c443_bsip_0_bsip_v1_1_0_jtag_tap;

architecture STRUCTURE of bd_c443_bsip_0_bsip_v1_1_0_jtag_tap is
  signal \^as\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UPDATEIR_O : STD_LOGIC;
  signal U_TAP_n_10 : STD_LOGIC;
  signal U_TAP_n_6 : STD_LOGIC;
  signal bypass_tdo : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of bypass_tdo : signal is "yes";
  signal \^capdr\ : STD_LOGIC;
  signal capir_lcl : STD_LOGIC;
  signal dr_tdo : STD_LOGIC;
  attribute RTL_KEEP of dr_tdo : signal is "yes";
  signal dr_tdo_inferred_i_2_n_0 : STD_LOGIC;
  signal dr_tdo_inferred_i_3_n_0 : STD_LOGIC;
  signal id_tdo : STD_LOGIC;
  attribute RTL_KEEP of id_tdo : signal is "yes";
  signal instr_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute RTL_KEEP of instr_reg : signal is "yes";
  signal ir_tdo : STD_LOGIC;
  attribute RTL_KEEP of ir_tdo : signal is "yes";
  signal sh_reg_orig : STD_LOGIC;
  signal \^shiftdr\ : STD_LOGIC;
  signal tdo_rise_edge : STD_LOGIC;
  attribute RTL_KEEP of tdo_rise_edge : signal is "yes";
begin
  AS(0) <= \^as\(0);
  capdr <= \^capdr\;
  \out\(5 downto 0) <= instr_reg(5 downto 0);
  shiftdr <= \^shiftdr\;
TDO_O_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => UPDATEDR_O_reg,
      CE => '1',
      CLR => \^as\(0),
      D => tdo_rise_edge,
      Q => tap_tdo
    );
U_BYPASS: entity work.\bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized1\
     port map (
      in0 => sh_reg_orig,
      \out\ => bypass_tdo,
      \sh_reg_reg[0]_0\ => U_TAP_n_10,
      \sh_reg_reg[0]_1\ => UPDATEDR_O_reg
    );
U_ID: entity work.\bd_c443_bsip_0_bsip_v1_1_0_jtag_reg__parameterized3\
     port map (
      \out\(0) => id_tdo,
      \sh_reg_reg[31]_0\ => \^capdr\,
      \sh_reg_reg[31]_1\ => \^shiftdr\,
      \sh_reg_reg[31]_2\ => UPDATEDR_O_reg,
      tap_tdi => tap_tdi
    );
U_IR: entity work.bd_c443_bsip_0_bsip_v1_1_0_jtag_reg
     port map (
      AR(0) => \^as\(0),
      D(0) => ir_tdo,
      E(0) => U_TAP_n_6,
      Q(5 downto 0) => instr_reg(5 downto 0),
      \REG_O_reg[5]_0\ => UPDATEDR_O_reg,
      \REG_O_reg[5]_1\(0) => UPDATEIR_O,
      capir_lcl => capir_lcl,
      \sh_reg_reg[5]_0\(5 downto 0) => \sh_reg_reg[5]\(5 downto 0),
      tap_tdi => tap_tdi
    );
U_TAP: entity work.bd_c443_bsip_0_bsip_v1_1_0_jtag_tapctl
     port map (
      AS(0) => \^as\(0),
      CAPDR_O_reg_0 => \^capdr\,
      E(0) => U_TAP_n_6,
      SEL => SEL,
      SHIFTDR_O_reg_0 => \^shiftdr\,
      TDO_O_reg => dr_tdo,
      UPDATEDR_O_reg_0 => UPDATEDR_O_reg,
      UPDATEIR_O_reg_0(0) => UPDATEIR_O,
      capir_lcl => capir_lcl,
      capture => capture,
      in0 => sh_reg_orig,
      \out\ => ir_tdo,
      runtest => runtest,
      shift => shift,
      tap_tdi => tap_tdi,
      tap_tdi_0 => U_TAP_n_10,
      tap_tms => tap_tms,
      tdo_rise_edge => tdo_rise_edge,
      update => update
    );
dr_tdo_inferred_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFCAA0C"
    )
        port map (
      I0 => id_tdo,
      I1 => tdo,
      I2 => dr_tdo_inferred_i_2_n_0,
      I3 => dr_tdo_inferred_i_3_n_0,
      I4 => bypass_tdo,
      O => dr_tdo
    );
dr_tdo_inferred_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => instr_reg(0),
      I1 => instr_reg(5),
      I2 => instr_reg(2),
      I3 => instr_reg(4),
      I4 => instr_reg(1),
      I5 => instr_reg(3),
      O => dr_tdo_inferred_i_2_n_0
    );
dr_tdo_inferred_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => instr_reg(0),
      I1 => instr_reg(5),
      I2 => instr_reg(2),
      I3 => instr_reg(4),
      I4 => instr_reg(1),
      I5 => instr_reg(3),
      O => dr_tdo_inferred_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_c443_bsip_0_bsip_v1_1_0_bscan_tap is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    tap_tdo : out STD_LOGIC;
    SEL : out STD_LOGIC;
    drck : out STD_LOGIC;
    capture : out STD_LOGIC;
    shift : out STD_LOGIC;
    update : out STD_LOGIC;
    runtest : out STD_LOGIC;
    UPDATEDR_O_reg : in STD_LOGIC;
    tap_tms : in STD_LOGIC;
    tap_tdi : in STD_LOGIC;
    tdo : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_c443_bsip_0_bsip_v1_1_0_bscan_tap : entity is "bsip_v1_1_0_bscan_tap";
end bd_c443_bsip_0_bsip_v1_1_0_bscan_tap;

architecture STRUCTURE of bd_c443_bsip_0_bsip_v1_1_0_bscan_tap is
  signal capdr : STD_LOGIC;
  signal instr_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of instr_reg : signal is "yes";
  signal shiftdr : STD_LOGIC;
  signal user_code_sel : STD_LOGIC;
  attribute RTL_KEEP of user_code_sel : signal is "yes";
begin
  SEL <= user_code_sel;
\/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => user_code_sel,
      I1 => shiftdr,
      I2 => capdr,
      I3 => UPDATEDR_O_reg,
      O => drck
    );
U_BASETAP: entity work.bd_c443_bsip_0_bsip_v1_1_0_jtag_tap
     port map (
      AS(0) => AR(0),
      SEL => user_code_sel,
      UPDATEDR_O_reg => UPDATEDR_O_reg,
      capdr => capdr,
      capture => capture,
      \out\(5 downto 0) => instr_reg(5 downto 0),
      runtest => runtest,
      \sh_reg_reg[5]\(5 downto 0) => instr_reg(5 downto 0),
      shift => shift,
      shiftdr => shiftdr,
      tap_tdi => tap_tdi,
      tap_tdo => tap_tdo,
      tap_tms => tap_tms,
      tdo => tdo,
      update => update
    );
\user_code_sel_inferred__1/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => instr_reg(5),
      I1 => instr_reg(4),
      I2 => instr_reg(0),
      I3 => instr_reg(1),
      I4 => instr_reg(3),
      I5 => instr_reg(2),
      O => user_code_sel
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_c443_bsip_0_bsip_v1_1_0_bsip is
  port (
    drck : out STD_LOGIC;
    reset : out STD_LOGIC;
    sel : out STD_LOGIC;
    capture : out STD_LOGIC;
    shift : out STD_LOGIC;
    runtest : out STD_LOGIC;
    tdi : out STD_LOGIC;
    tck : out STD_LOGIC;
    tms : out STD_LOGIC;
    update : out STD_LOGIC;
    tap_tdo : out STD_LOGIC;
    prim_drck : in STD_LOGIC;
    prim_reset : in STD_LOGIC;
    prim_sel : in STD_LOGIC;
    prim_capture : in STD_LOGIC;
    prim_shift : in STD_LOGIC;
    prim_runtest : in STD_LOGIC;
    prim_tdi : in STD_LOGIC;
    prim_tck : in STD_LOGIC;
    prim_tms : in STD_LOGIC;
    prim_update : in STD_LOGIC;
    prim_tdo : out STD_LOGIC;
    tdo : in STD_LOGIC;
    tap_tdi : in STD_LOGIC;
    tap_tms : in STD_LOGIC;
    tap_tck : in STD_LOGIC
  );
  attribute C_CHIP_ID : integer;
  attribute C_CHIP_ID of bd_c443_bsip_0_bsip_v1_1_0_bsip : entity is 0;
  attribute C_DEVICE_FAMILY : integer;
  attribute C_DEVICE_FAMILY of bd_c443_bsip_0_bsip_v1_1_0_bsip : entity is 0;
  attribute C_EN_MUX : integer;
  attribute C_EN_MUX of bd_c443_bsip_0_bsip_v1_1_0_bsip : entity is 0;
  attribute C_EN_MUX_EXT_BS : integer;
  attribute C_EN_MUX_EXT_BS of bd_c443_bsip_0_bsip_v1_1_0_bsip : entity is 0;
  attribute C_IR_ID_INSTR : integer;
  attribute C_IR_ID_INSTR of bd_c443_bsip_0_bsip_v1_1_0_bsip : entity is 0;
  attribute C_IR_USER1_INSTR : integer;
  attribute C_IR_USER1_INSTR of bd_c443_bsip_0_bsip_v1_1_0_bsip : entity is 0;
  attribute C_IR_WIDTH : integer;
  attribute C_IR_WIDTH of bd_c443_bsip_0_bsip_v1_1_0_bsip : entity is 0;
  attribute C_USER_SCAN_CHAIN : integer;
  attribute C_USER_SCAN_CHAIN of bd_c443_bsip_0_bsip_v1_1_0_bsip : entity is 1;
  attribute C_USE_SOFTBSCAN : integer;
  attribute C_USE_SOFTBSCAN of bd_c443_bsip_0_bsip_v1_1_0_bsip : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_c443_bsip_0_bsip_v1_1_0_bsip : entity is "bsip_v1_1_0_bsip";
end bd_c443_bsip_0_bsip_v1_1_0_bsip;

architecture STRUCTURE of bd_c443_bsip_0_bsip_v1_1_0_bsip is
  signal \<const0>\ : STD_LOGIC;
  signal \^tap_tdi\ : STD_LOGIC;
  signal \^tap_tms\ : STD_LOGIC;
  signal \^tck\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \USE_SOFTBSCAN.U_TAP_TCKBUFG\ : label is "BUFG";
  attribute box_type : string;
  attribute box_type of \USE_SOFTBSCAN.U_TAP_TCKBUFG\ : label is "PRIMITIVE";
begin
  \^tap_tdi\ <= tap_tdi;
  \^tap_tms\ <= tap_tms;
  prim_tdo <= \<const0>\;
  tck <= \^tck\;
  tdi <= \^tap_tdi\;
  tms <= \^tap_tms\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\USE_SOFTBSCAN.U_BSCAN_TAP\: entity work.bd_c443_bsip_0_bsip_v1_1_0_bscan_tap
     port map (
      AR(0) => reset,
      SEL => sel,
      UPDATEDR_O_reg => \^tck\,
      capture => capture,
      drck => drck,
      runtest => runtest,
      shift => shift,
      tap_tdi => \^tap_tdi\,
      tap_tdo => tap_tdo,
      tap_tms => \^tap_tms\,
      tdo => tdo,
      update => update
    );
\USE_SOFTBSCAN.U_TAP_TCKBUFG\: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE => '1',
      I => tap_tck,
      O => \^tck\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_c443_bsip_0 is
  port (
    drck : out STD_LOGIC;
    reset : out STD_LOGIC;
    sel : out STD_LOGIC;
    shift : out STD_LOGIC;
    tdi : out STD_LOGIC;
    update : out STD_LOGIC;
    capture : out STD_LOGIC;
    runtest : out STD_LOGIC;
    tck : out STD_LOGIC;
    tms : out STD_LOGIC;
    tap_tdo : out STD_LOGIC;
    tdo : in STD_LOGIC;
    tap_tdi : in STD_LOGIC;
    tap_tms : in STD_LOGIC;
    tap_tck : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_c443_bsip_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_c443_bsip_0 : entity is "bd_c443_bsip_0,bsip_v1_1_0_bsip,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_c443_bsip_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_c443_bsip_0 : entity is "bsip_v1_1_0_bsip,Vivado 2020.1";
  attribute dont_touch : string;
  attribute dont_touch of bd_c443_bsip_0 : entity is "true";
end bd_c443_bsip_0;

architecture STRUCTURE of bd_c443_bsip_0 is
  signal NLW_inst_prim_tdo_UNCONNECTED : STD_LOGIC;
  attribute C_CHIP_ID : integer;
  attribute C_CHIP_ID of inst : label is 0;
  attribute C_DEVICE_FAMILY : integer;
  attribute C_DEVICE_FAMILY of inst : label is 0;
  attribute C_EN_MUX : integer;
  attribute C_EN_MUX of inst : label is 0;
  attribute C_EN_MUX_EXT_BS : integer;
  attribute C_EN_MUX_EXT_BS of inst : label is 0;
  attribute C_IR_ID_INSTR : integer;
  attribute C_IR_ID_INSTR of inst : label is 0;
  attribute C_IR_USER1_INSTR : integer;
  attribute C_IR_USER1_INSTR of inst : label is 0;
  attribute C_IR_WIDTH : integer;
  attribute C_IR_WIDTH of inst : label is 0;
  attribute C_USER_SCAN_CHAIN : integer;
  attribute C_USER_SCAN_CHAIN of inst : label is 1;
  attribute C_USE_SOFTBSCAN : integer;
  attribute C_USE_SOFTBSCAN of inst : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of capture : signal is "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE";
  attribute X_INTERFACE_INFO of drck : signal is "xilinx.com:interface:bscan:1.0 m_bscan DRCK";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:interface:bscan:1.0 m_bscan RESET";
  attribute X_INTERFACE_INFO of runtest : signal is "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST";
  attribute X_INTERFACE_INFO of sel : signal is "xilinx.com:interface:bscan:1.0 m_bscan SEL";
  attribute X_INTERFACE_INFO of shift : signal is "xilinx.com:interface:bscan:1.0 m_bscan SHIFT";
  attribute X_INTERFACE_INFO of tck : signal is "xilinx.com:interface:bscan:1.0 m_bscan TCK";
  attribute X_INTERFACE_INFO of tdi : signal is "xilinx.com:interface:bscan:1.0 m_bscan TDI";
  attribute X_INTERFACE_INFO of tdo : signal is "xilinx.com:interface:bscan:1.0 m_bscan TDO";
  attribute X_INTERFACE_INFO of tms : signal is "xilinx.com:interface:bscan:1.0 m_bscan TMS";
  attribute X_INTERFACE_INFO of update : signal is "xilinx.com:interface:bscan:1.0 m_bscan UPDATE";
begin
inst: entity work.bd_c443_bsip_0_bsip_v1_1_0_bsip
     port map (
      capture => capture,
      drck => drck,
      prim_capture => '0',
      prim_drck => '0',
      prim_reset => '0',
      prim_runtest => '0',
      prim_sel => '0',
      prim_shift => '0',
      prim_tck => '0',
      prim_tdi => '0',
      prim_tdo => NLW_inst_prim_tdo_UNCONNECTED,
      prim_tms => '0',
      prim_update => '0',
      reset => reset,
      runtest => runtest,
      sel => sel,
      shift => shift,
      tap_tck => tap_tck,
      tap_tdi => tap_tdi,
      tap_tdo => tap_tdo,
      tap_tms => tap_tms,
      tck => tck,
      tdi => tdi,
      tdo => tdo,
      tms => tms,
      update => update
    );
end STRUCTURE;
