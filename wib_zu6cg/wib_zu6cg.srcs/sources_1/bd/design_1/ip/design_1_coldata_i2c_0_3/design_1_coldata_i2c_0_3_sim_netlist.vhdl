-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Jun 14 17:48:15 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_coldata_i2c_0_3 -prefix
--               design_1_coldata_i2c_0_3_ design_1_coldata_i2c_0_0_sim_netlist.vhdl
-- Design      : design_1_coldata_i2c_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_coldata_i2c_0_3_coldata_i2c_v1_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sda_out_sh_reg[25]\ : out STD_LOGIC_VECTOR ( 26 downto 0 );
    p_2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sda_out_sh_reg[26]\ : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rd_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \axi_rdata_reg[26]_0\ : in STD_LOGIC_VECTOR ( 26 downto 0 )
  );
end design_1_coldata_i2c_0_3_coldata_i2c_v1_0_S00_AXI;

architecture STRUCTURE of design_1_coldata_i2c_0_3_coldata_i2c_v1_0_S00_AXI is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
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
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[31]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \wr_reg0[0]_i_1_n_0\ : STD_LOGIC;
  signal wr_reg1 : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \wr_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \wr_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \wr_reg1[26]_i_1_n_0\ : STD_LOGIC;
  signal \wr_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \wr_reg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_reg2[0]_i_2_n_0\ : STD_LOGIC;
  signal \wr_reg[2]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rdata[29]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sda_out_sh[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sda_out_sh[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg4[31]_i_2\ : label is "soft_lutpair0";
begin
  D(0) <= \^d\(0);
  SR(0) <= \^sr\(0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF88888888"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s00_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => aw_en_reg_n_0,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \^sr\(0)
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      R => \^sr\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      R => \^sr\(0)
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      R => \^sr\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => \^sr\(0)
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => axi_awaddr(2),
      R => \^sr\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => axi_awaddr(3),
      R => \^sr\(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => axi_awaddr(4),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s00_axi_wready\,
      I3 => \^s00_axi_awready\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB8888B8BBB8BB"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \rd_reg_reg[2]\(0),
      I3 => sel0(1),
      I4 => \axi_rdata_reg[26]_0\(0),
      I5 => sel0(0),
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => slv_reg6(0),
      I2 => sel0(1),
      I3 => slv_reg5(0),
      I4 => sel0(0),
      I5 => slv_reg4(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(10),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => slv_reg6(10),
      I2 => sel0(1),
      I3 => slv_reg5(10),
      I4 => sel0(0),
      I5 => slv_reg4(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(11),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => slv_reg6(11),
      I2 => sel0(1),
      I3 => slv_reg5(11),
      I4 => sel0(0),
      I5 => slv_reg4(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(12),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => slv_reg6(12),
      I2 => sel0(1),
      I3 => slv_reg5(12),
      I4 => sel0(0),
      I5 => slv_reg4(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(13),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => slv_reg6(13),
      I2 => sel0(1),
      I3 => slv_reg5(13),
      I4 => sel0(0),
      I5 => slv_reg4(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(14),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => slv_reg6(14),
      I2 => sel0(1),
      I3 => slv_reg5(14),
      I4 => sel0(0),
      I5 => slv_reg4(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(15),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => slv_reg6(15),
      I2 => sel0(1),
      I3 => slv_reg5(15),
      I4 => sel0(0),
      I5 => slv_reg4(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(16),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => slv_reg6(16),
      I2 => sel0(1),
      I3 => slv_reg5(16),
      I4 => sel0(0),
      I5 => slv_reg4(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(17),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => slv_reg6(17),
      I2 => sel0(1),
      I3 => slv_reg5(17),
      I4 => sel0(0),
      I5 => slv_reg4(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(18),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => slv_reg6(18),
      I2 => sel0(1),
      I3 => slv_reg5(18),
      I4 => sel0(0),
      I5 => slv_reg4(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(19),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => slv_reg6(19),
      I2 => sel0(1),
      I3 => slv_reg5(19),
      I4 => sel0(0),
      I5 => slv_reg4(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \rd_reg_reg[2]\(1),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[26]_0\(1),
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(1),
      I1 => slv_reg6(1),
      I2 => sel0(1),
      I3 => slv_reg5(1),
      I4 => sel0(0),
      I5 => slv_reg4(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(20),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => slv_reg6(20),
      I2 => sel0(1),
      I3 => slv_reg5(20),
      I4 => sel0(0),
      I5 => slv_reg4(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(21),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => slv_reg6(21),
      I2 => sel0(1),
      I3 => slv_reg5(21),
      I4 => sel0(0),
      I5 => slv_reg4(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(22),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(22),
      I2 => sel0(1),
      I3 => slv_reg5(22),
      I4 => sel0(0),
      I5 => slv_reg4(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(23),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg6(23),
      I2 => sel0(1),
      I3 => slv_reg5(23),
      I4 => sel0(0),
      I5 => slv_reg4(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(24),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg6(24),
      I2 => sel0(1),
      I3 => slv_reg5(24),
      I4 => sel0(0),
      I5 => slv_reg4(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(25),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => slv_reg6(25),
      I2 => sel0(1),
      I3 => slv_reg5(25),
      I4 => sel0(0),
      I5 => slv_reg4(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(26),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => slv_reg6(26),
      I2 => sel0(1),
      I3 => slv_reg5(26),
      I4 => sel0(0),
      I5 => slv_reg4(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(2),
      I1 => \axi_rdata[27]_i_2_n_0\,
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => slv_reg6(27),
      I2 => sel0(1),
      I3 => slv_reg5(27),
      I4 => sel0(0),
      I5 => slv_reg4(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(2),
      I1 => \axi_rdata[28]_i_2_n_0\,
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => slv_reg6(28),
      I2 => sel0(1),
      I3 => slv_reg5(28),
      I4 => sel0(0),
      I5 => slv_reg4(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(2),
      I1 => \axi_rdata[29]_i_2_n_0\,
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => slv_reg6(29),
      I2 => sel0(1),
      I3 => slv_reg5(29),
      I4 => sel0(0),
      I5 => slv_reg4(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \rd_reg_reg[2]\(2),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[26]_0\(2),
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(2),
      I1 => slv_reg6(2),
      I2 => sel0(1),
      I3 => slv_reg5(2),
      I4 => sel0(0),
      I5 => slv_reg4(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(2),
      I1 => \axi_rdata[30]_i_2_n_0\,
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => slv_reg6(30),
      I2 => sel0(1),
      I3 => slv_reg5(30),
      I4 => sel0(0),
      I5 => slv_reg4(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(2),
      I1 => \axi_rdata[31]_i_2_n_0\,
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => slv_reg6(31),
      I2 => sel0(1),
      I3 => slv_reg5(31),
      I4 => sel0(0),
      I5 => slv_reg4(31),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \rd_reg_reg[2]\(3),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[26]_0\(3),
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(3),
      I1 => slv_reg6(3),
      I2 => sel0(1),
      I3 => slv_reg5(3),
      I4 => sel0(0),
      I5 => slv_reg4(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \rd_reg_reg[2]\(4),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[26]_0\(4),
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(4),
      I1 => slv_reg6(4),
      I2 => sel0(1),
      I3 => slv_reg5(4),
      I4 => sel0(0),
      I5 => slv_reg4(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \rd_reg_reg[2]\(5),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[26]_0\(5),
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(5),
      I1 => slv_reg6(5),
      I2 => sel0(1),
      I3 => slv_reg5(5),
      I4 => sel0(0),
      I5 => slv_reg4(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \rd_reg_reg[2]\(6),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[26]_0\(6),
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(6),
      I1 => slv_reg6(6),
      I2 => sel0(1),
      I3 => slv_reg5(6),
      I4 => sel0(0),
      I5 => slv_reg4(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \rd_reg_reg[2]\(7),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \axi_rdata_reg[26]_0\(7),
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(7),
      I1 => slv_reg6(7),
      I2 => sel0(1),
      I3 => slv_reg5(7),
      I4 => sel0(0),
      I5 => slv_reg4(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(8),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => slv_reg6(8),
      I2 => sel0(1),
      I3 => slv_reg5(8),
      I4 => sel0(0),
      I5 => slv_reg4(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888B888"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[26]_0\(9),
      I3 => sel0(0),
      I4 => sel0(1),
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => slv_reg6(9),
      I2 => sel0(1),
      I3 => slv_reg5(9),
      I4 => sel0(0),
      I5 => slv_reg4(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \^sr\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \^sr\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \^sr\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \^sr\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \^sr\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \^sr\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \^sr\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \^sr\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \^sr\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \^sr\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \^sr\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \^sr\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \^sr\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \^sr\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \^sr\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \^sr\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \^sr\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \^sr\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \^sr\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \^sr\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \^sr\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \^sr\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \^sr\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \^sr\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \^sr\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \^sr\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \^sr\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \^sr\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \^sr\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \^sr\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \^sr\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \^sr\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => \^sr\(0)
    );
\lb_stim_reg[2]_srl3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_reg[2]_0\,
      O => p_2_out(0)
    );
scl_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\sda_out_sh[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => wr_reg1(0),
      I1 => Q(1),
      I2 => Q(0),
      O => \sda_out_sh_reg[25]\(0)
    );
\sda_out_sh[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(9),
      I1 => wr_reg1(10),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(10)
    );
\sda_out_sh[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(10),
      I1 => wr_reg1(11),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(11)
    );
\sda_out_sh[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(11),
      I1 => wr_reg1(12),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(12)
    );
\sda_out_sh[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(12),
      I1 => wr_reg1(13),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(13)
    );
\sda_out_sh[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(13),
      I1 => wr_reg1(14),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(14)
    );
\sda_out_sh[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(14),
      I1 => wr_reg1(15),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(15)
    );
\sda_out_sh[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(15),
      I1 => wr_reg1(16),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(16)
    );
\sda_out_sh[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(16),
      I1 => wr_reg1(17),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(17)
    );
\sda_out_sh[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(17),
      I1 => wr_reg1(18),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(18)
    );
\sda_out_sh[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(18),
      I1 => wr_reg1(19),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(19)
    );
\sda_out_sh[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(0),
      I1 => wr_reg1(1),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(1)
    );
\sda_out_sh[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(19),
      I1 => wr_reg1(20),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(20)
    );
\sda_out_sh[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(20),
      I1 => wr_reg1(21),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(21)
    );
\sda_out_sh[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(21),
      I1 => wr_reg1(22),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(22)
    );
\sda_out_sh[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(22),
      I1 => wr_reg1(23),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(23)
    );
\sda_out_sh[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(23),
      I1 => wr_reg1(24),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(24)
    );
\sda_out_sh[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(24),
      I1 => wr_reg1(25),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(25)
    );
\sda_out_sh[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(25),
      I1 => wr_reg1(26),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(26)
    );
\sda_out_sh[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(1),
      I1 => wr_reg1(2),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(2)
    );
\sda_out_sh[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(2),
      I1 => wr_reg1(3),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(3)
    );
\sda_out_sh[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(3),
      I1 => wr_reg1(4),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(4)
    );
\sda_out_sh[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(4),
      I1 => wr_reg1(5),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(5)
    );
\sda_out_sh[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(5),
      I1 => wr_reg1(6),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(6)
    );
\sda_out_sh[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(6),
      I1 => wr_reg1(7),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(7)
    );
\sda_out_sh[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(7),
      I1 => wr_reg1(8),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(8)
    );
\sda_out_sh[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \sda_out_sh_reg[26]\(8),
      I1 => wr_reg1(9),
      I2 => Q(0),
      I3 => Q(1),
      O => \sda_out_sh_reg[25]\(9)
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_2_n_0\,
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_2_n_0\,
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_2_n_0\,
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg4[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg4[31]_i_2_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_2_n_0\,
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => \^sr\(0)
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => \^sr\(0)
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => \^sr\(0)
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => \^sr\(0)
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => \^sr\(0)
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => \^sr\(0)
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => \^sr\(0)
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => \^sr\(0)
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => \^sr\(0)
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => \^sr\(0)
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => \^sr\(0)
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => \^sr\(0)
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => \^sr\(0)
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => \^sr\(0)
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => \^sr\(0)
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => \^sr\(0)
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => \^sr\(0)
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => \^sr\(0)
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => \^sr\(0)
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => \^sr\(0)
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => \^sr\(0)
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => \^sr\(0)
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => \^sr\(0)
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => \^sr\(0)
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => \^sr\(0)
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => \^sr\(0)
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => \^sr\(0)
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => \^sr\(0)
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => \^sr\(0)
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => \^sr\(0)
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => \^sr\(0)
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => \^sr\(0)
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => \^sr\(0)
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => \^sr\(0)
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => \^sr\(0)
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => \^sr\(0)
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => \^sr\(0)
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => \^sr\(0)
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => \^sr\(0)
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => \^sr\(0)
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => \^sr\(0)
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => \^sr\(0)
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => \^sr\(0)
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => \^sr\(0)
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => \^sr\(0)
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => \^sr\(0)
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => \^sr\(0)
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => \^sr\(0)
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => \^sr\(0)
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => \^sr\(0)
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => \^sr\(0)
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => \^sr\(0)
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => \^sr\(0)
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => \^sr\(0)
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => \^sr\(0)
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => \^sr\(0)
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => \^sr\(0)
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => \^sr\(0)
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => \^sr\(0)
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => \^sr\(0)
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => \^sr\(0)
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => \^sr\(0)
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => \^sr\(0)
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => \^sr\(0)
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_2_n_0\,
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_2_n_0\,
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_2_n_0\,
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(4),
      I2 => \slv_reg4[31]_i_2_n_0\,
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => \^sr\(0)
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => \^sr\(0)
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => \^sr\(0)
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => \^sr\(0)
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => \^sr\(0)
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => \^sr\(0)
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => \^sr\(0)
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => \^sr\(0)
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => \^sr\(0)
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => \^sr\(0)
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => \^sr\(0)
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => \^sr\(0)
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => \^sr\(0)
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => \^sr\(0)
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => \^sr\(0)
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => \^sr\(0)
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => \^sr\(0)
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => \^sr\(0)
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => \^sr\(0)
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => \^sr\(0)
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => \^sr\(0)
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => \^sr\(0)
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => \^sr\(0)
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => \^sr\(0)
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => \^sr\(0)
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => \^sr\(0)
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => \^sr\(0)
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => \^sr\(0)
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => \^sr\(0)
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => \^sr\(0)
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => \^sr\(0)
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => \^sr\(0)
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => \^sr\(0)
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => \^sr\(0)
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => \^sr\(0)
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => \^sr\(0)
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => \^sr\(0)
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => \^sr\(0)
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => \^sr\(0)
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => \^sr\(0)
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => \^sr\(0)
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => \^sr\(0)
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => \^sr\(0)
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => \^sr\(0)
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => \^sr\(0)
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => \^sr\(0)
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => \^sr\(0)
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => \^sr\(0)
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => \^sr\(0)
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => \^sr\(0)
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => \^sr\(0)
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => \^sr\(0)
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => \^sr\(0)
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => \^sr\(0)
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => \^sr\(0)
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => \^sr\(0)
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => \^sr\(0)
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => \^sr\(0)
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => \^sr\(0)
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => \^sr\(0)
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => \^sr\(0)
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => \^sr\(0)
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => \^sr\(0)
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => \^sr\(0)
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s00_axi_arready\,
      O => \slv_reg_rden__0\
    );
\wr_reg0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      I4 => \wr_reg2[0]_i_2_n_0\,
      I5 => \^d\(0),
      O => \wr_reg0[0]_i_1_n_0\
    );
\wr_reg0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \wr_reg0[0]_i_1_n_0\,
      Q => \^d\(0),
      R => '0'
    );
\wr_reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => s00_axi_aresetn,
      I4 => \slv_reg4[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(1),
      O => \wr_reg1[15]_i_1_n_0\
    );
\wr_reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => s00_axi_aresetn,
      I4 => \slv_reg4[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(2),
      O => \wr_reg1[23]_i_1_n_0\
    );
\wr_reg1[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => s00_axi_aresetn,
      I4 => \slv_reg4[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(3),
      O => \wr_reg1[26]_i_1_n_0\
    );
\wr_reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(4),
      I3 => s00_axi_aresetn,
      I4 => \slv_reg4[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(0),
      O => \wr_reg1[7]_i_1_n_0\
    );
\wr_reg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => wr_reg1(0),
      R => '0'
    );
\wr_reg1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => wr_reg1(10),
      R => '0'
    );
\wr_reg1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => wr_reg1(11),
      R => '0'
    );
\wr_reg1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => wr_reg1(12),
      R => '0'
    );
\wr_reg1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => wr_reg1(13),
      R => '0'
    );
\wr_reg1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => wr_reg1(14),
      R => '0'
    );
\wr_reg1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => wr_reg1(15),
      R => '0'
    );
\wr_reg1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => wr_reg1(16),
      R => '0'
    );
\wr_reg1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => wr_reg1(17),
      R => '0'
    );
\wr_reg1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => wr_reg1(18),
      R => '0'
    );
\wr_reg1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => wr_reg1(19),
      R => '0'
    );
\wr_reg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => wr_reg1(1),
      R => '0'
    );
\wr_reg1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => wr_reg1(20),
      R => '0'
    );
\wr_reg1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => wr_reg1(21),
      R => '0'
    );
\wr_reg1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => wr_reg1(22),
      R => '0'
    );
\wr_reg1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => wr_reg1(23),
      R => '0'
    );
\wr_reg1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[26]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => wr_reg1(24),
      R => '0'
    );
\wr_reg1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[26]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => wr_reg1(25),
      R => '0'
    );
\wr_reg1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[26]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => wr_reg1(26),
      R => '0'
    );
\wr_reg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => wr_reg1(2),
      R => '0'
    );
\wr_reg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => wr_reg1(3),
      R => '0'
    );
\wr_reg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => wr_reg1(4),
      R => '0'
    );
\wr_reg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => wr_reg1(5),
      R => '0'
    );
\wr_reg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => wr_reg1(6),
      R => '0'
    );
\wr_reg1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => wr_reg1(7),
      R => '0'
    );
\wr_reg1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => wr_reg1(8),
      R => '0'
    );
\wr_reg1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \wr_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => wr_reg1(9),
      R => '0'
    );
\wr_reg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => \wr_reg2[0]_i_2_n_0\,
      I5 => \wr_reg[2]_0\,
      O => \wr_reg2[0]_i_1_n_0\
    );
\wr_reg2[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => axi_awaddr(4),
      I1 => s00_axi_aresetn,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s00_axi_awready\,
      I5 => \^s00_axi_wready\,
      O => \wr_reg2[0]_i_2_n_0\
    );
\wr_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \wr_reg2[0]_i_1_n_0\,
      Q => \wr_reg[2]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_coldata_i2c_0_3_coldata_i2c_v1_0 is
  port (
    sda_in_out : out STD_LOGIC;
    sda_out_p : out STD_LOGIC;
    sda_out_n : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    scl : out STD_LOGIC;
    scl_out : out STD_LOGIC;
    sda_out_out : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    clk62p5 : in STD_LOGIC;
    sda_in_p : in STD_LOGIC;
    sda_in_n : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end design_1_coldata_i2c_0_3_coldata_i2c_v1_0;

architecture STRUCTURE of design_1_coldata_i2c_0_3_coldata_i2c_v1_0 is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal bit_count : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \bit_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \bit_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \bit_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \bit_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[4]\ : STD_LOGIC;
  signal bit_phase : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \bit_phase[0]_i_2_n_0\ : STD_LOGIC;
  signal \bit_phase[0]_i_3_n_0\ : STD_LOGIC;
  signal \bit_phase[0]_i_4_n_0\ : STD_LOGIC;
  signal \bit_phase[1]_i_2_n_0\ : STD_LOGIC;
  signal \bit_phase[1]_i_3_n_0\ : STD_LOGIC;
  signal \bit_phase[1]_i_4_n_0\ : STD_LOGIC;
  signal \bit_phase[1]_i_5_n_0\ : STD_LOGIC;
  signal \bit_phase[1]_i_6_n_0\ : STD_LOGIC;
  signal \bit_phase[1]_i_7_n_0\ : STD_LOGIC;
  signal \bit_phase[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_phase[2]_i_3_n_0\ : STD_LOGIC;
  signal \bit_phase[2]_i_4_n_0\ : STD_LOGIC;
  signal \bit_phase[2]_i_5_n_0\ : STD_LOGIC;
  signal \bit_phase[2]_i_6_n_0\ : STD_LOGIC;
  signal \bit_phase[2]_i_7_n_0\ : STD_LOGIC;
  signal \bit_phase[3]_i_2_n_0\ : STD_LOGIC;
  signal \bit_phase[3]_i_3_n_0\ : STD_LOGIC;
  signal \bit_phase[3]_i_4_n_0\ : STD_LOGIC;
  signal \bit_phase[3]_i_5_n_0\ : STD_LOGIC;
  signal \bit_phase[3]_i_6_n_0\ : STD_LOGIC;
  signal \bit_phase[3]_i_7_n_0\ : STD_LOGIC;
  signal \bit_phase[4]_i_2_n_0\ : STD_LOGIC;
  signal \bit_phase[4]_i_3_n_0\ : STD_LOGIC;
  signal \bit_phase[4]_i_4_n_0\ : STD_LOGIC;
  signal \bit_phase[4]_i_5_n_0\ : STD_LOGIC;
  signal \bit_phase[4]_i_6_n_0\ : STD_LOGIC;
  signal \bit_phase[5]_i_10_n_0\ : STD_LOGIC;
  signal \bit_phase[5]_i_11_n_0\ : STD_LOGIC;
  signal \bit_phase[5]_i_12_n_0\ : STD_LOGIC;
  signal \bit_phase[5]_i_2_n_0\ : STD_LOGIC;
  signal \bit_phase[5]_i_3_n_0\ : STD_LOGIC;
  signal \bit_phase[5]_i_4_n_0\ : STD_LOGIC;
  signal \bit_phase[5]_i_5_n_0\ : STD_LOGIC;
  signal \bit_phase[5]_i_6_n_0\ : STD_LOGIC;
  signal \bit_phase[5]_i_7_n_0\ : STD_LOGIC;
  signal \bit_phase[5]_i_8_n_0\ : STD_LOGIC;
  signal \bit_phase[5]_i_9_n_0\ : STD_LOGIC;
  signal \bit_phase[6]_i_2_n_0\ : STD_LOGIC;
  signal \bit_phase[6]_i_3_n_0\ : STD_LOGIC;
  signal \bit_phase[6]_i_4_n_0\ : STD_LOGIC;
  signal \bit_phase[7]_i_2_n_0\ : STD_LOGIC;
  signal \bit_phase[7]_i_3_n_0\ : STD_LOGIC;
  signal \bit_phase[7]_i_4_n_0\ : STD_LOGIC;
  signal \bit_phase[8]_i_1_n_0\ : STD_LOGIC;
  signal \bit_phase[8]_i_3_n_0\ : STD_LOGIC;
  signal \bit_phase[8]_i_4_n_0\ : STD_LOGIC;
  signal \bit_phase_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_phase_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_phase_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_phase_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_phase_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_phase_reg_n_0_[5]\ : STD_LOGIC;
  signal \bit_phase_reg_n_0_[6]\ : STD_LOGIC;
  signal \bit_phase_reg_n_0_[7]\ : STD_LOGIC;
  signal \bit_phase_reg_n_0_[8]\ : STD_LOGIC;
  signal coldata_i2c_v1_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal lat_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal lat_cnt0 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \lat_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \lat_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \lat_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \lat_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal lb_resp : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \lb_resp_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \lb_stim_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \lb_stim_reg_n_0_[3]\ : STD_LOGIC;
  signal lb_stim_sda_out : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \rd_reg[1][26]_i_1_n_0\ : STD_LOGIC;
  signal \rd_reg[1][26]_i_2_n_0\ : STD_LOGIC;
  signal \rd_reg[1][26]_i_3_n_0\ : STD_LOGIC;
  signal \rd_reg[1][26]_i_4_n_0\ : STD_LOGIC;
  signal \rd_reg[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_reg[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \rd_reg_reg[1]\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \rd_reg_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal scl_i_i_2_n_0 : STD_LOGIC;
  signal scl_i_i_3_n_0 : STD_LOGIC;
  signal scl_i_i_4_n_0 : STD_LOGIC;
  signal scl_i_i_5_n_0 : STD_LOGIC;
  signal \^scl_out\ : STD_LOGIC;
  signal sda_in : STD_LOGIC;
  signal \^sda_in_out\ : STD_LOGIC;
  signal sda_in_sh : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \sda_in_sh[26]_i_1_n_0\ : STD_LOGIC;
  signal \sda_in_sh[26]_i_2_n_0\ : STD_LOGIC;
  signal \sda_in_sh[26]_i_3_n_0\ : STD_LOGIC;
  signal sda_out_i : STD_LOGIC;
  signal sda_out_i_1_n_0 : STD_LOGIC;
  signal \^sda_out_out\ : STD_LOGIC;
  signal sda_out_reg_n_0 : STD_LOGIC;
  signal sda_out_sh : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \sda_out_sh_reg_n_0_[0]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[10]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[11]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[12]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[13]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[14]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[15]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[16]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[17]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[18]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[19]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[1]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[20]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[21]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[22]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[23]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[24]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[25]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[26]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[2]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[3]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[4]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[5]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[6]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[7]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[8]\ : STD_LOGIC;
  signal \sda_out_sh_reg_n_0_[9]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \tx_start_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_start_r_reg_n_0_[1]\ : STD_LOGIC;
  signal wr_reg0 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_9\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair19";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ST_STRT:001,ST_ACK:011,ST_TX:010,ST_STOP:100,ST_IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ST_STRT:001,ST_ACK:011,ST_TX:010,ST_STOP:100,ST_IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "ST_STRT:001,ST_ACK:011,ST_TX:010,ST_STOP:100,ST_IDLE:000";
  attribute SOFT_HLUTNM of \bit_count[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bit_count[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bit_count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bit_phase[1]_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bit_phase[2]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bit_phase[2]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bit_phase[3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bit_phase[3]_i_7\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bit_phase[4]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bit_phase[5]_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bit_phase[5]_i_12\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bit_phase[5]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bit_phase[5]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bit_phase[5]_i_9\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bit_phase[6]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bit_phase[6]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_phase[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bit_phase[7]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bit_phase[7]_i_4\ : label is "soft_lutpair9";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ibuf_sda : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of ibuf_sda : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of ibuf_sda : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of ibuf_sda : label is "AUTO";
  attribute SOFT_HLUTNM of \lat_cnt[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lat_cnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lat_cnt[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \lat_cnt[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \lat_cnt[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \lat_cnt[7]_i_2\ : label is "soft_lutpair21";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \lb_resp_reg[1]_srl2\ : label is "\inst/lb_resp_reg ";
  attribute srl_name : string;
  attribute srl_name of \lb_resp_reg[1]_srl2\ : label is "\inst/lb_resp_reg[1]_srl2 ";
  attribute srl_bus_name of \lb_stim_reg[2]_srl3\ : label is "\inst/lb_stim_reg ";
  attribute srl_name of \lb_stim_reg[2]_srl3\ : label is "\inst/lb_stim_reg[2]_srl3 ";
  attribute BOX_TYPE of obuf_sda : label is "PRIMITIVE";
  attribute CAPACITANCE of obuf_sda : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of obuf_sda : label is "OBUFDS";
  attribute SOFT_HLUTNM of \rd_reg[1][26]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of scl_i_i_4 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of scl_i_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sda_in_sh[26]_i_2\ : label is "soft_lutpair8";
begin
  scl_out <= \^scl_out\;
  sda_in_out <= \^sda_in_out\;
  sda_out_out <= \^sda_out_out\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFEEEEEEEEEEE"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      I2 => \FSM_sequential_state[0]_i_4_n_0\,
      I3 => \FSM_sequential_state[0]_i_5_n_0\,
      I4 => state(2),
      I5 => state(1),
      O => \state__0\(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAEA"
    )
        port map (
      I0 => \bit_phase[1]_i_4_n_0\,
      I1 => \sda_in_sh[26]_i_2_n_0\,
      I2 => state(0),
      I3 => \bit_phase_reg_n_0_[8]\,
      I4 => \bit_phase_reg_n_0_[7]\,
      I5 => \bit_phase_reg_n_0_[5]\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500050305000500"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020900"
    )
        port map (
      I0 => \bit_count_reg_n_0_[4]\,
      I1 => \bit_count_reg_n_0_[1]\,
      I2 => \bit_count_reg_n_0_[2]\,
      I3 => \bit_count_reg_n_0_[3]\,
      I4 => \bit_count_reg_n_0_[0]\,
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFE000E000"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[1]\,
      I1 => \FSM_sequential_state[2]_i_6_n_0\,
      I2 => \bit_phase_reg_n_0_[5]\,
      I3 => \bit_phase_reg_n_0_[4]\,
      I4 => state(0),
      I5 => \FSM_sequential_state[2]_i_3_n_0\,
      O => \FSM_sequential_state[0]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEEEEE"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_state[1]_i_5_n_0\,
      I4 => \bit_phase_reg_n_0_[6]\,
      I5 => \FSM_sequential_state[1]_i_6_n_0\,
      O => \state__0\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFEFEFEFE"
    )
        port map (
      I0 => \bit_count[4]_i_3_n_0\,
      I1 => scl_i_i_5_n_0,
      I2 => \FSM_sequential_state[1]_i_7_n_0\,
      I3 => \FSM_sequential_state[2]_i_4_n_0\,
      I4 => state(0),
      I5 => \sda_in_sh[26]_i_2_n_0\,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_8_n_0\,
      I1 => \FSM_sequential_state[2]_i_7_n_0\,
      I2 => \FSM_sequential_state[1]_i_9_n_0\,
      I3 => \bit_phase_reg_n_0_[5]\,
      I4 => \bit_phase_reg_n_0_[6]\,
      I5 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[5]\,
      I1 => \bit_phase_reg_n_0_[7]\,
      I2 => \bit_phase_reg_n_0_[8]\,
      I3 => state(2),
      I4 => state(0),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[4]\,
      I1 => \bit_phase_reg_n_0_[3]\,
      I2 => \bit_phase_reg_n_0_[2]\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55400000"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[7]\,
      I1 => \bit_phase_reg_n_0_[6]\,
      I2 => \bit_phase_reg_n_0_[5]\,
      I3 => \bit_phase_reg_n_0_[8]\,
      I4 => \bit_phase[4]_i_4_n_0\,
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000000000000"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[5]\,
      I1 => \bit_phase_reg_n_0_[4]\,
      I2 => \bit_phase_reg_n_0_[6]\,
      I3 => \bit_phase_reg_n_0_[8]\,
      I4 => \bit_phase[4]_i_4_n_0\,
      I5 => \bit_phase_reg_n_0_[7]\,
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FF000000000000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[4]\,
      I1 => \bit_count_reg_n_0_[1]\,
      I2 => \bit_count_reg_n_0_[2]\,
      I3 => \bit_count_reg_n_0_[3]\,
      I4 => \FSM_sequential_state[1]_i_9_n_0\,
      I5 => \bit_phase_reg_n_0_[7]\,
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state[1]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      O => \FSM_sequential_state[1]_i_9_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFF0F0FDFDF0F0"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      I4 => state(2),
      I5 => \FSM_sequential_state[2]_i_7_n_0\,
      O => \state__0\(2)
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[8]\,
      I1 => \bit_phase_reg_n_0_[7]\,
      I2 => \bit_phase_reg_n_0_[6]\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[8]\,
      I1 => \bit_phase_reg_n_0_[7]\,
      I2 => \bit_phase_reg_n_0_[5]\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800000000000"
    )
        port map (
      I0 => \rd_reg[1][26]_i_2_n_0\,
      I1 => \bit_count_reg_n_0_[4]\,
      I2 => \bit_count_reg_n_0_[3]\,
      I3 => \bit_count_reg_n_0_[2]\,
      I4 => \bit_count_reg_n_0_[1]\,
      I5 => \rd_reg[1][26]_i_4_n_0\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[2]\,
      I1 => \bit_phase_reg_n_0_[3]\,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[8]\,
      I1 => \bit_phase_reg_n_0_[7]\,
      I2 => \bit_phase_reg_n_0_[4]\,
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      D => \state__0\(0),
      Q => state(0),
      R => coldata_i2c_v1_0_S00_AXI_inst_n_1
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      D => \state__0\(1),
      Q => state(1),
      R => coldata_i2c_v1_0_S00_AXI_inst_n_1
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      D => \state__0\(2),
      Q => state(2),
      R => coldata_i2c_v1_0_S00_AXI_inst_n_1
    );
\bit_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \bit_count_reg_n_0_[0]\,
      O => bit_count(0)
    );
\bit_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => \bit_count_reg_n_0_[0]\,
      I3 => \bit_count_reg_n_0_[1]\,
      O => bit_count(1)
    );
\bit_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07000800"
    )
        port map (
      I0 => \bit_count_reg_n_0_[0]\,
      I1 => \bit_count_reg_n_0_[1]\,
      I2 => state(2),
      I3 => state(1),
      I4 => \bit_count_reg_n_0_[2]\,
      O => bit_count(2)
    );
\bit_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F000000800000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[1]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[2]\,
      I3 => state(2),
      I4 => state(1),
      I5 => \bit_count_reg_n_0_[3]\,
      O => bit_count(3)
    );
\bit_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0E0A0A0"
    )
        port map (
      I0 => \bit_count[4]_i_3_n_0\,
      I1 => \sda_in_sh[26]_i_2_n_0\,
      I2 => s00_axi_aresetn,
      I3 => state(0),
      I4 => \bit_count[4]_i_4_n_0\,
      I5 => \bit_count[4]_i_5_n_0\,
      O => \bit_count[4]_i_1_n_0\
    );
\bit_count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \bit_count_reg_n_0_[2]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => \bit_count_reg_n_0_[1]\,
      I3 => \bit_count_reg_n_0_[3]\,
      I4 => \sda_in_sh[26]_i_2_n_0\,
      I5 => \bit_count_reg_n_0_[4]\,
      O => bit_count(4)
    );
\bit_count[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FEEE00000000"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[7]\,
      I1 => \bit_phase_reg_n_0_[8]\,
      I2 => \bit_phase_reg_n_0_[5]\,
      I3 => \bit_phase_reg_n_0_[6]\,
      I4 => state(1),
      I5 => \FSM_sequential_state[1]_i_9_n_0\,
      O => \bit_count[4]_i_3_n_0\
    );
\bit_count[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888880"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[4]\,
      I1 => \bit_phase_reg_n_0_[5]\,
      I2 => \bit_phase_reg_n_0_[3]\,
      I3 => \bit_phase_reg_n_0_[2]\,
      I4 => \bit_phase_reg_n_0_[1]\,
      I5 => \FSM_sequential_state[2]_i_3_n_0\,
      O => \bit_count[4]_i_4_n_0\
    );
\bit_count[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \FSM_sequential_state[1]_i_5_n_0\,
      I2 => \bit_phase_reg_n_0_[6]\,
      I3 => state(2),
      I4 => state(0),
      I5 => state(1),
      O => \bit_count[4]_i_5_n_0\
    );
\bit_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => bit_count(0),
      Q => \bit_count_reg_n_0_[0]\,
      R => '0'
    );
\bit_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => bit_count(1),
      Q => \bit_count_reg_n_0_[1]\,
      R => '0'
    );
\bit_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => bit_count(2),
      Q => \bit_count_reg_n_0_[2]\,
      R => '0'
    );
\bit_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => bit_count(3),
      Q => \bit_count_reg_n_0_[3]\,
      R => '0'
    );
\bit_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => bit_count(4),
      Q => \bit_count_reg_n_0_[4]\,
      R => '0'
    );
\bit_phase[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF888F8888"
    )
        port map (
      I0 => \bit_phase[0]_i_2_n_0\,
      I1 => \rd_reg[1][26]_i_4_n_0\,
      I2 => \bit_phase_reg_n_0_[0]\,
      I3 => \FSM_sequential_state[1]_i_5_n_0\,
      I4 => \FSM_sequential_state[1]_i_4_n_0\,
      I5 => \bit_phase[0]_i_3_n_0\,
      O => bit_phase(0)
    );
\bit_phase[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000200020000000"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => \bit_count_reg_n_0_[3]\,
      I3 => \bit_count_reg_n_0_[4]\,
      I4 => \bit_count_reg_n_0_[2]\,
      I5 => \bit_count_reg_n_0_[1]\,
      O => \bit_phase[0]_i_2_n_0\
    );
\bit_phase[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70507050FFFFB0A0"
    )
        port map (
      I0 => \bit_phase[0]_i_4_n_0\,
      I1 => state(0),
      I2 => \sda_in_sh[26]_i_2_n_0\,
      I3 => \bit_count[4]_i_4_n_0\,
      I4 => \bit_phase[5]_i_10_n_0\,
      I5 => \bit_phase_reg_n_0_[0]\,
      O => \bit_phase[0]_i_3_n_0\
    );
\bit_phase[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[8]\,
      I1 => \bit_phase_reg_n_0_[6]\,
      I2 => \bit_phase_reg_n_0_[4]\,
      I3 => \bit_phase_reg_n_0_[5]\,
      I4 => \bit_phase_reg_n_0_[7]\,
      I5 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \bit_phase[0]_i_4_n_0\
    );
\bit_phase[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEFEFFAAAAAA"
    )
        port map (
      I0 => \bit_phase[1]_i_2_n_0\,
      I1 => \bit_phase[1]_i_3_n_0\,
      I2 => \bit_phase[1]_i_4_n_0\,
      I3 => \bit_phase[1]_i_5_n_0\,
      I4 => \bit_phase_reg_n_0_[0]\,
      I5 => \bit_phase_reg_n_0_[1]\,
      O => bit_phase(1)
    );
\bit_phase[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000000880088"
    )
        port map (
      I0 => \bit_phase[1]_i_6_n_0\,
      I1 => \bit_phase_reg_n_0_[0]\,
      I2 => \bit_phase[4]_i_3_n_0\,
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      I4 => \bit_phase[8]_i_3_n_0\,
      I5 => \bit_phase_reg_n_0_[1]\,
      O => \bit_phase[1]_i_2_n_0\
    );
\bit_phase[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FFE0FFFFFFE0"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => \bit_phase[2]_i_7_n_0\,
      I2 => \rd_reg[1][26]_i_2_n_0\,
      I3 => \bit_phase[5]_i_10_n_0\,
      I4 => \bit_phase[1]_i_7_n_0\,
      I5 => \FSM_sequential_state[2]_i_3_n_0\,
      O => \bit_phase[1]_i_3_n_0\
    );
\bit_phase[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080AAA00080008"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_7_n_0\,
      I1 => \rd_reg[1][26]_i_2_n_0\,
      I2 => \bit_phase_reg_n_0_[3]\,
      I3 => \bit_phase_reg_n_0_[2]\,
      I4 => \bit_phase_reg_n_0_[5]\,
      I5 => \FSM_sequential_state[1]_i_9_n_0\,
      O => \bit_phase[1]_i_4_n_0\
    );
\bit_phase[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4F4F4F4F4"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_5_n_0\,
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => \bit_phase[3]_i_5_n_0\,
      I3 => \bit_phase[3]_i_6_n_0\,
      I4 => state(0),
      I5 => \sda_in_sh[26]_i_2_n_0\,
      O => \bit_phase[1]_i_5_n_0\
    );
\bit_phase[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A2A0FF00000000"
    )
        port map (
      I0 => state(0),
      I1 => \bit_phase_reg_n_0_[4]\,
      I2 => \bit_phase[2]_i_7_n_0\,
      I3 => \bit_phase[5]_i_6_n_0\,
      I4 => \bit_phase_reg_n_0_[6]\,
      I5 => \sda_in_sh[26]_i_2_n_0\,
      O => \bit_phase[1]_i_6_n_0\
    );
\bit_phase[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0700"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[5]\,
      I1 => \bit_phase_reg_n_0_[4]\,
      I2 => state(2),
      I3 => state(1),
      O => \bit_phase[1]_i_7_n_0\
    );
\bit_phase[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAAAAFFAA"
    )
        port map (
      I0 => \bit_phase[2]_i_2_n_0\,
      I1 => \bit_phase[8]_i_3_n_0\,
      I2 => \bit_phase[4]_i_3_n_0\,
      I3 => \bit_phase[2]_i_3_n_0\,
      I4 => \bit_phase[2]_i_4_n_0\,
      I5 => \bit_phase_reg_n_0_[2]\,
      O => bit_phase(2)
    );
\bit_phase[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F0FCF4F0F0FC"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[3]\,
      I1 => \bit_phase[2]_i_5_n_0\,
      I2 => \bit_phase[2]_i_6_n_0\,
      I3 => \bit_phase_reg_n_0_[2]\,
      I4 => \bit_phase[2]_i_4_n_0\,
      I5 => \bit_phase[1]_i_3_n_0\,
      O => \bit_phase[2]_i_2_n_0\
    );
\bit_phase[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888000"
    )
        port map (
      I0 => \sda_in_sh[26]_i_2_n_0\,
      I1 => state(0),
      I2 => \bit_phase[2]_i_7_n_0\,
      I3 => \bit_phase[4]_i_3_n_0\,
      I4 => \FSM_sequential_state[2]_i_4_n_0\,
      I5 => \bit_phase[3]_i_5_n_0\,
      O => \bit_phase[2]_i_3_n_0\
    );
\bit_phase[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[0]\,
      I1 => \bit_phase_reg_n_0_[1]\,
      O => \bit_phase[2]_i_4_n_0\
    );
\bit_phase[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[5]\,
      I1 => state(0),
      I2 => state(2),
      I3 => \bit_phase_reg_n_0_[4]\,
      I4 => \bit_phase_reg_n_0_[7]\,
      I5 => \bit_phase_reg_n_0_[8]\,
      O => \bit_phase[2]_i_5_n_0\
    );
\bit_phase[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000800000"
    )
        port map (
      I0 => \rd_reg[1][26]_i_2_n_0\,
      I1 => \bit_phase_reg_n_0_[1]\,
      I2 => \bit_phase_reg_n_0_[0]\,
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      I4 => \bit_phase[2]_i_7_n_0\,
      I5 => \FSM_sequential_state[2]_i_7_n_0\,
      O => \bit_phase[2]_i_6_n_0\
    );
\bit_phase[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => \bit_count_reg_n_0_[4]\,
      I1 => \bit_count_reg_n_0_[1]\,
      I2 => \bit_count_reg_n_0_[2]\,
      I3 => \bit_count_reg_n_0_[3]\,
      O => \bit_phase[2]_i_7_n_0\
    );
\bit_phase[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEEA"
    )
        port map (
      I0 => \bit_count[4]_i_3_n_0\,
      I1 => \bit_phase[3]_i_2_n_0\,
      I2 => \bit_phase_reg_n_0_[4]\,
      I3 => \bit_phase_reg_n_0_[3]\,
      I4 => \bit_phase[3]_i_3_n_0\,
      I5 => \bit_phase[3]_i_4_n_0\,
      O => bit_phase(3)
    );
\bit_phase[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => \bit_phase_reg_n_0_[6]\,
      O => \bit_phase[3]_i_2_n_0\
    );
\bit_phase[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100010001000"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[3]\,
      I1 => \bit_phase[2]_i_4_n_0\,
      I2 => \bit_phase_reg_n_0_[2]\,
      I3 => \bit_phase[3]_i_5_n_0\,
      I4 => \bit_phase[3]_i_6_n_0\,
      I5 => \FSM_sequential_state[1]_i_9_n_0\,
      O => \bit_phase[3]_i_3_n_0\
    );
\bit_phase[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0FFE0E000000000"
    )
        port map (
      I0 => \bit_phase[4]_i_6_n_0\,
      I1 => \bit_phase[3]_i_5_n_0\,
      I2 => \bit_phase[3]_i_7_n_0\,
      I3 => \bit_phase[4]_i_3_n_0\,
      I4 => \bit_phase[4]_i_4_n_0\,
      I5 => \bit_phase_reg_n_0_[3]\,
      O => \bit_phase[3]_i_4_n_0\
    );
\bit_phase[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00150000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \bit_phase_reg_n_0_[5]\,
      I2 => \bit_phase_reg_n_0_[4]\,
      I3 => state(2),
      I4 => state(1),
      I5 => \bit_phase[5]_i_10_n_0\,
      O => \bit_phase[3]_i_5_n_0\
    );
\bit_phase[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAFF"
    )
        port map (
      I0 => \bit_phase[2]_i_7_n_0\,
      I1 => \bit_phase_reg_n_0_[4]\,
      I2 => \bit_phase_reg_n_0_[6]\,
      I3 => \bit_phase_reg_n_0_[5]\,
      I4 => \bit_phase_reg_n_0_[7]\,
      I5 => \bit_phase_reg_n_0_[8]\,
      O => \bit_phase[3]_i_6_n_0\
    );
\bit_phase[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[1]\,
      I1 => \bit_phase_reg_n_0_[0]\,
      I2 => \bit_phase_reg_n_0_[2]\,
      O => \bit_phase[3]_i_7_n_0\
    );
\bit_phase[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFEE"
    )
        port map (
      I0 => \bit_count[4]_i_3_n_0\,
      I1 => \bit_phase[4]_i_2_n_0\,
      I2 => \bit_phase[4]_i_3_n_0\,
      I3 => \bit_phase[4]_i_4_n_0\,
      I4 => \bit_phase[4]_i_5_n_0\,
      O => bit_phase(4)
    );
\bit_phase[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"570003000000FF00"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[5]\,
      I1 => \bit_phase_reg_n_0_[1]\,
      I2 => \FSM_sequential_state[2]_i_6_n_0\,
      I3 => scl_i_i_5_n_0,
      I4 => \bit_phase[7]_i_3_n_0\,
      I5 => \bit_phase_reg_n_0_[4]\,
      O => \bit_phase[4]_i_2_n_0\
    );
\bit_phase[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[7]\,
      I1 => \bit_phase_reg_n_0_[5]\,
      I2 => \bit_phase_reg_n_0_[4]\,
      I3 => \bit_phase_reg_n_0_[6]\,
      I4 => \bit_phase_reg_n_0_[8]\,
      O => \bit_phase[4]_i_3_n_0\
    );
\bit_phase[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404044444444444"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \bit_count_reg_n_0_[3]\,
      I3 => \bit_count_reg_n_0_[2]\,
      I4 => \bit_count_reg_n_0_[1]\,
      I5 => \bit_count_reg_n_0_[4]\,
      O => \bit_phase[4]_i_4_n_0\
    );
\bit_phase[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0C0CFFAE0C0CAE"
    )
        port map (
      I0 => \bit_phase[4]_i_6_n_0\,
      I1 => \bit_phase[3]_i_2_n_0\,
      I2 => \bit_phase[5]_i_9_n_0\,
      I3 => \bit_phase[7]_i_3_n_0\,
      I4 => \bit_phase_reg_n_0_[4]\,
      I5 => \bit_phase[5]_i_10_n_0\,
      O => \bit_phase[4]_i_5_n_0\
    );
\bit_phase[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAB00000000"
    )
        port map (
      I0 => \bit_phase[2]_i_7_n_0\,
      I1 => \bit_phase_reg_n_0_[8]\,
      I2 => \bit_phase_reg_n_0_[7]\,
      I3 => \bit_phase_reg_n_0_[5]\,
      I4 => state(2),
      I5 => state(0),
      O => \bit_phase[4]_i_6_n_0\
    );
\bit_phase[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \bit_phase[5]_i_2_n_0\,
      I1 => \bit_phase[5]_i_3_n_0\,
      I2 => \bit_phase[5]_i_4_n_0\,
      I3 => \bit_phase[5]_i_5_n_0\,
      I4 => \bit_phase[5]_i_6_n_0\,
      I5 => \bit_phase[5]_i_7_n_0\,
      O => bit_phase(5)
    );
\bit_phase[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000FF0100"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[7]\,
      I1 => \bit_phase_reg_n_0_[8]\,
      I2 => \bit_phase_reg_n_0_[6]\,
      I3 => state(0),
      I4 => state(2),
      I5 => state(1),
      O => \bit_phase[5]_i_10_n_0\
    );
\bit_phase[5]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \bit_phase[5]_i_11_n_0\
    );
\bit_phase[5]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[0]\,
      I1 => \bit_phase_reg_n_0_[1]\,
      I2 => \bit_phase_reg_n_0_[2]\,
      I3 => \bit_phase_reg_n_0_[3]\,
      I4 => \bit_phase_reg_n_0_[4]\,
      O => \bit_phase[5]_i_12_n_0\
    );
\bit_phase[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEAAA"
    )
        port map (
      I0 => \bit_phase[5]_i_8_n_0\,
      I1 => \FSM_sequential_state[2]_i_7_n_0\,
      I2 => \bit_phase_reg_n_0_[5]\,
      I3 => \FSM_sequential_state[1]_i_9_n_0\,
      I4 => \bit_phase_reg_n_0_[3]\,
      I5 => \bit_phase_reg_n_0_[2]\,
      O => \bit_phase[5]_i_2_n_0\
    );
\bit_phase[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888800000000"
    )
        port map (
      I0 => \bit_phase[5]_i_5_n_0\,
      I1 => \bit_phase[5]_i_9_n_0\,
      I2 => \FSM_sequential_state[1]_i_8_n_0\,
      I3 => \bit_phase_reg_n_0_[8]\,
      I4 => \bit_phase_reg_n_0_[6]\,
      I5 => \bit_phase_reg_n_0_[5]\,
      O => \bit_phase[5]_i_3_n_0\
    );
\bit_phase[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F0F040404040"
    )
        port map (
      I0 => \bit_phase[7]_i_3_n_0\,
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => \bit_phase_reg_n_0_[4]\,
      I3 => \bit_phase_reg_n_0_[3]\,
      I4 => \bit_phase_reg_n_0_[2]\,
      I5 => \bit_phase[3]_i_2_n_0\,
      O => \bit_phase[5]_i_4_n_0\
    );
\bit_phase[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => \bit_phase[5]_i_5_n_0\
    );
\bit_phase[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[7]\,
      I1 => \bit_phase_reg_n_0_[8]\,
      O => \bit_phase[5]_i_6_n_0\
    );
\bit_phase[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFA00000000FFFC"
    )
        port map (
      I0 => \bit_phase[5]_i_10_n_0\,
      I1 => scl_i_i_5_n_0,
      I2 => \bit_phase[4]_i_4_n_0\,
      I3 => \bit_phase[5]_i_11_n_0\,
      I4 => \bit_phase[5]_i_12_n_0\,
      I5 => \bit_phase_reg_n_0_[5]\,
      O => \bit_phase[5]_i_7_n_0\
    );
\bit_phase[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808080888"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[5]\,
      I1 => scl_i_i_5_n_0,
      I2 => \bit_phase_reg_n_0_[4]\,
      I3 => \bit_phase_reg_n_0_[3]\,
      I4 => \bit_phase_reg_n_0_[2]\,
      I5 => \bit_phase_reg_n_0_[1]\,
      O => \bit_phase[5]_i_8_n_0\
    );
\bit_phase[5]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[2]\,
      I1 => \bit_phase_reg_n_0_[3]\,
      O => \bit_phase[5]_i_9_n_0\
    );
\bit_phase[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAFAEEFEAAFAE"
    )
        port map (
      I0 => \bit_phase[6]_i_2_n_0\,
      I1 => \bit_phase[7]_i_2_n_0\,
      I2 => \bit_phase[6]_i_3_n_0\,
      I3 => \bit_phase[6]_i_4_n_0\,
      I4 => \bit_phase_reg_n_0_[6]\,
      I5 => \FSM_sequential_state[0]_i_2_n_0\,
      O => bit_phase(6)
    );
\bit_phase[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[6]\,
      I1 => \bit_phase_reg_n_0_[7]\,
      I2 => \bit_phase_reg_n_0_[8]\,
      I3 => \bit_phase[8]_i_3_n_0\,
      O => \bit_phase[6]_i_2_n_0\
    );
\bit_phase[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[0]\,
      I1 => \bit_phase_reg_n_0_[1]\,
      I2 => \bit_phase_reg_n_0_[2]\,
      I3 => \bit_phase_reg_n_0_[3]\,
      I4 => \bit_phase_reg_n_0_[5]\,
      I5 => \bit_phase_reg_n_0_[4]\,
      O => \bit_phase[6]_i_3_n_0\
    );
\bit_phase[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => \bit_phase_reg_n_0_[6]\,
      I3 => \bit_phase_reg_n_0_[7]\,
      I4 => \bit_phase_reg_n_0_[8]\,
      O => \bit_phase[6]_i_4_n_0\
    );
\bit_phase[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F888000000F0"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[8]\,
      I1 => \bit_phase[8]_i_3_n_0\,
      I2 => \bit_phase[7]_i_2_n_0\,
      I3 => \bit_phase[7]_i_3_n_0\,
      I4 => \bit_phase[7]_i_4_n_0\,
      I5 => \bit_phase_reg_n_0_[7]\,
      O => bit_phase(7)
    );
\bit_phase[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => \bit_phase[8]_i_3_n_0\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => \bit_phase[7]_i_2_n_0\
    );
\bit_phase[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[3]\,
      I1 => \bit_phase_reg_n_0_[2]\,
      I2 => \bit_phase_reg_n_0_[1]\,
      I3 => \bit_phase_reg_n_0_[0]\,
      O => \bit_phase[7]_i_3_n_0\
    );
\bit_phase[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[5]\,
      I1 => \bit_phase_reg_n_0_[4]\,
      I2 => \bit_phase_reg_n_0_[6]\,
      O => \bit_phase[7]_i_4_n_0\
    );
\bit_phase[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5060507050605060"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => s00_axi_aresetn,
      I3 => state(1),
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => \bit_phase[8]_i_1_n_0\
    );
\bit_phase[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF100000FF00FF10"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => \bit_phase[8]_i_3_n_0\,
      I4 => \bit_phase_reg_n_0_[8]\,
      I5 => \bit_phase[8]_i_4_n_0\,
      O => bit_phase(8)
    );
\bit_phase[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808088888888888"
    )
        port map (
      I0 => state(0),
      I1 => \sda_in_sh[26]_i_2_n_0\,
      I2 => \bit_count_reg_n_0_[3]\,
      I3 => \bit_count_reg_n_0_[2]\,
      I4 => \bit_count_reg_n_0_[1]\,
      I5 => \bit_count_reg_n_0_[4]\,
      O => \bit_phase[8]_i_3_n_0\
    );
\bit_phase[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[7]\,
      I1 => \bit_phase_reg_n_0_[5]\,
      I2 => \bit_phase_reg_n_0_[4]\,
      I3 => \bit_phase_reg_n_0_[6]\,
      I4 => \bit_phase[7]_i_3_n_0\,
      O => \bit_phase[8]_i_4_n_0\
    );
\bit_phase_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_phase[8]_i_1_n_0\,
      D => bit_phase(0),
      Q => \bit_phase_reg_n_0_[0]\,
      R => '0'
    );
\bit_phase_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_phase[8]_i_1_n_0\,
      D => bit_phase(1),
      Q => \bit_phase_reg_n_0_[1]\,
      R => '0'
    );
\bit_phase_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_phase[8]_i_1_n_0\,
      D => bit_phase(2),
      Q => \bit_phase_reg_n_0_[2]\,
      R => '0'
    );
\bit_phase_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_phase[8]_i_1_n_0\,
      D => bit_phase(3),
      Q => \bit_phase_reg_n_0_[3]\,
      R => '0'
    );
\bit_phase_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_phase[8]_i_1_n_0\,
      D => bit_phase(4),
      Q => \bit_phase_reg_n_0_[4]\,
      R => '0'
    );
\bit_phase_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_phase[8]_i_1_n_0\,
      D => bit_phase(5),
      Q => \bit_phase_reg_n_0_[5]\,
      R => '0'
    );
\bit_phase_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_phase[8]_i_1_n_0\,
      D => bit_phase(6),
      Q => \bit_phase_reg_n_0_[6]\,
      R => '0'
    );
\bit_phase_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_phase[8]_i_1_n_0\,
      D => bit_phase(7),
      Q => \bit_phase_reg_n_0_[7]\,
      R => '0'
    );
\bit_phase_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => \bit_phase[8]_i_1_n_0\,
      D => bit_phase(8),
      Q => \bit_phase_reg_n_0_[8]\,
      R => '0'
    );
coldata_i2c_v1_0_S00_AXI_inst: entity work.design_1_coldata_i2c_0_3_coldata_i2c_v1_0_S00_AXI
     port map (
      D(0) => wr_reg0(0),
      Q(1 downto 0) => state(2 downto 1),
      SR(0) => coldata_i2c_v1_0_S00_AXI_inst_n_1,
      \axi_rdata_reg[26]_0\(26 downto 0) => \rd_reg_reg[1]\(26 downto 0),
      p_2_out(0) => p_2_out(0),
      \rd_reg_reg[2]\(7 downto 0) => \rd_reg_reg[2]\(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \sda_out_sh_reg[25]\(26 downto 0) => sda_out_sh(26 downto 0),
      \sda_out_sh_reg[26]\(25) => \sda_out_sh_reg_n_0_[25]\,
      \sda_out_sh_reg[26]\(24) => \sda_out_sh_reg_n_0_[24]\,
      \sda_out_sh_reg[26]\(23) => \sda_out_sh_reg_n_0_[23]\,
      \sda_out_sh_reg[26]\(22) => \sda_out_sh_reg_n_0_[22]\,
      \sda_out_sh_reg[26]\(21) => \sda_out_sh_reg_n_0_[21]\,
      \sda_out_sh_reg[26]\(20) => \sda_out_sh_reg_n_0_[20]\,
      \sda_out_sh_reg[26]\(19) => \sda_out_sh_reg_n_0_[19]\,
      \sda_out_sh_reg[26]\(18) => \sda_out_sh_reg_n_0_[18]\,
      \sda_out_sh_reg[26]\(17) => \sda_out_sh_reg_n_0_[17]\,
      \sda_out_sh_reg[26]\(16) => \sda_out_sh_reg_n_0_[16]\,
      \sda_out_sh_reg[26]\(15) => \sda_out_sh_reg_n_0_[15]\,
      \sda_out_sh_reg[26]\(14) => \sda_out_sh_reg_n_0_[14]\,
      \sda_out_sh_reg[26]\(13) => \sda_out_sh_reg_n_0_[13]\,
      \sda_out_sh_reg[26]\(12) => \sda_out_sh_reg_n_0_[12]\,
      \sda_out_sh_reg[26]\(11) => \sda_out_sh_reg_n_0_[11]\,
      \sda_out_sh_reg[26]\(10) => \sda_out_sh_reg_n_0_[10]\,
      \sda_out_sh_reg[26]\(9) => \sda_out_sh_reg_n_0_[9]\,
      \sda_out_sh_reg[26]\(8) => \sda_out_sh_reg_n_0_[8]\,
      \sda_out_sh_reg[26]\(7) => \sda_out_sh_reg_n_0_[7]\,
      \sda_out_sh_reg[26]\(6) => \sda_out_sh_reg_n_0_[6]\,
      \sda_out_sh_reg[26]\(5) => \sda_out_sh_reg_n_0_[5]\,
      \sda_out_sh_reg[26]\(4) => \sda_out_sh_reg_n_0_[4]\,
      \sda_out_sh_reg[26]\(3) => \sda_out_sh_reg_n_0_[3]\,
      \sda_out_sh_reg[26]\(2) => \sda_out_sh_reg_n_0_[2]\,
      \sda_out_sh_reg[26]\(1) => \sda_out_sh_reg_n_0_[1]\,
      \sda_out_sh_reg[26]\(0) => \sda_out_sh_reg_n_0_[0]\
    );
ibuf_sda: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sda_in_p,
      IB => sda_in_n,
      O => sda_in
    );
\lat_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => lat_cnt(0),
      I1 => \lb_stim_reg_n_0_[3]\,
      I2 => lb_stim_sda_out,
      O => \lat_cnt[0]_i_1_n_0\
    );
\lat_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6066"
    )
        port map (
      I0 => lat_cnt(1),
      I1 => lat_cnt(0),
      I2 => \lb_stim_reg_n_0_[3]\,
      I3 => lb_stim_sda_out,
      O => \lat_cnt[1]_i_1_n_0\
    );
\lat_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => lat_cnt(0),
      I1 => lat_cnt(1),
      I2 => lat_cnt(2),
      O => lat_cnt0(2)
    );
\lat_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => lat_cnt(1),
      I1 => lat_cnt(0),
      I2 => lat_cnt(2),
      I3 => lat_cnt(3),
      O => lat_cnt0(3)
    );
\lat_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => lat_cnt(2),
      I1 => lat_cnt(0),
      I2 => lat_cnt(1),
      I3 => lat_cnt(3),
      I4 => lat_cnt(4),
      O => lat_cnt0(4)
    );
\lat_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => lat_cnt(3),
      I1 => lat_cnt(1),
      I2 => lat_cnt(0),
      I3 => lat_cnt(2),
      I4 => lat_cnt(4),
      I5 => lat_cnt(5),
      O => lat_cnt0(5)
    );
\lat_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lat_cnt[7]_i_3_n_0\,
      I1 => lat_cnt(6),
      O => lat_cnt0(6)
    );
\lat_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lb_stim_sda_out,
      I1 => \lb_stim_reg_n_0_[3]\,
      O => \lat_cnt[7]_i_1_n_0\
    );
\lat_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \lat_cnt[7]_i_3_n_0\,
      I1 => lat_cnt(6),
      I2 => lat_cnt(7),
      O => lat_cnt0(7)
    );
\lat_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => lat_cnt(5),
      I1 => lat_cnt(3),
      I2 => lat_cnt(1),
      I3 => lat_cnt(0),
      I4 => lat_cnt(2),
      I5 => lat_cnt(4),
      O => \lat_cnt[7]_i_3_n_0\
    );
\lat_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => \lat_cnt[0]_i_1_n_0\,
      Q => lat_cnt(0),
      R => '0'
    );
\lat_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => \lat_cnt[1]_i_1_n_0\,
      Q => lat_cnt(1),
      R => '0'
    );
\lat_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => lat_cnt0(2),
      Q => lat_cnt(2),
      S => \lat_cnt[7]_i_1_n_0\
    );
\lat_cnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => lat_cnt0(3),
      Q => lat_cnt(3),
      S => \lat_cnt[7]_i_1_n_0\
    );
\lat_cnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => lat_cnt0(4),
      Q => lat_cnt(4),
      S => \lat_cnt[7]_i_1_n_0\
    );
\lat_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => lat_cnt0(5),
      Q => lat_cnt(5),
      S => \lat_cnt[7]_i_1_n_0\
    );
\lat_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => lat_cnt0(6),
      Q => lat_cnt(6),
      S => \lat_cnt[7]_i_1_n_0\
    );
\lat_cnt_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => lat_cnt0(7),
      Q => lat_cnt(7),
      S => \lat_cnt[7]_i_1_n_0\
    );
\lb_resp_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk62p5,
      D => \^sda_in_out\,
      Q => \lb_resp_reg[1]_srl2_n_0\
    );
\lb_resp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \lb_resp_reg[1]_srl2_n_0\,
      Q => lb_resp(2),
      R => '0'
    );
\lb_resp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => lb_resp(2),
      Q => lb_resp(3),
      R => '0'
    );
\lb_stim_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk62p5,
      D => p_2_out(0),
      Q => \lb_stim_reg[2]_srl3_n_0\
    );
\lb_stim_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \lb_stim_reg[2]_srl3_n_0\,
      Q => \lb_stim_reg_n_0_[3]\,
      R => '0'
    );
\lb_stim_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \lb_stim_reg_n_0_[3]\,
      Q => lb_stim_sda_out,
      R => '0'
    );
obuf_sda: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sda_out_i,
      O => sda_out_p,
      OB => sda_out_n
    );
\rd_reg[1][26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rd_reg[1][26]_i_2_n_0\,
      I1 => \bit_count_reg_n_0_[3]\,
      I2 => \bit_count_reg_n_0_[4]\,
      I3 => s00_axi_aresetn,
      I4 => \rd_reg[1][26]_i_3_n_0\,
      I5 => \rd_reg[1][26]_i_4_n_0\,
      O => \rd_reg[1][26]_i_1_n_0\
    );
\rd_reg[1][26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \rd_reg[1][26]_i_2_n_0\
    );
\rd_reg[1][26]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_count_reg_n_0_[1]\,
      I1 => \bit_count_reg_n_0_[2]\,
      O => \rd_reg[1][26]_i_3_n_0\
    );
\rd_reg[1][26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFEEEEEEEEEEE"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[7]\,
      I1 => \bit_phase_reg_n_0_[8]\,
      I2 => \FSM_sequential_state[2]_i_6_n_0\,
      I3 => \bit_phase_reg_n_0_[6]\,
      I4 => \bit_phase_reg_n_0_[4]\,
      I5 => \bit_phase_reg_n_0_[5]\,
      O => \rd_reg[1][26]_i_4_n_0\
    );
\rd_reg[2][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lb_resp(3),
      I1 => lb_resp(2),
      O => \rd_reg[2][1]_i_1_n_0\
    );
\rd_reg[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \lb_stim_reg_n_0_[3]\,
      I1 => lb_stim_sda_out,
      I2 => lb_resp(2),
      I3 => lb_resp(3),
      O => \rd_reg[2][7]_i_1_n_0\
    );
\rd_reg_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(0),
      Q => \rd_reg_reg[1]\(0),
      R => '0'
    );
\rd_reg_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(10),
      Q => \rd_reg_reg[1]\(10),
      R => '0'
    );
\rd_reg_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(11),
      Q => \rd_reg_reg[1]\(11),
      R => '0'
    );
\rd_reg_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(12),
      Q => \rd_reg_reg[1]\(12),
      R => '0'
    );
\rd_reg_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(13),
      Q => \rd_reg_reg[1]\(13),
      R => '0'
    );
\rd_reg_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(14),
      Q => \rd_reg_reg[1]\(14),
      R => '0'
    );
\rd_reg_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(15),
      Q => \rd_reg_reg[1]\(15),
      R => '0'
    );
\rd_reg_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(16),
      Q => \rd_reg_reg[1]\(16),
      R => '0'
    );
\rd_reg_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(17),
      Q => \rd_reg_reg[1]\(17),
      R => '0'
    );
\rd_reg_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(18),
      Q => \rd_reg_reg[1]\(18),
      R => '0'
    );
\rd_reg_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(19),
      Q => \rd_reg_reg[1]\(19),
      R => '0'
    );
\rd_reg_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(1),
      Q => \rd_reg_reg[1]\(1),
      R => '0'
    );
\rd_reg_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(20),
      Q => \rd_reg_reg[1]\(20),
      R => '0'
    );
\rd_reg_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(21),
      Q => \rd_reg_reg[1]\(21),
      R => '0'
    );
\rd_reg_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(22),
      Q => \rd_reg_reg[1]\(22),
      R => '0'
    );
\rd_reg_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(23),
      Q => \rd_reg_reg[1]\(23),
      R => '0'
    );
\rd_reg_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(24),
      Q => \rd_reg_reg[1]\(24),
      R => '0'
    );
\rd_reg_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(25),
      Q => \rd_reg_reg[1]\(25),
      R => '0'
    );
\rd_reg_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(26),
      Q => \rd_reg_reg[1]\(26),
      R => '0'
    );
\rd_reg_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(2),
      Q => \rd_reg_reg[1]\(2),
      R => '0'
    );
\rd_reg_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(3),
      Q => \rd_reg_reg[1]\(3),
      R => '0'
    );
\rd_reg_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(4),
      Q => \rd_reg_reg[1]\(4),
      R => '0'
    );
\rd_reg_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(5),
      Q => \rd_reg_reg[1]\(5),
      R => '0'
    );
\rd_reg_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(6),
      Q => \rd_reg_reg[1]\(6),
      R => '0'
    );
\rd_reg_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(7),
      Q => \rd_reg_reg[1]\(7),
      R => '0'
    );
\rd_reg_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(8),
      Q => \rd_reg_reg[1]\(8),
      R => '0'
    );
\rd_reg_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[1][26]_i_1_n_0\,
      D => sda_in_sh(9),
      Q => \rd_reg_reg[1]\(9),
      R => '0'
    );
\rd_reg_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[2][1]_i_1_n_0\,
      D => \lat_cnt[0]_i_1_n_0\,
      Q => \rd_reg_reg[2]\(0),
      R => '0'
    );
\rd_reg_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \rd_reg[2][1]_i_1_n_0\,
      D => \lat_cnt[1]_i_1_n_0\,
      Q => \rd_reg_reg[2]\(1),
      R => '0'
    );
\rd_reg_reg[2][2]\: unisim.vcomponents.FDSE
     port map (
      C => clk62p5,
      CE => \rd_reg[2][1]_i_1_n_0\,
      D => lat_cnt0(2),
      Q => \rd_reg_reg[2]\(2),
      S => \rd_reg[2][7]_i_1_n_0\
    );
\rd_reg_reg[2][3]\: unisim.vcomponents.FDSE
     port map (
      C => clk62p5,
      CE => \rd_reg[2][1]_i_1_n_0\,
      D => lat_cnt0(3),
      Q => \rd_reg_reg[2]\(3),
      S => \rd_reg[2][7]_i_1_n_0\
    );
\rd_reg_reg[2][4]\: unisim.vcomponents.FDSE
     port map (
      C => clk62p5,
      CE => \rd_reg[2][1]_i_1_n_0\,
      D => lat_cnt0(4),
      Q => \rd_reg_reg[2]\(4),
      S => \rd_reg[2][7]_i_1_n_0\
    );
\rd_reg_reg[2][5]\: unisim.vcomponents.FDSE
     port map (
      C => clk62p5,
      CE => \rd_reg[2][1]_i_1_n_0\,
      D => lat_cnt0(5),
      Q => \rd_reg_reg[2]\(5),
      S => \rd_reg[2][7]_i_1_n_0\
    );
\rd_reg_reg[2][6]\: unisim.vcomponents.FDSE
     port map (
      C => clk62p5,
      CE => \rd_reg[2][1]_i_1_n_0\,
      D => lat_cnt0(6),
      Q => \rd_reg_reg[2]\(6),
      S => \rd_reg[2][7]_i_1_n_0\
    );
\rd_reg_reg[2][7]\: unisim.vcomponents.FDSE
     port map (
      C => clk62p5,
      CE => \rd_reg[2][1]_i_1_n_0\,
      D => lat_cnt0(7),
      Q => \rd_reg_reg[2]\(7),
      S => \rd_reg[2][7]_i_1_n_0\
    );
scl_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FDF1F1111D11111"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => scl_i_i_3_n_0,
      I3 => state(2),
      I4 => scl_i_i_4_n_0,
      I5 => \^scl_out\,
      O => scl_i_i_2_n_0
    );
scl_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \bit_phase[2]_i_4_n_0\,
      I1 => \bit_phase_reg_n_0_[2]\,
      I2 => \bit_phase_reg_n_0_[3]\,
      I3 => \bit_phase_reg_n_0_[5]\,
      I4 => \bit_phase_reg_n_0_[4]\,
      I5 => scl_i_i_5_n_0,
      O => scl_i_i_3_n_0
    );
scl_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sda_in_sh[26]_i_3_n_0\,
      I1 => \bit_phase_reg_n_0_[6]\,
      I2 => \bit_phase_reg_n_0_[7]\,
      I3 => \bit_phase_reg_n_0_[8]\,
      O => scl_i_i_4_n_0
    );
scl_i_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \bit_phase_reg_n_0_[6]\,
      I3 => \bit_phase_reg_n_0_[7]\,
      I4 => \bit_phase_reg_n_0_[8]\,
      O => scl_i_i_5_n_0
    );
scl_i_reg: unisim.vcomponents.FDSE
     port map (
      C => clk62p5,
      CE => '1',
      D => scl_i_i_2_n_0,
      Q => \^scl_out\,
      S => coldata_i2c_v1_0_S00_AXI_inst_n_1
    );
scl_reg: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \^scl_out\,
      Q => scl,
      R => '0'
    );
sda_in_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => sda_in,
      Q => \^sda_in_out\,
      R => '0'
    );
\sda_in_sh[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \sda_in_sh[26]_i_2_n_0\,
      I2 => \bit_phase_reg_n_0_[6]\,
      I3 => \bit_phase_reg_n_0_[7]\,
      I4 => \bit_phase_reg_n_0_[8]\,
      I5 => \sda_in_sh[26]_i_3_n_0\,
      O => \sda_in_sh[26]_i_1_n_0\
    );
\sda_in_sh[26]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \sda_in_sh[26]_i_2_n_0\
    );
\sda_in_sh[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \bit_phase_reg_n_0_[3]\,
      I1 => \bit_phase_reg_n_0_[4]\,
      I2 => \bit_phase_reg_n_0_[2]\,
      I3 => \bit_phase_reg_n_0_[5]\,
      I4 => \bit_phase_reg_n_0_[1]\,
      I5 => \bit_phase_reg_n_0_[0]\,
      O => \sda_in_sh[26]_i_3_n_0\
    );
\sda_in_sh_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => \^sda_in_out\,
      Q => sda_in_sh(0),
      R => '0'
    );
\sda_in_sh_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(9),
      Q => sda_in_sh(10),
      R => '0'
    );
\sda_in_sh_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(10),
      Q => sda_in_sh(11),
      R => '0'
    );
\sda_in_sh_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(11),
      Q => sda_in_sh(12),
      R => '0'
    );
\sda_in_sh_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(12),
      Q => sda_in_sh(13),
      R => '0'
    );
\sda_in_sh_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(13),
      Q => sda_in_sh(14),
      R => '0'
    );
\sda_in_sh_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(14),
      Q => sda_in_sh(15),
      R => '0'
    );
\sda_in_sh_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(15),
      Q => sda_in_sh(16),
      R => '0'
    );
\sda_in_sh_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(16),
      Q => sda_in_sh(17),
      R => '0'
    );
\sda_in_sh_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(17),
      Q => sda_in_sh(18),
      R => '0'
    );
\sda_in_sh_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(18),
      Q => sda_in_sh(19),
      R => '0'
    );
\sda_in_sh_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(0),
      Q => sda_in_sh(1),
      R => '0'
    );
\sda_in_sh_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(19),
      Q => sda_in_sh(20),
      R => '0'
    );
\sda_in_sh_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(20),
      Q => sda_in_sh(21),
      R => '0'
    );
\sda_in_sh_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(21),
      Q => sda_in_sh(22),
      R => '0'
    );
\sda_in_sh_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(22),
      Q => sda_in_sh(23),
      R => '0'
    );
\sda_in_sh_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(23),
      Q => sda_in_sh(24),
      R => '0'
    );
\sda_in_sh_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(24),
      Q => sda_in_sh(25),
      R => '0'
    );
\sda_in_sh_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(25),
      Q => sda_in_sh(26),
      R => '0'
    );
\sda_in_sh_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(1),
      Q => sda_in_sh(2),
      R => '0'
    );
\sda_in_sh_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(2),
      Q => sda_in_sh(3),
      R => '0'
    );
\sda_in_sh_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(3),
      Q => sda_in_sh(4),
      R => '0'
    );
\sda_in_sh_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(4),
      Q => sda_in_sh(5),
      R => '0'
    );
\sda_in_sh_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(5),
      Q => sda_in_sh(6),
      R => '0'
    );
\sda_in_sh_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(6),
      Q => sda_in_sh(7),
      R => '0'
    );
\sda_in_sh_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(7),
      Q => sda_in_sh(8),
      R => '0'
    );
\sda_in_sh_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \sda_in_sh[26]_i_1_n_0\,
      D => sda_in_sh(8),
      Q => sda_in_sh(9),
      R => '0'
    );
sda_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCCCBF000000B3"
    )
        port map (
      I0 => \sda_out_sh_reg_n_0_[26]\,
      I1 => state(1),
      I2 => \bit_count[4]_i_4_n_0\,
      I3 => state(0),
      I4 => state(2),
      I5 => sda_out_reg_n_0,
      O => sda_out_i_1_n_0
    );
sda_out_i_reg: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => '1',
      D => \^sda_out_out\,
      Q => sda_out_i,
      R => '0'
    );
sda_out_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sda_out_reg_n_0,
      I1 => lb_stim_sda_out,
      O => \^sda_out_out\
    );
sda_out_reg: unisim.vcomponents.FDSE
     port map (
      C => clk62p5,
      CE => '1',
      D => sda_out_i_1_n_0,
      Q => sda_out_reg_n_0,
      S => coldata_i2c_v1_0_S00_AXI_inst_n_1
    );
\sda_out_sh_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(0),
      Q => \sda_out_sh_reg_n_0_[0]\,
      R => '0'
    );
\sda_out_sh_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(10),
      Q => \sda_out_sh_reg_n_0_[10]\,
      R => '0'
    );
\sda_out_sh_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(11),
      Q => \sda_out_sh_reg_n_0_[11]\,
      R => '0'
    );
\sda_out_sh_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(12),
      Q => \sda_out_sh_reg_n_0_[12]\,
      R => '0'
    );
\sda_out_sh_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(13),
      Q => \sda_out_sh_reg_n_0_[13]\,
      R => '0'
    );
\sda_out_sh_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(14),
      Q => \sda_out_sh_reg_n_0_[14]\,
      R => '0'
    );
\sda_out_sh_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(15),
      Q => \sda_out_sh_reg_n_0_[15]\,
      R => '0'
    );
\sda_out_sh_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(16),
      Q => \sda_out_sh_reg_n_0_[16]\,
      R => '0'
    );
\sda_out_sh_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(17),
      Q => \sda_out_sh_reg_n_0_[17]\,
      R => '0'
    );
\sda_out_sh_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(18),
      Q => \sda_out_sh_reg_n_0_[18]\,
      R => '0'
    );
\sda_out_sh_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(19),
      Q => \sda_out_sh_reg_n_0_[19]\,
      R => '0'
    );
\sda_out_sh_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(1),
      Q => \sda_out_sh_reg_n_0_[1]\,
      R => '0'
    );
\sda_out_sh_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(20),
      Q => \sda_out_sh_reg_n_0_[20]\,
      R => '0'
    );
\sda_out_sh_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(21),
      Q => \sda_out_sh_reg_n_0_[21]\,
      R => '0'
    );
\sda_out_sh_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(22),
      Q => \sda_out_sh_reg_n_0_[22]\,
      R => '0'
    );
\sda_out_sh_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(23),
      Q => \sda_out_sh_reg_n_0_[23]\,
      R => '0'
    );
\sda_out_sh_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(24),
      Q => \sda_out_sh_reg_n_0_[24]\,
      R => '0'
    );
\sda_out_sh_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(25),
      Q => \sda_out_sh_reg_n_0_[25]\,
      R => '0'
    );
\sda_out_sh_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(26),
      Q => \sda_out_sh_reg_n_0_[26]\,
      R => '0'
    );
\sda_out_sh_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(2),
      Q => \sda_out_sh_reg_n_0_[2]\,
      R => '0'
    );
\sda_out_sh_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(3),
      Q => \sda_out_sh_reg_n_0_[3]\,
      R => '0'
    );
\sda_out_sh_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(4),
      Q => \sda_out_sh_reg_n_0_[4]\,
      R => '0'
    );
\sda_out_sh_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(5),
      Q => \sda_out_sh_reg_n_0_[5]\,
      R => '0'
    );
\sda_out_sh_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(6),
      Q => \sda_out_sh_reg_n_0_[6]\,
      R => '0'
    );
\sda_out_sh_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(7),
      Q => \sda_out_sh_reg_n_0_[7]\,
      R => '0'
    );
\sda_out_sh_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(8),
      Q => \sda_out_sh_reg_n_0_[8]\,
      R => '0'
    );
\sda_out_sh_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk62p5,
      CE => \bit_count[4]_i_1_n_0\,
      D => sda_out_sh(9),
      Q => \sda_out_sh_reg_n_0_[9]\,
      R => '0'
    );
\tx_start_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => wr_reg0(0),
      Q => \tx_start_r_reg_n_0_[0]\,
      R => coldata_i2c_v1_0_S00_AXI_inst_n_1
    );
\tx_start_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => \tx_start_r_reg_n_0_[0]\,
      Q => \tx_start_r_reg_n_0_[1]\,
      R => coldata_i2c_v1_0_S00_AXI_inst_n_1
    );
\tx_start_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => \tx_start_r_reg_n_0_[1]\,
      Q => p_0_in(0),
      R => coldata_i2c_v1_0_S00_AXI_inst_n_1
    );
\tx_start_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk62p5,
      CE => '1',
      D => p_0_in(0),
      Q => p_0_in(1),
      R => coldata_i2c_v1_0_S00_AXI_inst_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_coldata_i2c_0_3 is
  port (
    scl : out STD_LOGIC;
    scl_out : out STD_LOGIC;
    sda_out_p : out STD_LOGIC;
    sda_out_n : out STD_LOGIC;
    sda_in_p : in STD_LOGIC;
    sda_in_n : in STD_LOGIC;
    sda_in_out : out STD_LOGIC;
    sda_out_out : out STD_LOGIC;
    clk62p5 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_coldata_i2c_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_coldata_i2c_0_3 : entity is "design_1_coldata_i2c_0_0,coldata_i2c_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_coldata_i2c_0_3 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_coldata_i2c_0_3 : entity is "coldata_i2c_v1_0,Vivado 2020.1";
end design_1_coldata_i2c_0_3;

architecture STRUCTURE of design_1_coldata_i2c_0_3 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_coldata_i2c_0_3_coldata_i2c_v1_0
     port map (
      clk62p5 => clk62p5,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      scl => scl,
      scl_out => scl_out,
      sda_in_n => sda_in_n,
      sda_in_out => sda_in_out,
      sda_in_p => sda_in_p,
      sda_out_n => sda_out_n,
      sda_out_out => sda_out_out,
      sda_out_p => sda_out_p
    );
end STRUCTURE;
