-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Dec  2 20:12:49 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_0/bd_0/ip/ip_0/bd_c443_axi_jtag_0_sim_netlist.vhdl
-- Design      : bd_c443_axi_jtag_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi4liteif is
  port (
    axi_wready_reg_0 : out STD_LOGIC;
    reset : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[30]_0\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \slv_reg1_reg[31]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg1_reg[30]_0\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg0_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    done : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    enable_d : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg4_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \slv_reg3_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi4liteif : entity is "axi_jtag_v1_0_0_axi4liteif";
end bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi4liteif;

architecture STRUCTURE of bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi4liteif is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_2_in : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^reset\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_reg0_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_reg1_reg[30]_0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_reg2_reg[30]_0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg4_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal slv_reg_rden : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg4[31]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tck_count[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tdi_output[31]_i_1\ : label is "soft_lutpair1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  reset <= \^reset\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  \slv_reg0_reg[31]_0\(31 downto 0) <= \^slv_reg0_reg[31]_0\(31 downto 0);
  \slv_reg1_reg[30]_0\(30 downto 0) <= \^slv_reg1_reg[30]_0\(30 downto 0);
  \slv_reg2_reg[30]_0\(30 downto 0) <= \^slv_reg2_reg[30]_0\(30 downto 0);
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_arready0,
      D => s_axi_araddr(0),
      Q => sel0(0),
      R => \^reset\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_arready0,
      D => s_axi_araddr(1),
      Q => sel0(1),
      R => \^reset\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_arready0,
      D => s_axi_araddr(2),
      Q => sel0(2),
      R => \^reset\
    );
axi_arready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => \^reset\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      O => p_2_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_2_in,
      D => s_axi_awaddr(0),
      Q => axi_awaddr(2),
      R => \^reset\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_2_in,
      D => s_axi_awaddr(1),
      Q => axi_awaddr(3),
      R => \^reset\
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_2_in,
      D => s_axi_awaddr(2),
      Q => axi_awaddr(4),
      R => \^reset\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^reset\
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => \^q\(0),
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => \^reset\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
      I4 => s_axi_awvalid,
      I5 => s_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => \^reset\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAEFAAAFAAEAAA"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => slv_reg3(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => \^slv_reg2_reg[30]_0\(0),
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000B0008"
    )
        port map (
      I0 => \^slv_reg1_reg[30]_0\(0),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \^slv_reg0_reg[31]_0\(0),
      I5 => \axi_rdata[0]_i_3_n_0\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2200F000"
    )
        port map (
      I0 => slv_reg5(0),
      I1 => sel0(1),
      I2 => \^q\(0),
      I3 => sel0(2),
      I4 => sel0(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[10]\,
      I5 => \^slv_reg1_reg[30]_0\(10),
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(10),
      I1 => \^slv_reg0_reg[31]_0\(10),
      I2 => slv_reg3(10),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[11]\,
      I5 => \^slv_reg1_reg[30]_0\(11),
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(11),
      I1 => \^slv_reg0_reg[31]_0\(11),
      I2 => slv_reg3(11),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[12]\,
      I5 => \^slv_reg1_reg[30]_0\(12),
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(12),
      I1 => \^slv_reg0_reg[31]_0\(12),
      I2 => slv_reg3(12),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[13]\,
      I5 => \^slv_reg1_reg[30]_0\(13),
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(13),
      I1 => \^slv_reg0_reg[31]_0\(13),
      I2 => slv_reg3(13),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[14]\,
      I5 => \^slv_reg1_reg[30]_0\(14),
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(14),
      I1 => \^slv_reg0_reg[31]_0\(14),
      I2 => slv_reg3(14),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[15]\,
      I5 => \^slv_reg1_reg[30]_0\(15),
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(15),
      I1 => \^slv_reg0_reg[31]_0\(15),
      I2 => slv_reg3(15),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEEFEEEFEEEEEE"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => \axi_rdata[16]_i_3_n_0\,
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => \slv_reg4_reg_n_0_[16]\,
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"32000200"
    )
        port map (
      I0 => \^slv_reg1_reg[30]_0\(16),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg3(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA0C"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(16),
      I1 => \^slv_reg0_reg[31]_0\(16),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[17]\,
      I5 => \^slv_reg1_reg[30]_0\(17),
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(17),
      I1 => \^slv_reg0_reg[31]_0\(17),
      I2 => slv_reg3(17),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[18]\,
      I5 => \^slv_reg1_reg[30]_0\(18),
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(18),
      I1 => \^slv_reg0_reg[31]_0\(18),
      I2 => slv_reg3(18),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[19]\,
      I5 => \^slv_reg1_reg[30]_0\(19),
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(19),
      I1 => \^slv_reg0_reg[31]_0\(19),
      I2 => slv_reg3(19),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \^q\(1),
      I5 => \^slv_reg1_reg[30]_0\(1),
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(1),
      I1 => \^slv_reg0_reg[31]_0\(1),
      I2 => slv_reg3(1),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[20]\,
      I5 => \^slv_reg1_reg[30]_0\(20),
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(20),
      I1 => \^slv_reg0_reg[31]_0\(20),
      I2 => slv_reg3(20),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[21]\,
      I5 => \^slv_reg1_reg[30]_0\(21),
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(21),
      I1 => \^slv_reg0_reg[31]_0\(21),
      I2 => slv_reg3(21),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[22]\,
      I5 => \^slv_reg1_reg[30]_0\(22),
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(22),
      I1 => \^slv_reg0_reg[31]_0\(22),
      I2 => slv_reg3(22),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[23]\,
      I5 => \^slv_reg1_reg[30]_0\(23),
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(23),
      I1 => \^slv_reg0_reg[31]_0\(23),
      I2 => slv_reg3(23),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[24]\,
      I5 => \^slv_reg1_reg[30]_0\(24),
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(24),
      I1 => \^slv_reg0_reg[31]_0\(24),
      I2 => slv_reg3(24),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[25]\,
      I5 => \^slv_reg1_reg[30]_0\(25),
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(25),
      I1 => \^slv_reg0_reg[31]_0\(25),
      I2 => slv_reg3(25),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[26]\,
      I5 => \^slv_reg1_reg[30]_0\(26),
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(26),
      I1 => \^slv_reg0_reg[31]_0\(26),
      I2 => slv_reg3(26),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[27]\,
      I5 => \^slv_reg1_reg[30]_0\(27),
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(27),
      I1 => \^slv_reg0_reg[31]_0\(27),
      I2 => slv_reg3(27),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[28]\,
      I5 => \^slv_reg1_reg[30]_0\(28),
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(28),
      I1 => \^slv_reg0_reg[31]_0\(28),
      I2 => slv_reg3(28),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[29]\,
      I5 => \^slv_reg1_reg[30]_0\(29),
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(29),
      I1 => \^slv_reg0_reg[31]_0\(29),
      I2 => slv_reg3(29),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[2]\,
      I5 => \^slv_reg1_reg[30]_0\(2),
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(2),
      I1 => \^slv_reg0_reg[31]_0\(2),
      I2 => slv_reg3(2),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[30]\,
      I5 => \^slv_reg1_reg[30]_0\(30),
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(30),
      I1 => \^slv_reg0_reg[31]_0\(30),
      I2 => slv_reg3(30),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^s_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[31]_i_3_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[31]\,
      I5 => slv_reg1(31),
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => slv_reg2(31),
      I1 => \^slv_reg0_reg[31]_0\(31),
      I2 => slv_reg3(31),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[3]\,
      I5 => \^slv_reg1_reg[30]_0\(3),
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(3),
      I1 => \^slv_reg0_reg[31]_0\(3),
      I2 => slv_reg3(3),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[4]\,
      I5 => \^slv_reg1_reg[30]_0\(4),
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(4),
      I1 => \^slv_reg0_reg[31]_0\(4),
      I2 => slv_reg3(4),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[5]\,
      I5 => \^slv_reg1_reg[30]_0\(5),
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(5),
      I1 => \^slv_reg0_reg[31]_0\(5),
      I2 => slv_reg3(5),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[6]\,
      I5 => \^slv_reg1_reg[30]_0\(6),
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(6),
      I1 => \^slv_reg0_reg[31]_0\(6),
      I2 => slv_reg3(6),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[7]\,
      I5 => \^slv_reg1_reg[30]_0\(7),
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(7),
      I1 => \^slv_reg0_reg[31]_0\(7),
      I2 => slv_reg3(7),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[8]\,
      I5 => \^slv_reg1_reg[30]_0\(8),
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(8),
      I1 => \^slv_reg0_reg[31]_0\(8),
      I2 => slv_reg3(8),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBAABAAAABAAAAA"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \slv_reg4_reg_n_0_[9]\,
      I5 => \^slv_reg1_reg[30]_0\(9),
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000AA00CC"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_0\(9),
      I1 => \^slv_reg0_reg[31]_0\(9),
      I2 => slv_reg3(9),
      I3 => sel0(2),
      I4 => sel0(1),
      I5 => sel0(0),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s_axi_rdata(0),
      R => \^reset\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s_axi_rdata(10),
      R => \^reset\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s_axi_rdata(11),
      R => \^reset\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s_axi_rdata(12),
      R => \^reset\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s_axi_rdata(13),
      R => \^reset\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s_axi_rdata(14),
      R => \^reset\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s_axi_rdata(15),
      R => \^reset\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s_axi_rdata(16),
      R => \^reset\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s_axi_rdata(17),
      R => \^reset\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s_axi_rdata(18),
      R => \^reset\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s_axi_rdata(19),
      R => \^reset\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s_axi_rdata(1),
      R => \^reset\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s_axi_rdata(20),
      R => \^reset\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s_axi_rdata(21),
      R => \^reset\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s_axi_rdata(22),
      R => \^reset\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s_axi_rdata(23),
      R => \^reset\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s_axi_rdata(24),
      R => \^reset\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s_axi_rdata(25),
      R => \^reset\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s_axi_rdata(26),
      R => \^reset\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s_axi_rdata(27),
      R => \^reset\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s_axi_rdata(28),
      R => \^reset\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s_axi_rdata(29),
      R => \^reset\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s_axi_rdata(2),
      R => \^reset\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s_axi_rdata(30),
      R => \^reset\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s_axi_rdata(31),
      R => \^reset\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s_axi_rdata(3),
      R => \^reset\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s_axi_rdata(4),
      R => \^reset\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s_axi_rdata(5),
      R => \^reset\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s_axi_rdata(6),
      R => \^reset\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s_axi_rdata(7),
      R => \^reset\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s_axi_rdata(8),
      R => \^reset\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s_axi_rdata(9),
      R => \^reset\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      I3 => s_axi_arvalid,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => \^reset\
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^axi_wready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => \^reset\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg4[31]_i_3_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg4[31]_i_3_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg4[31]_i_3_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg4[31]_i_3_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^slv_reg0_reg[31]_0\(0),
      R => \^reset\
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \^slv_reg0_reg[31]_0\(10),
      R => \^reset\
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \^slv_reg0_reg[31]_0\(11),
      R => \^reset\
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \^slv_reg0_reg[31]_0\(12),
      R => \^reset\
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \^slv_reg0_reg[31]_0\(13),
      R => \^reset\
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \^slv_reg0_reg[31]_0\(14),
      R => \^reset\
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \^slv_reg0_reg[31]_0\(15),
      R => \^reset\
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \^slv_reg0_reg[31]_0\(16),
      R => \^reset\
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \^slv_reg0_reg[31]_0\(17),
      R => \^reset\
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \^slv_reg0_reg[31]_0\(18),
      R => \^reset\
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \^slv_reg0_reg[31]_0\(19),
      R => \^reset\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \^slv_reg0_reg[31]_0\(1),
      R => \^reset\
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \^slv_reg0_reg[31]_0\(20),
      R => \^reset\
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \^slv_reg0_reg[31]_0\(21),
      R => \^reset\
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \^slv_reg0_reg[31]_0\(22),
      R => \^reset\
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \^slv_reg0_reg[31]_0\(23),
      R => \^reset\
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \^slv_reg0_reg[31]_0\(24),
      R => \^reset\
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \^slv_reg0_reg[31]_0\(25),
      R => \^reset\
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \^slv_reg0_reg[31]_0\(26),
      R => \^reset\
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \^slv_reg0_reg[31]_0\(27),
      R => \^reset\
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \^slv_reg0_reg[31]_0\(28),
      R => \^reset\
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \^slv_reg0_reg[31]_0\(29),
      R => \^reset\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^slv_reg0_reg[31]_0\(2),
      R => \^reset\
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \^slv_reg0_reg[31]_0\(30),
      R => \^reset\
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \^slv_reg0_reg[31]_0\(31),
      R => \^reset\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^slv_reg0_reg[31]_0\(3),
      R => \^reset\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \^slv_reg0_reg[31]_0\(4),
      R => \^reset\
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^slv_reg0_reg[31]_0\(5),
      R => \^reset\
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \^slv_reg0_reg[31]_0\(6),
      R => \^reset\
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \^slv_reg0_reg[31]_0\(7),
      R => \^reset\
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \^slv_reg0_reg[31]_0\(8),
      R => \^reset\
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \^slv_reg0_reg[31]_0\(9),
      R => \^reset\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_3_n_0\,
      I3 => axi_awaddr(2),
      I4 => s_axi_wstrb(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_3_n_0\,
      I3 => axi_awaddr(2),
      I4 => s_axi_wstrb(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_3_n_0\,
      I3 => axi_awaddr(2),
      I4 => s_axi_wstrb(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_3_n_0\,
      I3 => axi_awaddr(2),
      I4 => s_axi_wstrb(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^slv_reg1_reg[30]_0\(0),
      R => \^reset\
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \^slv_reg1_reg[30]_0\(10),
      R => \^reset\
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \^slv_reg1_reg[30]_0\(11),
      R => \^reset\
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \^slv_reg1_reg[30]_0\(12),
      R => \^reset\
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \^slv_reg1_reg[30]_0\(13),
      R => \^reset\
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \^slv_reg1_reg[30]_0\(14),
      R => \^reset\
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \^slv_reg1_reg[30]_0\(15),
      R => \^reset\
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \^slv_reg1_reg[30]_0\(16),
      R => \^reset\
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \^slv_reg1_reg[30]_0\(17),
      R => \^reset\
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \^slv_reg1_reg[30]_0\(18),
      R => \^reset\
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \^slv_reg1_reg[30]_0\(19),
      R => \^reset\
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \^slv_reg1_reg[30]_0\(1),
      R => \^reset\
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \^slv_reg1_reg[30]_0\(20),
      R => \^reset\
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \^slv_reg1_reg[30]_0\(21),
      R => \^reset\
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \^slv_reg1_reg[30]_0\(22),
      R => \^reset\
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \^slv_reg1_reg[30]_0\(23),
      R => \^reset\
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \^slv_reg1_reg[30]_0\(24),
      R => \^reset\
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \^slv_reg1_reg[30]_0\(25),
      R => \^reset\
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \^slv_reg1_reg[30]_0\(26),
      R => \^reset\
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \^slv_reg1_reg[30]_0\(27),
      R => \^reset\
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \^slv_reg1_reg[30]_0\(28),
      R => \^reset\
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \^slv_reg1_reg[30]_0\(29),
      R => \^reset\
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^slv_reg1_reg[30]_0\(2),
      R => \^reset\
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \^slv_reg1_reg[30]_0\(30),
      R => \^reset\
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg1(31),
      R => \^reset\
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^slv_reg1_reg[30]_0\(3),
      R => \^reset\
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \^slv_reg1_reg[30]_0\(4),
      R => \^reset\
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^slv_reg1_reg[30]_0\(5),
      R => \^reset\
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \^slv_reg1_reg[30]_0\(6),
      R => \^reset\
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \^slv_reg1_reg[30]_0\(7),
      R => \^reset\
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \^slv_reg1_reg[30]_0\(8),
      R => \^reset\
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \^slv_reg1_reg[30]_0\(9),
      R => \^reset\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \slv_reg4[31]_i_3_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \slv_reg4[31]_i_3_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \slv_reg4[31]_i_3_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \slv_reg4[31]_i_3_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^slv_reg2_reg[30]_0\(0),
      R => \^reset\
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \^slv_reg2_reg[30]_0\(10),
      R => \^reset\
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \^slv_reg2_reg[30]_0\(11),
      R => \^reset\
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \^slv_reg2_reg[30]_0\(12),
      R => \^reset\
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \^slv_reg2_reg[30]_0\(13),
      R => \^reset\
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \^slv_reg2_reg[30]_0\(14),
      R => \^reset\
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \^slv_reg2_reg[30]_0\(15),
      R => \^reset\
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \^slv_reg2_reg[30]_0\(16),
      R => \^reset\
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \^slv_reg2_reg[30]_0\(17),
      R => \^reset\
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \^slv_reg2_reg[30]_0\(18),
      R => \^reset\
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \^slv_reg2_reg[30]_0\(19),
      R => \^reset\
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \^slv_reg2_reg[30]_0\(1),
      R => \^reset\
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \^slv_reg2_reg[30]_0\(20),
      R => \^reset\
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \^slv_reg2_reg[30]_0\(21),
      R => \^reset\
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \^slv_reg2_reg[30]_0\(22),
      R => \^reset\
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \^slv_reg2_reg[30]_0\(23),
      R => \^reset\
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \^slv_reg2_reg[30]_0\(24),
      R => \^reset\
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \^slv_reg2_reg[30]_0\(25),
      R => \^reset\
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \^slv_reg2_reg[30]_0\(26),
      R => \^reset\
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \^slv_reg2_reg[30]_0\(27),
      R => \^reset\
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \^slv_reg2_reg[30]_0\(28),
      R => \^reset\
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \^slv_reg2_reg[30]_0\(29),
      R => \^reset\
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^slv_reg2_reg[30]_0\(2),
      R => \^reset\
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \^slv_reg2_reg[30]_0\(30),
      R => \^reset\
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg2(31),
      R => \^reset\
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^slv_reg2_reg[30]_0\(3),
      R => \^reset\
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \^slv_reg2_reg[30]_0\(4),
      R => \^reset\
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^slv_reg2_reg[30]_0\(5),
      R => \^reset\
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \^slv_reg2_reg[30]_0\(6),
      R => \^reset\
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \^slv_reg2_reg[30]_0\(7),
      R => \^reset\
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \^slv_reg2_reg[30]_0\(8),
      R => \^reset\
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \^slv_reg2_reg[30]_0\(9),
      R => \^reset\
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => axi_awaddr(2),
      I2 => \slv_reg4[31]_i_3_n_0\,
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(3),
      I5 => done,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => axi_awaddr(2),
      I2 => \slv_reg4[31]_i_3_n_0\,
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(3),
      I5 => done,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg4[31]_i_3_n_0\,
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(3),
      I5 => done,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => axi_awaddr(2),
      I2 => \slv_reg4[31]_i_3_n_0\,
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(3),
      I5 => done,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(0),
      Q => slv_reg3(0),
      R => \^reset\
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(10),
      Q => slv_reg3(10),
      R => \^reset\
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(11),
      Q => slv_reg3(11),
      R => \^reset\
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(12),
      Q => slv_reg3(12),
      R => \^reset\
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(13),
      Q => slv_reg3(13),
      R => \^reset\
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(14),
      Q => slv_reg3(14),
      R => \^reset\
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(15),
      Q => slv_reg3(15),
      R => \^reset\
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(16),
      Q => slv_reg3(16),
      R => \^reset\
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(17),
      Q => slv_reg3(17),
      R => \^reset\
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(18),
      Q => slv_reg3(18),
      R => \^reset\
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(19),
      Q => slv_reg3(19),
      R => \^reset\
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(1),
      Q => slv_reg3(1),
      R => \^reset\
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(20),
      Q => slv_reg3(20),
      R => \^reset\
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(21),
      Q => slv_reg3(21),
      R => \^reset\
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(22),
      Q => slv_reg3(22),
      R => \^reset\
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(23),
      Q => slv_reg3(23),
      R => \^reset\
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(24),
      Q => slv_reg3(24),
      R => \^reset\
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(25),
      Q => slv_reg3(25),
      R => \^reset\
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(26),
      Q => slv_reg3(26),
      R => \^reset\
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(27),
      Q => slv_reg3(27),
      R => \^reset\
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(28),
      Q => slv_reg3(28),
      R => \^reset\
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(29),
      Q => slv_reg3(29),
      R => \^reset\
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(2),
      Q => slv_reg3(2),
      R => \^reset\
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(30),
      Q => slv_reg3(30),
      R => \^reset\
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(31),
      Q => slv_reg3(31),
      R => \^reset\
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(3),
      Q => slv_reg3(3),
      R => \^reset\
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(4),
      Q => slv_reg3(4),
      R => \^reset\
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(5),
      Q => slv_reg3(5),
      R => \^reset\
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(6),
      Q => slv_reg3(6),
      R => \^reset\
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(7),
      Q => slv_reg3(7),
      R => \^reset\
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(8),
      Q => slv_reg3(8),
      R => \^reset\
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => \slv_reg3_reg[31]_0\(9),
      Q => slv_reg3(9),
      R => \^reset\
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => \slv_reg4[31]_i_3_n_0\,
      I4 => s_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => \slv_reg4[31]_i_3_n_0\,
      I4 => s_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg4[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => \slv_reg4[31]_i_3_n_0\,
      I4 => s_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg4[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => \^axi_wready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      O => \slv_reg4[31]_i_3_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => \slv_reg4[31]_i_3_n_0\,
      I4 => s_axi_wstrb(0),
      O => p_1_in(0)
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(10),
      Q => \slv_reg4_reg_n_0_[10]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(11),
      Q => \slv_reg4_reg_n_0_[11]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(12),
      Q => \slv_reg4_reg_n_0_[12]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(13),
      Q => \slv_reg4_reg_n_0_[13]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(14),
      Q => \slv_reg4_reg_n_0_[14]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(15),
      Q => \slv_reg4_reg_n_0_[15]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(16),
      Q => \slv_reg4_reg_n_0_[16]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(17),
      Q => \slv_reg4_reg_n_0_[17]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(18),
      Q => \slv_reg4_reg_n_0_[18]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(19),
      Q => \slv_reg4_reg_n_0_[19]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(20),
      Q => \slv_reg4_reg_n_0_[20]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(21),
      Q => \slv_reg4_reg_n_0_[21]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(22),
      Q => \slv_reg4_reg_n_0_[22]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(23),
      Q => \slv_reg4_reg_n_0_[23]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(24),
      Q => \slv_reg4_reg_n_0_[24]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(25),
      Q => \slv_reg4_reg_n_0_[25]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(26),
      Q => \slv_reg4_reg_n_0_[26]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(27),
      Q => \slv_reg4_reg_n_0_[27]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(28),
      Q => \slv_reg4_reg_n_0_[28]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(29),
      Q => \slv_reg4_reg_n_0_[29]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(2),
      Q => \slv_reg4_reg_n_0_[2]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(30),
      Q => \slv_reg4_reg_n_0_[30]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(31),
      Q => \slv_reg4_reg_n_0_[31]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(3),
      Q => \slv_reg4_reg_n_0_[3]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(4),
      Q => \slv_reg4_reg_n_0_[4]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(5),
      Q => \slv_reg4_reg_n_0_[5]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(6),
      Q => \slv_reg4_reg_n_0_[6]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(7),
      Q => \slv_reg4_reg_n_0_[7]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(8),
      Q => \slv_reg4_reg_n_0_[8]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(9),
      Q => \slv_reg4_reg_n_0_[9]\,
      R => \slv_reg4_reg[31]_0\(0)
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \out\,
      Q => slv_reg5(0),
      R => '0'
    );
\tck_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => \^q\(0),
      I1 => enable_d,
      I2 => s_axi_aresetn,
      O => SR(0)
    );
\tdi_output[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => slv_reg2(31),
      I1 => \^q\(0),
      I2 => enable_d,
      O => D(0)
    );
\tms_output[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => \^q\(0),
      I2 => enable_d,
      O => \slv_reg1_reg[31]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_c443_axi_jtag_0_axi_jtag_v1_0_0_jtagproc is
  port (
    done : out STD_LOGIC;
    enable_d : out STD_LOGIC;
    tck : out STD_LOGIC;
    tdi : out STD_LOGIC;
    done_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tdo_buffer_reg[31][0]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tms : out STD_LOGIC;
    reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    \tdi_output_reg[30]_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \tms_output_reg[30]_0\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \bit_count_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tdo : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tdi_output_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_c443_axi_jtag_0_axi_jtag_v1_0_0_jtagproc : entity is "axi_jtag_v1_0_0_jtagproc";
end bd_c443_axi_jtag_0_axi_jtag_v1_0_0_jtagproc;

architecture STRUCTURE of bd_c443_axi_jtag_0_axi_jtag_v1_0_0_jtagproc is
  signal \bit_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \bit_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \bit_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \bit_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \bit_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \bit_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \bit_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \bit_count[0]_i_9_n_0\ : STD_LOGIC;
  signal \bit_count[16]_i_2_n_0\ : STD_LOGIC;
  signal \bit_count[16]_i_3_n_0\ : STD_LOGIC;
  signal \bit_count[16]_i_4_n_0\ : STD_LOGIC;
  signal \bit_count[16]_i_5_n_0\ : STD_LOGIC;
  signal \bit_count[16]_i_6_n_0\ : STD_LOGIC;
  signal \bit_count[16]_i_7_n_0\ : STD_LOGIC;
  signal \bit_count[16]_i_8_n_0\ : STD_LOGIC;
  signal \bit_count[16]_i_9_n_0\ : STD_LOGIC;
  signal \bit_count[24]_i_2_n_0\ : STD_LOGIC;
  signal \bit_count[24]_i_3_n_0\ : STD_LOGIC;
  signal \bit_count[24]_i_4_n_0\ : STD_LOGIC;
  signal \bit_count[24]_i_5_n_0\ : STD_LOGIC;
  signal \bit_count[24]_i_6_n_0\ : STD_LOGIC;
  signal \bit_count[24]_i_7_n_0\ : STD_LOGIC;
  signal \bit_count[24]_i_8_n_0\ : STD_LOGIC;
  signal \bit_count[24]_i_9_n_0\ : STD_LOGIC;
  signal \bit_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \bit_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \bit_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \bit_count[8]_i_5_n_0\ : STD_LOGIC;
  signal \bit_count[8]_i_6_n_0\ : STD_LOGIC;
  signal \bit_count[8]_i_7_n_0\ : STD_LOGIC;
  signal \bit_count[8]_i_8_n_0\ : STD_LOGIC;
  signal \bit_count[8]_i_9_n_0\ : STD_LOGIC;
  signal bit_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \bit_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \bit_count_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \bit_count_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \bit_count_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \bit_count_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal done_i : STD_LOGIC;
  signal done_i_2_n_0 : STD_LOGIC;
  signal done_i_3_n_0 : STD_LOGIC;
  signal done_i_4_n_0 : STD_LOGIC;
  signal \^enable_d\ : STD_LOGIC;
  signal \index[0]_i_1_n_0\ : STD_LOGIC;
  signal \index[4]_i_1_n_0\ : STD_LOGIC;
  signal index_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_5_n_0\ : STD_LOGIC;
  signal \state[1]_i_6_n_0\ : STD_LOGIC;
  signal \state[1]_i_7_n_0\ : STD_LOGIC;
  signal \state[1]_i_8_n_0\ : STD_LOGIC;
  signal \state[1]_i_9_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^tck\ : STD_LOGIC;
  signal tck_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tck_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \tck_count[7]_i_4_n_0\ : STD_LOGIC;
  signal tck_count_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tck_en : STD_LOGIC;
  signal tck_i_i_1_n_0 : STD_LOGIC;
  signal tck_i_i_2_n_0 : STD_LOGIC;
  signal tck_i_i_3_n_0 : STD_LOGIC;
  signal \^tdi\ : STD_LOGIC;
  signal tdi_output : STD_LOGIC;
  signal \tdi_output[0]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[10]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[11]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[12]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[13]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[14]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[15]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[16]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[17]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[18]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[19]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[1]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[20]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[21]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[22]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[23]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[24]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[25]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[26]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[27]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[28]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[29]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[2]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[30]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[3]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[4]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[5]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[6]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[7]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[8]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output[9]_i_1_n_0\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[10]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[11]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[12]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[13]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[14]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[15]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[16]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[17]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[18]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[19]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[1]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[20]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[21]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[22]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[23]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[24]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[25]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[26]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[27]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[28]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[29]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[2]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[30]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[31]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[3]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[4]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[5]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[6]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[7]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[8]\ : STD_LOGIC;
  signal \tdi_output_reg_n_0_[9]\ : STD_LOGIC;
  signal \tdo_buffer[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[0][0]_i_3_n_0\ : STD_LOGIC;
  signal \tdo_buffer[0][0]_i_4_n_0\ : STD_LOGIC;
  signal \tdo_buffer[0][0]_i_5_n_0\ : STD_LOGIC;
  signal \tdo_buffer[0][0]_i_6_n_0\ : STD_LOGIC;
  signal \tdo_buffer[10][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[11][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[12][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[13][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[14][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[15][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[16][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[16][0]_i_2_n_0\ : STD_LOGIC;
  signal \tdo_buffer[17][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[18][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[19][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \tdo_buffer[1][0]_i_3_n_0\ : STD_LOGIC;
  signal \tdo_buffer[20][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[21][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[22][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[23][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[24][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[24][0]_i_2_n_0\ : STD_LOGIC;
  signal \tdo_buffer[25][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[26][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[27][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[28][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[29][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[30][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[31][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[8][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer[8][0]_i_2_n_0\ : STD_LOGIC;
  signal \tdo_buffer[9][0]_i_1_n_0\ : STD_LOGIC;
  signal \tdo_buffer_reg[0]\ : STD_LOGIC;
  signal \tdo_buffer_reg[10]\ : STD_LOGIC;
  signal \tdo_buffer_reg[11]\ : STD_LOGIC;
  signal \tdo_buffer_reg[12]\ : STD_LOGIC;
  signal \tdo_buffer_reg[13]\ : STD_LOGIC;
  signal \tdo_buffer_reg[14]\ : STD_LOGIC;
  signal \tdo_buffer_reg[15]\ : STD_LOGIC;
  signal \tdo_buffer_reg[16]\ : STD_LOGIC;
  signal \tdo_buffer_reg[17]\ : STD_LOGIC;
  signal \tdo_buffer_reg[18]\ : STD_LOGIC;
  signal \tdo_buffer_reg[19]\ : STD_LOGIC;
  signal \tdo_buffer_reg[1]\ : STD_LOGIC;
  signal \tdo_buffer_reg[20]\ : STD_LOGIC;
  signal \tdo_buffer_reg[21]\ : STD_LOGIC;
  signal \tdo_buffer_reg[22]\ : STD_LOGIC;
  signal \tdo_buffer_reg[23]\ : STD_LOGIC;
  signal \tdo_buffer_reg[24]\ : STD_LOGIC;
  signal \tdo_buffer_reg[25]\ : STD_LOGIC;
  signal \tdo_buffer_reg[26]\ : STD_LOGIC;
  signal \tdo_buffer_reg[27]\ : STD_LOGIC;
  signal \tdo_buffer_reg[28]\ : STD_LOGIC;
  signal \tdo_buffer_reg[29]\ : STD_LOGIC;
  signal \tdo_buffer_reg[2]\ : STD_LOGIC;
  signal \tdo_buffer_reg[30]\ : STD_LOGIC;
  signal \tdo_buffer_reg[31]\ : STD_LOGIC;
  signal \tdo_buffer_reg[3]\ : STD_LOGIC;
  signal \tdo_buffer_reg[4]\ : STD_LOGIC;
  signal \tdo_buffer_reg[5]\ : STD_LOGIC;
  signal \tdo_buffer_reg[6]\ : STD_LOGIC;
  signal \tdo_buffer_reg[7]\ : STD_LOGIC;
  signal \tdo_buffer_reg[8]\ : STD_LOGIC;
  signal \tdo_buffer_reg[9]\ : STD_LOGIC;
  signal tdo_switched : STD_LOGIC;
  signal \tms_output[0]_i_2_n_0\ : STD_LOGIC;
  signal \tms_output[0]_i_3_n_0\ : STD_LOGIC;
  signal \tms_output[10]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[11]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[12]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[13]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[14]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[15]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[16]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[17]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[18]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[19]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[1]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[20]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[21]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[22]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[23]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[24]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[25]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[26]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[27]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[28]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[29]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[2]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[30]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[3]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[4]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[5]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[6]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[7]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[8]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output[9]_i_1_n_0\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[10]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[11]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[12]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[13]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[14]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[15]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[16]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[17]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[18]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[19]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[1]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[20]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[21]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[22]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[23]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[24]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[25]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[26]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[27]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[28]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[29]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[2]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[30]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[31]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[3]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[4]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[5]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[6]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[7]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[8]\ : STD_LOGIC;
  signal \tms_output_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_bit_count_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bit_count_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \bit_count_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \bit_count_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \bit_count_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of done_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \index[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \index[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \index[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \index[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg3[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg3[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg3[12]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \slv_reg3[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg3[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg3[15]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg3[16]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg3[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg3[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \slv_reg3[19]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg3[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \slv_reg3[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg3[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg3[22]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg3[23]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg3[24]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg3[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg3[26]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg3[27]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg3[28]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg3[29]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg3[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \slv_reg3[30]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg3[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg3[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \slv_reg3[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg3[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg3[7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg3[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \slv_reg3[9]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \slv_reg4[31]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "TCKH:100,TCKL:010,IDLE:001";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "TCKH:100,TCKL:010,IDLE:001";
  attribute FSM_ENCODED_STATES of \state_reg[2]\ : label is "TCKH:100,TCKL:010,IDLE:001";
  attribute SOFT_HLUTNM of \tck_count[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tck_count[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tck_count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tck_count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tck_count[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tck_count[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tck_count[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of tck_i_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tdo_buffer[0][0]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \tdo_buffer[0][0]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tdo_buffer[0][0]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tdo_buffer[16][0]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tdo_buffer[1][0]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tdo_buffer[24][0]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \tdo_buffer[8][0]_i_2\ : label is "soft_lutpair26";
begin
  done <= \^done\;
  enable_d <= \^enable_d\;
  tck <= \^tck\;
  tdi <= \^tdi\;
\bit_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040004FFFF0004"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => tck_i_i_2_n_0,
      I4 => Q(0),
      I5 => \^enable_d\,
      O => \bit_count[0]_i_1_n_0\
    );
\bit_count[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(0),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(0),
      O => \bit_count[0]_i_10_n_0\
    );
\bit_count[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(7),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(7),
      O => \bit_count[0]_i_3_n_0\
    );
\bit_count[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(6),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(6),
      O => \bit_count[0]_i_4_n_0\
    );
\bit_count[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(5),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(5),
      O => \bit_count[0]_i_5_n_0\
    );
\bit_count[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(4),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(4),
      O => \bit_count[0]_i_6_n_0\
    );
\bit_count[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(3),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(3),
      O => \bit_count[0]_i_7_n_0\
    );
\bit_count[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(2),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(2),
      O => \bit_count[0]_i_8_n_0\
    );
\bit_count[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(1),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(1),
      O => \bit_count[0]_i_9_n_0\
    );
\bit_count[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(23),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(23),
      O => \bit_count[16]_i_2_n_0\
    );
\bit_count[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(22),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(22),
      O => \bit_count[16]_i_3_n_0\
    );
\bit_count[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(21),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(21),
      O => \bit_count[16]_i_4_n_0\
    );
\bit_count[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(20),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(20),
      O => \bit_count[16]_i_5_n_0\
    );
\bit_count[16]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(19),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(19),
      O => \bit_count[16]_i_6_n_0\
    );
\bit_count[16]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(18),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(18),
      O => \bit_count[16]_i_7_n_0\
    );
\bit_count[16]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(17),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(17),
      O => \bit_count[16]_i_8_n_0\
    );
\bit_count[16]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(16),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(16),
      O => \bit_count[16]_i_9_n_0\
    );
\bit_count[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(31),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(31),
      O => \bit_count[24]_i_2_n_0\
    );
\bit_count[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(30),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(30),
      O => \bit_count[24]_i_3_n_0\
    );
\bit_count[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(29),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(29),
      O => \bit_count[24]_i_4_n_0\
    );
\bit_count[24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(28),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(28),
      O => \bit_count[24]_i_5_n_0\
    );
\bit_count[24]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(27),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(27),
      O => \bit_count[24]_i_6_n_0\
    );
\bit_count[24]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(26),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(26),
      O => \bit_count[24]_i_7_n_0\
    );
\bit_count[24]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(25),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(25),
      O => \bit_count[24]_i_8_n_0\
    );
\bit_count[24]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(24),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(24),
      O => \bit_count[24]_i_9_n_0\
    );
\bit_count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(15),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(15),
      O => \bit_count[8]_i_2_n_0\
    );
\bit_count[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(14),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(14),
      O => \bit_count[8]_i_3_n_0\
    );
\bit_count[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(13),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(13),
      O => \bit_count[8]_i_4_n_0\
    );
\bit_count[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(12),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(12),
      O => \bit_count[8]_i_5_n_0\
    );
\bit_count[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(11),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(11),
      O => \bit_count[8]_i_6_n_0\
    );
\bit_count[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(10),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(10),
      O => \bit_count[8]_i_7_n_0\
    );
\bit_count[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(9),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(9),
      O => \bit_count[8]_i_8_n_0\
    );
\bit_count[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => bit_count_reg(8),
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => \bit_count_reg[31]_0\(8),
      O => \bit_count[8]_i_9_n_0\
    );
\bit_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[0]_i_2_n_15\,
      Q => bit_count_reg(0),
      R => reset
    );
\bit_count_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \bit_count_reg[0]_i_2_n_0\,
      CO(6) => \bit_count_reg[0]_i_2_n_1\,
      CO(5) => \bit_count_reg[0]_i_2_n_2\,
      CO(4) => \bit_count_reg[0]_i_2_n_3\,
      CO(3) => \bit_count_reg[0]_i_2_n_4\,
      CO(2) => \bit_count_reg[0]_i_2_n_5\,
      CO(1) => \bit_count_reg[0]_i_2_n_6\,
      CO(0) => \bit_count_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"11111111",
      O(7) => \bit_count_reg[0]_i_2_n_8\,
      O(6) => \bit_count_reg[0]_i_2_n_9\,
      O(5) => \bit_count_reg[0]_i_2_n_10\,
      O(4) => \bit_count_reg[0]_i_2_n_11\,
      O(3) => \bit_count_reg[0]_i_2_n_12\,
      O(2) => \bit_count_reg[0]_i_2_n_13\,
      O(1) => \bit_count_reg[0]_i_2_n_14\,
      O(0) => \bit_count_reg[0]_i_2_n_15\,
      S(7) => \bit_count[0]_i_3_n_0\,
      S(6) => \bit_count[0]_i_4_n_0\,
      S(5) => \bit_count[0]_i_5_n_0\,
      S(4) => \bit_count[0]_i_6_n_0\,
      S(3) => \bit_count[0]_i_7_n_0\,
      S(2) => \bit_count[0]_i_8_n_0\,
      S(1) => \bit_count[0]_i_9_n_0\,
      S(0) => \bit_count[0]_i_10_n_0\
    );
\bit_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[8]_i_1_n_13\,
      Q => bit_count_reg(10),
      R => reset
    );
\bit_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[8]_i_1_n_12\,
      Q => bit_count_reg(11),
      R => reset
    );
\bit_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[8]_i_1_n_11\,
      Q => bit_count_reg(12),
      R => reset
    );
\bit_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[8]_i_1_n_10\,
      Q => bit_count_reg(13),
      R => reset
    );
\bit_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[8]_i_1_n_9\,
      Q => bit_count_reg(14),
      R => reset
    );
\bit_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[8]_i_1_n_8\,
      Q => bit_count_reg(15),
      R => reset
    );
\bit_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[16]_i_1_n_15\,
      Q => bit_count_reg(16),
      R => reset
    );
\bit_count_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \bit_count_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \bit_count_reg[16]_i_1_n_0\,
      CO(6) => \bit_count_reg[16]_i_1_n_1\,
      CO(5) => \bit_count_reg[16]_i_1_n_2\,
      CO(4) => \bit_count_reg[16]_i_1_n_3\,
      CO(3) => \bit_count_reg[16]_i_1_n_4\,
      CO(2) => \bit_count_reg[16]_i_1_n_5\,
      CO(1) => \bit_count_reg[16]_i_1_n_6\,
      CO(0) => \bit_count_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"11111111",
      O(7) => \bit_count_reg[16]_i_1_n_8\,
      O(6) => \bit_count_reg[16]_i_1_n_9\,
      O(5) => \bit_count_reg[16]_i_1_n_10\,
      O(4) => \bit_count_reg[16]_i_1_n_11\,
      O(3) => \bit_count_reg[16]_i_1_n_12\,
      O(2) => \bit_count_reg[16]_i_1_n_13\,
      O(1) => \bit_count_reg[16]_i_1_n_14\,
      O(0) => \bit_count_reg[16]_i_1_n_15\,
      S(7) => \bit_count[16]_i_2_n_0\,
      S(6) => \bit_count[16]_i_3_n_0\,
      S(5) => \bit_count[16]_i_4_n_0\,
      S(4) => \bit_count[16]_i_5_n_0\,
      S(3) => \bit_count[16]_i_6_n_0\,
      S(2) => \bit_count[16]_i_7_n_0\,
      S(1) => \bit_count[16]_i_8_n_0\,
      S(0) => \bit_count[16]_i_9_n_0\
    );
\bit_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[16]_i_1_n_14\,
      Q => bit_count_reg(17),
      R => reset
    );
\bit_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[16]_i_1_n_13\,
      Q => bit_count_reg(18),
      R => reset
    );
\bit_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[16]_i_1_n_12\,
      Q => bit_count_reg(19),
      R => reset
    );
\bit_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[0]_i_2_n_14\,
      Q => bit_count_reg(1),
      R => reset
    );
\bit_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[16]_i_1_n_11\,
      Q => bit_count_reg(20),
      R => reset
    );
\bit_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[16]_i_1_n_10\,
      Q => bit_count_reg(21),
      R => reset
    );
\bit_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[16]_i_1_n_9\,
      Q => bit_count_reg(22),
      R => reset
    );
\bit_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[16]_i_1_n_8\,
      Q => bit_count_reg(23),
      R => reset
    );
\bit_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[24]_i_1_n_15\,
      Q => bit_count_reg(24),
      R => reset
    );
\bit_count_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \bit_count_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_bit_count_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \bit_count_reg[24]_i_1_n_1\,
      CO(5) => \bit_count_reg[24]_i_1_n_2\,
      CO(4) => \bit_count_reg[24]_i_1_n_3\,
      CO(3) => \bit_count_reg[24]_i_1_n_4\,
      CO(2) => \bit_count_reg[24]_i_1_n_5\,
      CO(1) => \bit_count_reg[24]_i_1_n_6\,
      CO(0) => \bit_count_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"01111111",
      O(7) => \bit_count_reg[24]_i_1_n_8\,
      O(6) => \bit_count_reg[24]_i_1_n_9\,
      O(5) => \bit_count_reg[24]_i_1_n_10\,
      O(4) => \bit_count_reg[24]_i_1_n_11\,
      O(3) => \bit_count_reg[24]_i_1_n_12\,
      O(2) => \bit_count_reg[24]_i_1_n_13\,
      O(1) => \bit_count_reg[24]_i_1_n_14\,
      O(0) => \bit_count_reg[24]_i_1_n_15\,
      S(7) => \bit_count[24]_i_2_n_0\,
      S(6) => \bit_count[24]_i_3_n_0\,
      S(5) => \bit_count[24]_i_4_n_0\,
      S(4) => \bit_count[24]_i_5_n_0\,
      S(3) => \bit_count[24]_i_6_n_0\,
      S(2) => \bit_count[24]_i_7_n_0\,
      S(1) => \bit_count[24]_i_8_n_0\,
      S(0) => \bit_count[24]_i_9_n_0\
    );
\bit_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[24]_i_1_n_14\,
      Q => bit_count_reg(25),
      R => reset
    );
\bit_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[24]_i_1_n_13\,
      Q => bit_count_reg(26),
      R => reset
    );
\bit_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[24]_i_1_n_12\,
      Q => bit_count_reg(27),
      R => reset
    );
\bit_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[24]_i_1_n_11\,
      Q => bit_count_reg(28),
      R => reset
    );
\bit_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[24]_i_1_n_10\,
      Q => bit_count_reg(29),
      R => reset
    );
\bit_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[0]_i_2_n_13\,
      Q => bit_count_reg(2),
      R => reset
    );
\bit_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[24]_i_1_n_9\,
      Q => bit_count_reg(30),
      R => reset
    );
\bit_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[24]_i_1_n_8\,
      Q => bit_count_reg(31),
      R => reset
    );
\bit_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[0]_i_2_n_12\,
      Q => bit_count_reg(3),
      R => reset
    );
\bit_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[0]_i_2_n_11\,
      Q => bit_count_reg(4),
      R => reset
    );
\bit_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[0]_i_2_n_10\,
      Q => bit_count_reg(5),
      R => reset
    );
\bit_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[0]_i_2_n_9\,
      Q => bit_count_reg(6),
      R => reset
    );
\bit_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[0]_i_2_n_8\,
      Q => bit_count_reg(7),
      R => reset
    );
\bit_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[8]_i_1_n_15\,
      Q => bit_count_reg(8),
      R => reset
    );
\bit_count_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \bit_count_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \bit_count_reg[8]_i_1_n_0\,
      CO(6) => \bit_count_reg[8]_i_1_n_1\,
      CO(5) => \bit_count_reg[8]_i_1_n_2\,
      CO(4) => \bit_count_reg[8]_i_1_n_3\,
      CO(3) => \bit_count_reg[8]_i_1_n_4\,
      CO(2) => \bit_count_reg[8]_i_1_n_5\,
      CO(1) => \bit_count_reg[8]_i_1_n_6\,
      CO(0) => \bit_count_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"11111111",
      O(7) => \bit_count_reg[8]_i_1_n_8\,
      O(6) => \bit_count_reg[8]_i_1_n_9\,
      O(5) => \bit_count_reg[8]_i_1_n_10\,
      O(4) => \bit_count_reg[8]_i_1_n_11\,
      O(3) => \bit_count_reg[8]_i_1_n_12\,
      O(2) => \bit_count_reg[8]_i_1_n_13\,
      O(1) => \bit_count_reg[8]_i_1_n_14\,
      O(0) => \bit_count_reg[8]_i_1_n_15\,
      S(7) => \bit_count[8]_i_2_n_0\,
      S(6) => \bit_count[8]_i_3_n_0\,
      S(5) => \bit_count[8]_i_4_n_0\,
      S(4) => \bit_count[8]_i_5_n_0\,
      S(3) => \bit_count[8]_i_6_n_0\,
      S(2) => \bit_count[8]_i_7_n_0\,
      S(1) => \bit_count[8]_i_8_n_0\,
      S(0) => \bit_count[8]_i_9_n_0\
    );
\bit_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bit_count[0]_i_1_n_0\,
      D => \bit_count_reg[8]_i_1_n_14\,
      Q => bit_count_reg(9),
      R => reset
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => state(0),
      I1 => done_i_2_n_0,
      I2 => tck_i_i_2_n_0,
      I3 => done_i_3_n_0,
      I4 => done_i_4_n_0,
      I5 => \state[1]_i_3_n_0\,
      O => done_i
    );
done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => done_i_2_n_0
    );
done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bit_count_reg(25),
      I1 => bit_count_reg(24),
      I2 => bit_count_reg(23),
      I3 => bit_count_reg(22),
      O => done_i_3_n_0
    );
done_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => bit_count_reg(17),
      I1 => bit_count_reg(16),
      I2 => \state[1]_i_7_n_0\,
      I3 => \state[1]_i_6_n_0\,
      I4 => \state[1]_i_5_n_0\,
      I5 => \state[1]_i_4_n_0\,
      O => done_i_4_n_0
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => done_i,
      Q => \^done\,
      R => reset
    );
enable_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(0),
      Q => \^enable_d\,
      R => reset
    );
\index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => index_reg(0),
      O => \index[0]_i_1_n_0\
    );
\index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => index_reg(0),
      I1 => index_reg(1),
      O => p_0_in(1)
    );
\index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => index_reg(0),
      I1 => index_reg(1),
      I2 => index_reg(2),
      O => p_0_in(2)
    );
\index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => index_reg(0),
      I1 => index_reg(1),
      I2 => index_reg(2),
      I3 => index_reg(3),
      O => p_0_in(3)
    );
\index[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => tck_i_i_2_n_0,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      O => \index[4]_i_1_n_0\
    );
\index[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => index_reg(3),
      I1 => index_reg(4),
      I2 => index_reg(2),
      I3 => index_reg(1),
      I4 => index_reg(0),
      O => p_0_in(4)
    );
\index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \index[4]_i_1_n_0\,
      D => \index[0]_i_1_n_0\,
      Q => index_reg(0),
      R => SR(0)
    );
\index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \index[4]_i_1_n_0\,
      D => p_0_in(1),
      Q => index_reg(1),
      R => SR(0)
    );
\index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \index[4]_i_1_n_0\,
      D => p_0_in(2),
      Q => index_reg(2),
      R => SR(0)
    );
\index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \index[4]_i_1_n_0\,
      D => p_0_in(3),
      Q => index_reg(3),
      R => SR(0)
    );
\index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \index[4]_i_1_n_0\,
      D => p_0_in(4),
      Q => index_reg(4),
      R => SR(0)
    );
\slv_reg3[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[0]\,
      I1 => \^done\,
      I2 => s_axi_wdata(0),
      O => \tdo_buffer_reg[31][0]_0\(0)
    );
\slv_reg3[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[10]\,
      I1 => \^done\,
      I2 => s_axi_wdata(10),
      O => \tdo_buffer_reg[31][0]_0\(10)
    );
\slv_reg3[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[11]\,
      I1 => \^done\,
      I2 => s_axi_wdata(11),
      O => \tdo_buffer_reg[31][0]_0\(11)
    );
\slv_reg3[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[12]\,
      I1 => \^done\,
      I2 => s_axi_wdata(12),
      O => \tdo_buffer_reg[31][0]_0\(12)
    );
\slv_reg3[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[13]\,
      I1 => \^done\,
      I2 => s_axi_wdata(13),
      O => \tdo_buffer_reg[31][0]_0\(13)
    );
\slv_reg3[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[14]\,
      I1 => \^done\,
      I2 => s_axi_wdata(14),
      O => \tdo_buffer_reg[31][0]_0\(14)
    );
\slv_reg3[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[15]\,
      I1 => \^done\,
      I2 => s_axi_wdata(15),
      O => \tdo_buffer_reg[31][0]_0\(15)
    );
\slv_reg3[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[16]\,
      I1 => \^done\,
      I2 => s_axi_wdata(16),
      O => \tdo_buffer_reg[31][0]_0\(16)
    );
\slv_reg3[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[17]\,
      I1 => \^done\,
      I2 => s_axi_wdata(17),
      O => \tdo_buffer_reg[31][0]_0\(17)
    );
\slv_reg3[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[18]\,
      I1 => \^done\,
      I2 => s_axi_wdata(18),
      O => \tdo_buffer_reg[31][0]_0\(18)
    );
\slv_reg3[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[19]\,
      I1 => \^done\,
      I2 => s_axi_wdata(19),
      O => \tdo_buffer_reg[31][0]_0\(19)
    );
\slv_reg3[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[1]\,
      I1 => \^done\,
      I2 => s_axi_wdata(1),
      O => \tdo_buffer_reg[31][0]_0\(1)
    );
\slv_reg3[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[20]\,
      I1 => \^done\,
      I2 => s_axi_wdata(20),
      O => \tdo_buffer_reg[31][0]_0\(20)
    );
\slv_reg3[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[21]\,
      I1 => \^done\,
      I2 => s_axi_wdata(21),
      O => \tdo_buffer_reg[31][0]_0\(21)
    );
\slv_reg3[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[22]\,
      I1 => \^done\,
      I2 => s_axi_wdata(22),
      O => \tdo_buffer_reg[31][0]_0\(22)
    );
\slv_reg3[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[23]\,
      I1 => \^done\,
      I2 => s_axi_wdata(23),
      O => \tdo_buffer_reg[31][0]_0\(23)
    );
\slv_reg3[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[24]\,
      I1 => \^done\,
      I2 => s_axi_wdata(24),
      O => \tdo_buffer_reg[31][0]_0\(24)
    );
\slv_reg3[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[25]\,
      I1 => \^done\,
      I2 => s_axi_wdata(25),
      O => \tdo_buffer_reg[31][0]_0\(25)
    );
\slv_reg3[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[26]\,
      I1 => \^done\,
      I2 => s_axi_wdata(26),
      O => \tdo_buffer_reg[31][0]_0\(26)
    );
\slv_reg3[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[27]\,
      I1 => \^done\,
      I2 => s_axi_wdata(27),
      O => \tdo_buffer_reg[31][0]_0\(27)
    );
\slv_reg3[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[28]\,
      I1 => \^done\,
      I2 => s_axi_wdata(28),
      O => \tdo_buffer_reg[31][0]_0\(28)
    );
\slv_reg3[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[29]\,
      I1 => \^done\,
      I2 => s_axi_wdata(29),
      O => \tdo_buffer_reg[31][0]_0\(29)
    );
\slv_reg3[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[2]\,
      I1 => \^done\,
      I2 => s_axi_wdata(2),
      O => \tdo_buffer_reg[31][0]_0\(2)
    );
\slv_reg3[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[30]\,
      I1 => \^done\,
      I2 => s_axi_wdata(30),
      O => \tdo_buffer_reg[31][0]_0\(30)
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[31]\,
      I1 => \^done\,
      I2 => s_axi_wdata(31),
      O => \tdo_buffer_reg[31][0]_0\(31)
    );
\slv_reg3[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[3]\,
      I1 => \^done\,
      I2 => s_axi_wdata(3),
      O => \tdo_buffer_reg[31][0]_0\(3)
    );
\slv_reg3[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[4]\,
      I1 => \^done\,
      I2 => s_axi_wdata(4),
      O => \tdo_buffer_reg[31][0]_0\(4)
    );
\slv_reg3[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[5]\,
      I1 => \^done\,
      I2 => s_axi_wdata(5),
      O => \tdo_buffer_reg[31][0]_0\(5)
    );
\slv_reg3[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[6]\,
      I1 => \^done\,
      I2 => s_axi_wdata(6),
      O => \tdo_buffer_reg[31][0]_0\(6)
    );
\slv_reg3[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[7]\,
      I1 => \^done\,
      I2 => s_axi_wdata(7),
      O => \tdo_buffer_reg[31][0]_0\(7)
    );
\slv_reg3[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[8]\,
      I1 => \^done\,
      I2 => s_axi_wdata(8),
      O => \tdo_buffer_reg[31][0]_0\(8)
    );
\slv_reg3[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tdo_buffer_reg[9]\,
      I1 => \^done\,
      I2 => s_axi_wdata(9),
      O => \tdo_buffer_reg[31][0]_0\(9)
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^done\,
      I1 => s_axi_aresetn,
      O => done_reg_0(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE9999EEEF9999"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \state[1]_i_3_n_0\,
      I3 => \state[1]_i_2_n_0\,
      I4 => state(2),
      I5 => tck_i_i_2_n_0,
      O => next_state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF0054AA00"
    )
        port map (
      I0 => tck_i_i_2_n_0,
      I1 => \state[1]_i_2_n_0\,
      I2 => \state[1]_i_3_n_0\,
      I3 => state(1),
      I4 => state(2),
      I5 => state(0),
      O => next_state(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => done_i_3_n_0,
      I1 => \state[1]_i_4_n_0\,
      I2 => \state[1]_i_5_n_0\,
      I3 => \state[1]_i_6_n_0\,
      I4 => \state[1]_i_7_n_0\,
      I5 => \state[1]_i_8_n_0\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state[1]_i_9_n_0\,
      I1 => bit_count_reg(26),
      I2 => bit_count_reg(27),
      I3 => bit_count_reg(28),
      I4 => bit_count_reg(29),
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bit_count_reg(11),
      I1 => bit_count_reg(10),
      I2 => bit_count_reg(9),
      I3 => bit_count_reg(8),
      O => \state[1]_i_4_n_0\
    );
\state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bit_count_reg(15),
      I1 => bit_count_reg(14),
      I2 => bit_count_reg(13),
      I3 => bit_count_reg(12),
      O => \state[1]_i_5_n_0\
    );
\state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bit_count_reg(3),
      I1 => bit_count_reg(2),
      I2 => bit_count_reg(1),
      I3 => bit_count_reg(0),
      O => \state[1]_i_6_n_0\
    );
\state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => bit_count_reg(7),
      I1 => bit_count_reg(6),
      I2 => bit_count_reg(5),
      I3 => bit_count_reg(4),
      O => \state[1]_i_7_n_0\
    );
\state[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bit_count_reg(16),
      I1 => bit_count_reg(17),
      O => \state[1]_i_8_n_0\
    );
\state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => bit_count_reg(18),
      I1 => bit_count_reg(19),
      I2 => bit_count_reg(20),
      I3 => bit_count_reg(21),
      I4 => bit_count_reg(31),
      I5 => bit_count_reg(30),
      O => \state[1]_i_9_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFFF"
    )
        port map (
      I0 => \^enable_d\,
      I1 => Q(0),
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0018"
    )
        port map (
      I0 => tck_i_i_2_n_0,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      O => next_state(2)
    );
\state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \state[2]_i_1_n_0\,
      D => next_state(0),
      Q => state(0),
      S => reset
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \state[2]_i_1_n_0\,
      D => next_state(1),
      Q => state(1),
      R => reset
    );
\state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \state[2]_i_1_n_0\,
      D => next_state(2),
      Q => state(2),
      R => reset
    );
\tck_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tck_count(0),
      O => tck_count_0(0)
    );
\tck_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => tck_i_i_2_n_0,
      I1 => tck_count(0),
      I2 => tck_count(1),
      O => tck_count_0(1)
    );
\tck_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => tck_i_i_2_n_0,
      I1 => tck_count(1),
      I2 => tck_count(0),
      I3 => tck_count(2),
      O => tck_count_0(2)
    );
\tck_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => tck_i_i_2_n_0,
      I1 => tck_count(2),
      I2 => tck_count(0),
      I3 => tck_count(1),
      I4 => tck_count(3),
      O => tck_count_0(3)
    );
\tck_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => tck_i_i_2_n_0,
      I1 => tck_count(4),
      I2 => tck_count(1),
      I3 => tck_count(0),
      I4 => tck_count(2),
      I5 => tck_count(3),
      O => tck_count_0(4)
    );
\tck_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF000040000000"
    )
        port map (
      I0 => \tck_count[5]_i_2_n_0\,
      I1 => tck_count(2),
      I2 => tck_count(3),
      I3 => tck_count(4),
      I4 => tck_i_i_2_n_0,
      I5 => tck_count(5),
      O => tck_count_0(5)
    );
\tck_count[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => tck_count(0),
      I1 => tck_count(1),
      O => \tck_count[5]_i_2_n_0\
    );
\tck_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \tck_count[7]_i_4_n_0\,
      I1 => tck_i_i_2_n_0,
      I2 => tck_count(6),
      O => tck_count_0(6)
    );
\tck_count[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040FF0"
    )
        port map (
      I0 => \^enable_d\,
      I1 => Q(0),
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      O => tck_en
    );
\tck_count[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \tck_count[7]_i_4_n_0\,
      I1 => tck_count(6),
      I2 => tck_i_i_2_n_0,
      I3 => tck_count(7),
      O => tck_count_0(7)
    );
\tck_count[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => tck_count(4),
      I1 => tck_count(3),
      I2 => tck_count(2),
      I3 => tck_count(0),
      I4 => tck_count(1),
      I5 => tck_count(5),
      O => \tck_count[7]_i_4_n_0\
    );
\tck_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tck_en,
      D => tck_count_0(0),
      Q => tck_count(0),
      R => SR(0)
    );
\tck_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tck_en,
      D => tck_count_0(1),
      Q => tck_count(1),
      R => SR(0)
    );
\tck_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tck_en,
      D => tck_count_0(2),
      Q => tck_count(2),
      R => SR(0)
    );
\tck_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tck_en,
      D => tck_count_0(3),
      Q => tck_count(3),
      R => SR(0)
    );
\tck_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tck_en,
      D => tck_count_0(4),
      Q => tck_count(4),
      R => SR(0)
    );
\tck_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tck_en,
      D => tck_count_0(5),
      Q => tck_count(5),
      R => SR(0)
    );
\tck_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tck_en,
      D => tck_count_0(6),
      Q => tck_count(6),
      R => SR(0)
    );
\tck_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tck_en,
      D => tck_count_0(7),
      Q => tck_count(7),
      R => SR(0)
    );
tck_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A208A2000008A20"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => tck_i_i_2_n_0,
      I2 => tck_en,
      I3 => \^tck\,
      I4 => Q(0),
      I5 => \^enable_d\,
      O => tck_i_i_1_n_0
    );
tck_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tck_i_i_3_n_0,
      I1 => tck_count(6),
      I2 => tck_count(5),
      I3 => tck_count(2),
      O => tck_i_i_2_n_0
    );
tck_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => tck_count(4),
      I1 => tck_count(7),
      I2 => tck_count(0),
      I3 => tck_count(1),
      I4 => tck_count(3),
      O => tck_i_i_3_n_0
    );
tck_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tck_i_i_1_n_0,
      Q => \^tck\,
      R => '0'
    );
\tdi_output[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[1]\,
      O => \tdi_output[0]_i_1_n_0\
    );
\tdi_output[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(10),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[11]\,
      O => \tdi_output[10]_i_1_n_0\
    );
\tdi_output[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(11),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[12]\,
      O => \tdi_output[11]_i_1_n_0\
    );
\tdi_output[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(12),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[13]\,
      O => \tdi_output[12]_i_1_n_0\
    );
\tdi_output[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(13),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[14]\,
      O => \tdi_output[13]_i_1_n_0\
    );
\tdi_output[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(14),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[15]\,
      O => \tdi_output[14]_i_1_n_0\
    );
\tdi_output[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(15),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[16]\,
      O => \tdi_output[15]_i_1_n_0\
    );
\tdi_output[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(16),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[17]\,
      O => \tdi_output[16]_i_1_n_0\
    );
\tdi_output[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(17),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[18]\,
      O => \tdi_output[17]_i_1_n_0\
    );
\tdi_output[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(18),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[19]\,
      O => \tdi_output[18]_i_1_n_0\
    );
\tdi_output[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(19),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[20]\,
      O => \tdi_output[19]_i_1_n_0\
    );
\tdi_output[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(1),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[2]\,
      O => \tdi_output[1]_i_1_n_0\
    );
\tdi_output[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(20),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[21]\,
      O => \tdi_output[20]_i_1_n_0\
    );
\tdi_output[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(21),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[22]\,
      O => \tdi_output[21]_i_1_n_0\
    );
\tdi_output[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(22),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[23]\,
      O => \tdi_output[22]_i_1_n_0\
    );
\tdi_output[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(23),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[24]\,
      O => \tdi_output[23]_i_1_n_0\
    );
\tdi_output[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(24),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[25]\,
      O => \tdi_output[24]_i_1_n_0\
    );
\tdi_output[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(25),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[26]\,
      O => \tdi_output[25]_i_1_n_0\
    );
\tdi_output[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(26),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[27]\,
      O => \tdi_output[26]_i_1_n_0\
    );
\tdi_output[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(27),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[28]\,
      O => \tdi_output[27]_i_1_n_0\
    );
\tdi_output[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(28),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[29]\,
      O => \tdi_output[28]_i_1_n_0\
    );
\tdi_output[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(29),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[30]\,
      O => \tdi_output[29]_i_1_n_0\
    );
\tdi_output[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(2),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[3]\,
      O => \tdi_output[2]_i_1_n_0\
    );
\tdi_output[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(30),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[31]\,
      O => \tdi_output[30]_i_1_n_0\
    );
\tdi_output[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(3),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[4]\,
      O => \tdi_output[3]_i_1_n_0\
    );
\tdi_output[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(4),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[5]\,
      O => \tdi_output[4]_i_1_n_0\
    );
\tdi_output[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(5),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[6]\,
      O => \tdi_output[5]_i_1_n_0\
    );
\tdi_output[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(6),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[7]\,
      O => \tdi_output[6]_i_1_n_0\
    );
\tdi_output[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(7),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[8]\,
      O => \tdi_output[7]_i_1_n_0\
    );
\tdi_output[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(8),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[9]\,
      O => \tdi_output[8]_i_1_n_0\
    );
\tdi_output[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tdi_output_reg[30]_0\(9),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tdi_output_reg_n_0_[10]\,
      O => \tdi_output[9]_i_1_n_0\
    );
\tdi_output_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[0]_i_1_n_0\,
      Q => \^tdi\,
      R => reset
    );
\tdi_output_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[10]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[10]\,
      R => reset
    );
\tdi_output_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[11]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[11]\,
      R => reset
    );
\tdi_output_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[12]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[12]\,
      R => reset
    );
\tdi_output_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[13]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[13]\,
      R => reset
    );
\tdi_output_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[14]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[14]\,
      R => reset
    );
\tdi_output_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[15]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[15]\,
      R => reset
    );
\tdi_output_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[16]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[16]\,
      R => reset
    );
\tdi_output_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[17]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[17]\,
      R => reset
    );
\tdi_output_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[18]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[18]\,
      R => reset
    );
\tdi_output_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[19]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[19]\,
      R => reset
    );
\tdi_output_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[1]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[1]\,
      R => reset
    );
\tdi_output_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[20]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[20]\,
      R => reset
    );
\tdi_output_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[21]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[21]\,
      R => reset
    );
\tdi_output_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[22]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[22]\,
      R => reset
    );
\tdi_output_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[23]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[23]\,
      R => reset
    );
\tdi_output_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[24]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[24]\,
      R => reset
    );
\tdi_output_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[25]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[25]\,
      R => reset
    );
\tdi_output_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[26]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[26]\,
      R => reset
    );
\tdi_output_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[27]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[27]\,
      R => reset
    );
\tdi_output_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[28]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[28]\,
      R => reset
    );
\tdi_output_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[29]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[29]\,
      R => reset
    );
\tdi_output_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[2]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[2]\,
      R => reset
    );
\tdi_output_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[30]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[30]\,
      R => reset
    );
\tdi_output_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output_reg[31]_0\(0),
      Q => \tdi_output_reg_n_0_[31]\,
      R => reset
    );
\tdi_output_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[3]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[3]\,
      R => reset
    );
\tdi_output_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[4]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[4]\,
      R => reset
    );
\tdi_output_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[5]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[5]\,
      R => reset
    );
\tdi_output_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[6]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[6]\,
      R => reset
    );
\tdi_output_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[7]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[7]\,
      R => reset
    );
\tdi_output_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[8]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[8]\,
      R => reset
    );
\tdi_output_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tdi_output[9]_i_1_n_0\,
      Q => \tdi_output_reg_n_0_[9]\,
      R => reset
    );
\tdo_buffer[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[0][0]_i_4_n_0\,
      I5 => \tdo_buffer_reg[0]\,
      O => \tdo_buffer[0][0]_i_1_n_0\
    );
\tdo_buffer[0][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^tdi\,
      I1 => Q(1),
      I2 => tdo,
      O => tdo_switched
    );
\tdo_buffer[0][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \tdo_buffer[0][0]_i_5_n_0\,
      I1 => \tdo_buffer[0][0]_i_6_n_0\,
      I2 => tck_count(2),
      I3 => tck_count(5),
      I4 => tck_count(6),
      I5 => tck_i_i_3_n_0,
      O => \tdo_buffer[0][0]_i_3_n_0\
    );
\tdo_buffer[0][0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => index_reg(4),
      I1 => index_reg(3),
      O => \tdo_buffer[0][0]_i_4_n_0\
    );
\tdo_buffer[0][0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9FFF9"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => Q(0),
      I4 => \^enable_d\,
      O => \tdo_buffer[0][0]_i_5_n_0\
    );
\tdo_buffer[0][0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => index_reg(0),
      I1 => s_axi_aresetn,
      I2 => state(2),
      I3 => state(1),
      O => \tdo_buffer[0][0]_i_6_n_0\
    );
\tdo_buffer[10][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[8][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[10]\,
      O => \tdo_buffer[10][0]_i_1_n_0\
    );
\tdo_buffer[11][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[8][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[11]\,
      O => \tdo_buffer[11][0]_i_1_n_0\
    );
\tdo_buffer[12][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(2),
      I3 => index_reg(1),
      I4 => \tdo_buffer[8][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[12]\,
      O => \tdo_buffer[12][0]_i_1_n_0\
    );
\tdo_buffer[13][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(2),
      I3 => index_reg(1),
      I4 => \tdo_buffer[8][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[13]\,
      O => \tdo_buffer[13][0]_i_1_n_0\
    );
\tdo_buffer[14][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => tdo_switched,
      I1 => index_reg(1),
      I2 => index_reg(2),
      I3 => \tdo_buffer[0][0]_i_3_n_0\,
      I4 => \tdo_buffer[8][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[14]\,
      O => \tdo_buffer[14][0]_i_1_n_0\
    );
\tdo_buffer[15][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => tdo_switched,
      I1 => index_reg(1),
      I2 => index_reg(2),
      I3 => \tdo_buffer[1][0]_i_2_n_0\,
      I4 => \tdo_buffer[8][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[15]\,
      O => \tdo_buffer[15][0]_i_1_n_0\
    );
\tdo_buffer[16][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[16][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[16]\,
      O => \tdo_buffer[16][0]_i_1_n_0\
    );
\tdo_buffer[16][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => index_reg(4),
      I1 => index_reg(3),
      O => \tdo_buffer[16][0]_i_2_n_0\
    );
\tdo_buffer[17][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[16][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[17]\,
      O => \tdo_buffer[17][0]_i_1_n_0\
    );
\tdo_buffer[18][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[16][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[18]\,
      O => \tdo_buffer[18][0]_i_1_n_0\
    );
\tdo_buffer[19][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[16][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[19]\,
      O => \tdo_buffer[19][0]_i_1_n_0\
    );
\tdo_buffer[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[0][0]_i_4_n_0\,
      I5 => \tdo_buffer_reg[1]\,
      O => \tdo_buffer[1][0]_i_1_n_0\
    );
\tdo_buffer[1][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \tdo_buffer[0][0]_i_5_n_0\,
      I1 => \tdo_buffer[1][0]_i_3_n_0\,
      I2 => tck_count(2),
      I3 => tck_count(5),
      I4 => tck_count(6),
      I5 => tck_i_i_3_n_0,
      O => \tdo_buffer[1][0]_i_2_n_0\
    );
\tdo_buffer[1][0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => index_reg(0),
      I2 => state(2),
      I3 => state(1),
      O => \tdo_buffer[1][0]_i_3_n_0\
    );
\tdo_buffer[20][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(2),
      I3 => index_reg(1),
      I4 => \tdo_buffer[16][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[20]\,
      O => \tdo_buffer[20][0]_i_1_n_0\
    );
\tdo_buffer[21][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(2),
      I3 => index_reg(1),
      I4 => \tdo_buffer[16][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[21]\,
      O => \tdo_buffer[21][0]_i_1_n_0\
    );
\tdo_buffer[22][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => tdo_switched,
      I1 => index_reg(1),
      I2 => index_reg(2),
      I3 => \tdo_buffer[0][0]_i_3_n_0\,
      I4 => \tdo_buffer[16][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[22]\,
      O => \tdo_buffer[22][0]_i_1_n_0\
    );
\tdo_buffer[23][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => tdo_switched,
      I1 => index_reg(1),
      I2 => index_reg(2),
      I3 => \tdo_buffer[1][0]_i_2_n_0\,
      I4 => \tdo_buffer[16][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[23]\,
      O => \tdo_buffer[23][0]_i_1_n_0\
    );
\tdo_buffer[24][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[24][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[24]\,
      O => \tdo_buffer[24][0]_i_1_n_0\
    );
\tdo_buffer[24][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => index_reg(4),
      I1 => index_reg(3),
      O => \tdo_buffer[24][0]_i_2_n_0\
    );
\tdo_buffer[25][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[24][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[25]\,
      O => \tdo_buffer[25][0]_i_1_n_0\
    );
\tdo_buffer[26][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[24][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[26]\,
      O => \tdo_buffer[26][0]_i_1_n_0\
    );
\tdo_buffer[27][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[24][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[27]\,
      O => \tdo_buffer[27][0]_i_1_n_0\
    );
\tdo_buffer[28][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(2),
      I3 => index_reg(1),
      I4 => \tdo_buffer[24][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[28]\,
      O => \tdo_buffer[28][0]_i_1_n_0\
    );
\tdo_buffer[29][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(2),
      I3 => index_reg(1),
      I4 => \tdo_buffer[24][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[29]\,
      O => \tdo_buffer[29][0]_i_1_n_0\
    );
\tdo_buffer[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[0][0]_i_4_n_0\,
      I5 => \tdo_buffer_reg[2]\,
      O => \tdo_buffer[2][0]_i_1_n_0\
    );
\tdo_buffer[30][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => tdo_switched,
      I1 => index_reg(1),
      I2 => index_reg(2),
      I3 => \tdo_buffer[0][0]_i_3_n_0\,
      I4 => \tdo_buffer[24][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[30]\,
      O => \tdo_buffer[30][0]_i_1_n_0\
    );
\tdo_buffer[31][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => tdo_switched,
      I1 => index_reg(1),
      I2 => index_reg(2),
      I3 => \tdo_buffer[1][0]_i_2_n_0\,
      I4 => \tdo_buffer[24][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[31]\,
      O => \tdo_buffer[31][0]_i_1_n_0\
    );
\tdo_buffer[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[0][0]_i_4_n_0\,
      I5 => \tdo_buffer_reg[3]\,
      O => \tdo_buffer[3][0]_i_1_n_0\
    );
\tdo_buffer[4][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(2),
      I3 => index_reg(1),
      I4 => \tdo_buffer[0][0]_i_4_n_0\,
      I5 => \tdo_buffer_reg[4]\,
      O => \tdo_buffer[4][0]_i_1_n_0\
    );
\tdo_buffer[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(2),
      I3 => index_reg(1),
      I4 => \tdo_buffer[0][0]_i_4_n_0\,
      I5 => \tdo_buffer_reg[5]\,
      O => \tdo_buffer[5][0]_i_1_n_0\
    );
\tdo_buffer[6][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => tdo_switched,
      I1 => index_reg(1),
      I2 => index_reg(2),
      I3 => \tdo_buffer[0][0]_i_3_n_0\,
      I4 => \tdo_buffer[0][0]_i_4_n_0\,
      I5 => \tdo_buffer_reg[6]\,
      O => \tdo_buffer[6][0]_i_1_n_0\
    );
\tdo_buffer[7][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => tdo_switched,
      I1 => index_reg(1),
      I2 => index_reg(2),
      I3 => \tdo_buffer[1][0]_i_2_n_0\,
      I4 => \tdo_buffer[0][0]_i_4_n_0\,
      I5 => \tdo_buffer_reg[7]\,
      O => \tdo_buffer[7][0]_i_1_n_0\
    );
\tdo_buffer[8][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[0][0]_i_3_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[8][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[8]\,
      O => \tdo_buffer[8][0]_i_1_n_0\
    );
\tdo_buffer[8][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => index_reg(3),
      I1 => index_reg(4),
      O => \tdo_buffer[8][0]_i_2_n_0\
    );
\tdo_buffer[9][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => tdo_switched,
      I1 => \tdo_buffer[1][0]_i_2_n_0\,
      I2 => index_reg(1),
      I3 => index_reg(2),
      I4 => \tdo_buffer[8][0]_i_2_n_0\,
      I5 => \tdo_buffer_reg[9]\,
      O => \tdo_buffer[9][0]_i_1_n_0\
    );
\tdo_buffer_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[0][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[0]\,
      R => '0'
    );
\tdo_buffer_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[10][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[10]\,
      R => '0'
    );
\tdo_buffer_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[11][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[11]\,
      R => '0'
    );
\tdo_buffer_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[12][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[12]\,
      R => '0'
    );
\tdo_buffer_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[13][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[13]\,
      R => '0'
    );
\tdo_buffer_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[14][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[14]\,
      R => '0'
    );
\tdo_buffer_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[15][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[15]\,
      R => '0'
    );
\tdo_buffer_reg[16][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[16][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[16]\,
      R => '0'
    );
\tdo_buffer_reg[17][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[17][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[17]\,
      R => '0'
    );
\tdo_buffer_reg[18][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[18][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[18]\,
      R => '0'
    );
\tdo_buffer_reg[19][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[19][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[19]\,
      R => '0'
    );
\tdo_buffer_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[1][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[1]\,
      R => '0'
    );
\tdo_buffer_reg[20][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[20][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[20]\,
      R => '0'
    );
\tdo_buffer_reg[21][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[21][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[21]\,
      R => '0'
    );
\tdo_buffer_reg[22][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[22][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[22]\,
      R => '0'
    );
\tdo_buffer_reg[23][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[23][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[23]\,
      R => '0'
    );
\tdo_buffer_reg[24][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[24][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[24]\,
      R => '0'
    );
\tdo_buffer_reg[25][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[25][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[25]\,
      R => '0'
    );
\tdo_buffer_reg[26][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[26][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[26]\,
      R => '0'
    );
\tdo_buffer_reg[27][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[27][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[27]\,
      R => '0'
    );
\tdo_buffer_reg[28][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[28][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[28]\,
      R => '0'
    );
\tdo_buffer_reg[29][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[29][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[29]\,
      R => '0'
    );
\tdo_buffer_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[2][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[2]\,
      R => '0'
    );
\tdo_buffer_reg[30][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[30][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[30]\,
      R => '0'
    );
\tdo_buffer_reg[31][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[31][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[31]\,
      R => '0'
    );
\tdo_buffer_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[3][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[3]\,
      R => '0'
    );
\tdo_buffer_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[4][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[4]\,
      R => '0'
    );
\tdo_buffer_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[5][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[5]\,
      R => '0'
    );
\tdo_buffer_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[6][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[6]\,
      R => '0'
    );
\tdo_buffer_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[7][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[7]\,
      R => '0'
    );
\tdo_buffer_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[8][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[8]\,
      R => '0'
    );
\tdo_buffer_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tdo_buffer[9][0]_i_1_n_0\,
      Q => \tdo_buffer_reg[9]\,
      R => '0'
    );
\tms_output[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF30FF75FFFF"
    )
        port map (
      I0 => tck_i_i_2_n_0,
      I1 => \^enable_d\,
      I2 => Q(0),
      I3 => state(0),
      I4 => state(2),
      I5 => state(1),
      O => tdi_output
    );
\tms_output[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[1]\,
      O => \tms_output[0]_i_2_n_0\
    );
\tms_output[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^enable_d\,
      I1 => Q(0),
      O => \tms_output[0]_i_3_n_0\
    );
\tms_output[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(10),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[11]\,
      O => \tms_output[10]_i_1_n_0\
    );
\tms_output[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(11),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[12]\,
      O => \tms_output[11]_i_1_n_0\
    );
\tms_output[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(12),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[13]\,
      O => \tms_output[12]_i_1_n_0\
    );
\tms_output[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(13),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[14]\,
      O => \tms_output[13]_i_1_n_0\
    );
\tms_output[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(14),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[15]\,
      O => \tms_output[14]_i_1_n_0\
    );
\tms_output[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(15),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[16]\,
      O => \tms_output[15]_i_1_n_0\
    );
\tms_output[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(16),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[17]\,
      O => \tms_output[16]_i_1_n_0\
    );
\tms_output[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(17),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[18]\,
      O => \tms_output[17]_i_1_n_0\
    );
\tms_output[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(18),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[19]\,
      O => \tms_output[18]_i_1_n_0\
    );
\tms_output[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(19),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[20]\,
      O => \tms_output[19]_i_1_n_0\
    );
\tms_output[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(1),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[2]\,
      O => \tms_output[1]_i_1_n_0\
    );
\tms_output[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(20),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[21]\,
      O => \tms_output[20]_i_1_n_0\
    );
\tms_output[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(21),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[22]\,
      O => \tms_output[21]_i_1_n_0\
    );
\tms_output[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(22),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[23]\,
      O => \tms_output[22]_i_1_n_0\
    );
\tms_output[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(23),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[24]\,
      O => \tms_output[23]_i_1_n_0\
    );
\tms_output[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(24),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[25]\,
      O => \tms_output[24]_i_1_n_0\
    );
\tms_output[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(25),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[26]\,
      O => \tms_output[25]_i_1_n_0\
    );
\tms_output[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(26),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[27]\,
      O => \tms_output[26]_i_1_n_0\
    );
\tms_output[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(27),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[28]\,
      O => \tms_output[27]_i_1_n_0\
    );
\tms_output[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(28),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[29]\,
      O => \tms_output[28]_i_1_n_0\
    );
\tms_output[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(29),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[30]\,
      O => \tms_output[29]_i_1_n_0\
    );
\tms_output[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(2),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[3]\,
      O => \tms_output[2]_i_1_n_0\
    );
\tms_output[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(30),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[31]\,
      O => \tms_output[30]_i_1_n_0\
    );
\tms_output[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(3),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[4]\,
      O => \tms_output[3]_i_1_n_0\
    );
\tms_output[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(4),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[5]\,
      O => \tms_output[4]_i_1_n_0\
    );
\tms_output[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(5),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[6]\,
      O => \tms_output[5]_i_1_n_0\
    );
\tms_output[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(6),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[7]\,
      O => \tms_output[6]_i_1_n_0\
    );
\tms_output[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(7),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[8]\,
      O => \tms_output[7]_i_1_n_0\
    );
\tms_output[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(8),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[9]\,
      O => \tms_output[8]_i_1_n_0\
    );
\tms_output[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003CAAAA0000AAAA"
    )
        port map (
      I0 => \tms_output_reg[30]_0\(9),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \tms_output[0]_i_3_n_0\,
      I5 => \tms_output_reg_n_0_[10]\,
      O => \tms_output[9]_i_1_n_0\
    );
\tms_output_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[0]_i_2_n_0\,
      Q => tms,
      R => reset
    );
\tms_output_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[10]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[10]\,
      R => reset
    );
\tms_output_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[11]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[11]\,
      R => reset
    );
\tms_output_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[12]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[12]\,
      R => reset
    );
\tms_output_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[13]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[13]\,
      R => reset
    );
\tms_output_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[14]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[14]\,
      R => reset
    );
\tms_output_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[15]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[15]\,
      R => reset
    );
\tms_output_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[16]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[16]\,
      R => reset
    );
\tms_output_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[17]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[17]\,
      R => reset
    );
\tms_output_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[18]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[18]\,
      R => reset
    );
\tms_output_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[19]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[19]\,
      R => reset
    );
\tms_output_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[1]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[1]\,
      R => reset
    );
\tms_output_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[20]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[20]\,
      R => reset
    );
\tms_output_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[21]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[21]\,
      R => reset
    );
\tms_output_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[22]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[22]\,
      R => reset
    );
\tms_output_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[23]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[23]\,
      R => reset
    );
\tms_output_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[24]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[24]\,
      R => reset
    );
\tms_output_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[25]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[25]\,
      R => reset
    );
\tms_output_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[26]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[26]\,
      R => reset
    );
\tms_output_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[27]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[27]\,
      R => reset
    );
\tms_output_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[28]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[28]\,
      R => reset
    );
\tms_output_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[29]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[29]\,
      R => reset
    );
\tms_output_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[2]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[2]\,
      R => reset
    );
\tms_output_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[30]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[30]\,
      R => reset
    );
\tms_output_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => D(0),
      Q => \tms_output_reg_n_0_[31]\,
      R => reset
    );
\tms_output_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[3]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[3]\,
      R => reset
    );
\tms_output_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[4]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[4]\,
      R => reset
    );
\tms_output_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[5]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[5]\,
      R => reset
    );
\tms_output_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[6]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[6]\,
      R => reset
    );
\tms_output_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[7]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[7]\,
      R => reset
    );
\tms_output_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[8]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[8]\,
      R => reset
    );
\tms_output_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => tdi_output,
      D => \tms_output[9]_i_1_n_0\,
      Q => \tms_output_reg_n_0_[9]\,
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi_jtag is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    mux_status : in STD_LOGIC;
    tck : out STD_LOGIC;
    tms : out STD_LOGIC;
    tdi : out STD_LOGIC;
    tdo : in STD_LOGIC
  );
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi_jtag : entity is 5;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi_jtag : entity is 32;
  attribute C_TCK_CLOCK_RATIO : integer;
  attribute C_TCK_CLOCK_RATIO of bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi_jtag : entity is 8;
  attribute C_USE_MUX_STATUS : integer;
  attribute C_USE_MUX_STATUS of bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi_jtag : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi_jtag : entity is "axi_jtag_v1_0_0_axi_jtag";
end bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi_jtag;

architecture STRUCTURE of bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi_jtag is
  signal \<const0>\ : STD_LOGIC;
  signal control_bit : STD_LOGIC;
  signal done : STD_LOGIC;
  signal enable : STD_LOGIC;
  signal enable_d : STD_LOGIC;
  signal index : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reset : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal sync_reg1 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of sync_reg1 : signal is std.standard.true;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sync_reg1 : signal is "yes";
  attribute async_reg : string;
  attribute async_reg of sync_reg1 : signal is "true";
  signal sync_reg2 : STD_LOGIC;
  attribute DONT_TOUCH of sync_reg2 : signal is std.standard.true;
  attribute RTL_KEEP of sync_reg2 : signal is "yes";
  attribute async_reg of sync_reg2 : signal is "true";
  signal sync_reg3 : STD_LOGIC;
  attribute DONT_TOUCH of sync_reg3 : signal is std.standard.true;
  attribute RTL_KEEP of sync_reg3 : signal is "yes";
  attribute async_reg of sync_reg3 : signal is "true";
  signal u_axi4_lite_if_n_40 : STD_LOGIC;
  signal u_axi4_lite_if_n_8 : STD_LOGIC;
  signal u_jtag_proc_n_4 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg1_reg[0]\ : label is std.standard.true;
  attribute DONT_TOUCH of \sync_reg1_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg2_reg[0]\ : label is std.standard.true;
  attribute DONT_TOUCH of \sync_reg2_reg[0]\ : label is std.standard.true;
  attribute KEEP of \sync_reg2_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg3_reg[0]\ : label is std.standard.true;
  attribute DONT_TOUCH of \sync_reg3_reg[0]\ : label is std.standard.true;
  attribute KEEP of \sync_reg3_reg[0]\ : label is "yes";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\sync_reg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => mux_status,
      Q => sync_reg1,
      R => '0'
    );
\sync_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sync_reg1,
      Q => sync_reg2,
      R => '0'
    );
\sync_reg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => sync_reg2,
      Q => sync_reg3,
      R => '0'
    );
u_axi4_lite_if: entity work.bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi4liteif
     port map (
      D(0) => u_axi4_lite_if_n_8,
      Q(1) => control_bit,
      Q(0) => enable,
      SR(0) => index,
      axi_arready_reg_0 => s_axi_arready,
      axi_awready_reg_0 => s_axi_awready,
      axi_wready_reg_0 => s_axi_wready,
      done => done,
      enable_d => enable_d,
      \out\ => sync_reg3,
      reset => reset,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2 downto 0) => s_axi_araddr(4 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(4 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \slv_reg0_reg[31]_0\(31 downto 0) => slv_reg0(31 downto 0),
      \slv_reg1_reg[30]_0\(30 downto 0) => slv_reg1(30 downto 0),
      \slv_reg1_reg[31]_0\(0) => u_axi4_lite_if_n_40,
      \slv_reg2_reg[30]_0\(30 downto 0) => slv_reg2(30 downto 0),
      \slv_reg3_reg[31]_0\(31 downto 0) => p_2_in(31 downto 0),
      \slv_reg4_reg[31]_0\(0) => u_jtag_proc_n_4
    );
u_jtag_proc: entity work.bd_c443_axi_jtag_0_axi_jtag_v1_0_0_jtagproc
     port map (
      D(0) => u_axi4_lite_if_n_40,
      Q(1) => control_bit,
      Q(0) => enable,
      SR(0) => index,
      \bit_count_reg[31]_0\(31 downto 0) => slv_reg0(31 downto 0),
      done => done,
      done_reg_0(0) => u_jtag_proc_n_4,
      enable_d => enable_d,
      reset => reset,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      tck => tck,
      tdi => tdi,
      \tdi_output_reg[30]_0\(30 downto 0) => slv_reg2(30 downto 0),
      \tdi_output_reg[31]_0\(0) => u_axi4_lite_if_n_8,
      tdo => tdo,
      \tdo_buffer_reg[31][0]_0\(31 downto 0) => p_2_in(31 downto 0),
      tms => tms,
      \tms_output_reg[30]_0\(30 downto 0) => slv_reg1(30 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_c443_axi_jtag_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    tck : out STD_LOGIC;
    tms : out STD_LOGIC;
    tdi : out STD_LOGIC;
    tdo : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_c443_axi_jtag_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_c443_axi_jtag_0 : entity is "bd_c443_axi_jtag_0,axi_jtag_v1_0_0_axi_jtag,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_c443_axi_jtag_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_c443_axi_jtag_0 : entity is "axi_jtag_v1_0_0_axi_jtag,Vivado 2020.1";
end bd_c443_axi_jtag_0;

architecture STRUCTURE of bd_c443_axi_jtag_0 is
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 5;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_TCK_CLOCK_RATIO : integer;
  attribute C_TCK_CLOCK_RATIO of inst : label is 8;
  attribute C_USE_MUX_STATUS : integer;
  attribute C_USE_MUX_STATUS of inst : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_signal_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_signal_clock, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_signal_reset RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
inst: entity work.bd_c443_axi_jtag_0_axi_jtag_v1_0_0_axi_jtag
     port map (
      mux_status => '0',
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(4 downto 0) => s_axi_araddr(4 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(4 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      tck => tck,
      tdi => tdi,
      tdo => tdo,
      tms => tms
    );
end STRUCTURE;
