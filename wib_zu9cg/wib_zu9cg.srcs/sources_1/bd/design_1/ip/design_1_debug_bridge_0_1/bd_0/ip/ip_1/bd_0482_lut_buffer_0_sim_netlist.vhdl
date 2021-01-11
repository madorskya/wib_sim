-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
-- Date        : Sat Jan  9 23:48:28 2021
-- Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/github/wib_sim/wib_zu9cg/wib_zu9cg.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_1/bd_0/ip/ip_1/bd_0482_lut_buffer_0_sim_netlist.vhdl
-- Design      : bd_0482_lut_buffer_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0482_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer is
  port (
    tms_i : in STD_LOGIC;
    tdi_i : in STD_LOGIC;
    tck_i : in STD_LOGIC;
    capture_i : in STD_LOGIC;
    runtest_i : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    shift_i : in STD_LOGIC;
    sel_i : in STD_LOGIC;
    update_i : in STD_LOGIC;
    drck_i : in STD_LOGIC;
    bscanid_en_i : in STD_LOGIC;
    bscanid_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tdo_o : out STD_LOGIC;
    tms_o : out STD_LOGIC;
    tdi_o : out STD_LOGIC;
    tck_o : out STD_LOGIC;
    capture_o : out STD_LOGIC;
    runtest_o : out STD_LOGIC;
    reset_o : out STD_LOGIC;
    shift_o : out STD_LOGIC;
    sel_o : out STD_LOGIC;
    update_o : out STD_LOGIC;
    drck_o : out STD_LOGIC;
    bscanid_en_o : out STD_LOGIC;
    bscanid_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tdo_i : in STD_LOGIC
  );
  attribute C_EN_BSCANID_VEC : integer;
  attribute C_EN_BSCANID_VEC of bd_0482_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0482_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer : entity is "lut_buffer_v2_0_0_lut_buffer";
  attribute dont_touch : string;
  attribute dont_touch of bd_0482_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer : entity is "true";
end bd_0482_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer;

architecture STRUCTURE of bd_0482_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer is
  signal \<const0>\ : STD_LOGIC;
  signal \^bscanid_en_i\ : STD_LOGIC;
  signal \^capture_i\ : STD_LOGIC;
  signal \^drck_i\ : STD_LOGIC;
  signal \^reset_i\ : STD_LOGIC;
  signal \^runtest_i\ : STD_LOGIC;
  signal \^sel_i\ : STD_LOGIC;
  signal \^shift_i\ : STD_LOGIC;
  signal \^tck_i\ : STD_LOGIC;
  signal \^tdi_i\ : STD_LOGIC;
  signal \^tms_i\ : STD_LOGIC;
  signal \^update_i\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_tdo : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean : boolean;
  attribute DONT_TOUCH_boolean of u_tdo : label is std.standard.true;
begin
  \^bscanid_en_i\ <= bscanid_en_i;
  \^capture_i\ <= capture_i;
  \^drck_i\ <= drck_i;
  \^reset_i\ <= reset_i;
  \^runtest_i\ <= runtest_i;
  \^sel_i\ <= sel_i;
  \^shift_i\ <= shift_i;
  \^tck_i\ <= tck_i;
  \^tdi_i\ <= tdi_i;
  \^tms_i\ <= tms_i;
  \^update_i\ <= update_i;
  bscanid_en_o <= \^bscanid_en_i\;
  bscanid_o(31) <= \<const0>\;
  bscanid_o(30) <= \<const0>\;
  bscanid_o(29) <= \<const0>\;
  bscanid_o(28) <= \<const0>\;
  bscanid_o(27) <= \<const0>\;
  bscanid_o(26) <= \<const0>\;
  bscanid_o(25) <= \<const0>\;
  bscanid_o(24) <= \<const0>\;
  bscanid_o(23) <= \<const0>\;
  bscanid_o(22) <= \<const0>\;
  bscanid_o(21) <= \<const0>\;
  bscanid_o(20) <= \<const0>\;
  bscanid_o(19) <= \<const0>\;
  bscanid_o(18) <= \<const0>\;
  bscanid_o(17) <= \<const0>\;
  bscanid_o(16) <= \<const0>\;
  bscanid_o(15) <= \<const0>\;
  bscanid_o(14) <= \<const0>\;
  bscanid_o(13) <= \<const0>\;
  bscanid_o(12) <= \<const0>\;
  bscanid_o(11) <= \<const0>\;
  bscanid_o(10) <= \<const0>\;
  bscanid_o(9) <= \<const0>\;
  bscanid_o(8) <= \<const0>\;
  bscanid_o(7) <= \<const0>\;
  bscanid_o(6) <= \<const0>\;
  bscanid_o(5) <= \<const0>\;
  bscanid_o(4) <= \<const0>\;
  bscanid_o(3) <= \<const0>\;
  bscanid_o(2) <= \<const0>\;
  bscanid_o(1) <= \<const0>\;
  bscanid_o(0) <= \<const0>\;
  capture_o <= \^capture_i\;
  drck_o <= \^drck_i\;
  reset_o <= \^reset_i\;
  runtest_o <= \^runtest_i\;
  sel_o <= \^sel_i\;
  shift_o <= \^shift_i\;
  tck_o <= \^tck_i\;
  tdi_o <= \^tdi_i\;
  tms_o <= \^tms_i\;
  update_o <= \^update_i\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
u_tdo: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tdo_i,
      O => tdo_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0482_lut_buffer_0 is
  port (
    tdi_i : in STD_LOGIC;
    tms_i : in STD_LOGIC;
    tck_i : in STD_LOGIC;
    drck_i : in STD_LOGIC;
    sel_i : in STD_LOGIC;
    shift_i : in STD_LOGIC;
    update_i : in STD_LOGIC;
    capture_i : in STD_LOGIC;
    runtest_i : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    bscanid_en_i : in STD_LOGIC;
    tdo_o : out STD_LOGIC;
    tdi_o : out STD_LOGIC;
    tms_o : out STD_LOGIC;
    tck_o : out STD_LOGIC;
    drck_o : out STD_LOGIC;
    sel_o : out STD_LOGIC;
    shift_o : out STD_LOGIC;
    update_o : out STD_LOGIC;
    capture_o : out STD_LOGIC;
    runtest_o : out STD_LOGIC;
    reset_o : out STD_LOGIC;
    bscanid_en_o : out STD_LOGIC;
    tdo_i : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0482_lut_buffer_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0482_lut_buffer_0 : entity is "bd_0482_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0482_lut_buffer_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_0482_lut_buffer_0 : entity is "lut_buffer_v2_0_0_lut_buffer,Vivado 2020.1.1_AR73018";
end bd_0482_lut_buffer_0;

architecture STRUCTURE of bd_0482_lut_buffer_0 is
  signal NLW_inst_bscanid_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_EN_BSCANID_VEC : integer;
  attribute C_EN_BSCANID_VEC of inst : label is 0;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inst : label is std.standard.true;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of bscanid_en_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN";
  attribute X_INTERFACE_INFO of bscanid_en_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN";
  attribute X_INTERFACE_INFO of capture_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE";
  attribute X_INTERFACE_INFO of capture_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE";
  attribute X_INTERFACE_INFO of drck_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan DRCK";
  attribute X_INTERFACE_INFO of drck_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan DRCK";
  attribute X_INTERFACE_INFO of reset_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan RESET";
  attribute X_INTERFACE_INFO of reset_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan RESET";
  attribute X_INTERFACE_INFO of runtest_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST";
  attribute X_INTERFACE_INFO of runtest_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST";
  attribute X_INTERFACE_INFO of sel_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan SEL";
  attribute X_INTERFACE_INFO of sel_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan SEL";
  attribute X_INTERFACE_INFO of shift_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan SHIFT";
  attribute X_INTERFACE_INFO of shift_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan SHIFT";
  attribute X_INTERFACE_INFO of tck_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan TCK";
  attribute X_INTERFACE_INFO of tck_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan TCK";
  attribute X_INTERFACE_INFO of tdi_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan TDI";
  attribute X_INTERFACE_INFO of tdi_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan TDI";
  attribute X_INTERFACE_INFO of tdo_i : signal is "xilinx.com:interface:bscan:1.0 m_bscan TDO";
  attribute X_INTERFACE_INFO of tdo_o : signal is "xilinx.com:interface:bscan:1.0 s_bscan TDO";
  attribute X_INTERFACE_INFO of tms_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan TMS";
  attribute X_INTERFACE_INFO of tms_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan TMS";
  attribute X_INTERFACE_INFO of update_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan UPDATE";
  attribute X_INTERFACE_INFO of update_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan UPDATE";
begin
inst: entity work.bd_0482_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer
     port map (
      bscanid_en_i => bscanid_en_i,
      bscanid_en_o => bscanid_en_o,
      bscanid_i(31 downto 0) => B"00000000000000000000000000000000",
      bscanid_o(31 downto 0) => NLW_inst_bscanid_o_UNCONNECTED(31 downto 0),
      capture_i => capture_i,
      capture_o => capture_o,
      drck_i => drck_i,
      drck_o => drck_o,
      reset_i => reset_i,
      reset_o => reset_o,
      runtest_i => runtest_i,
      runtest_o => runtest_o,
      sel_i => sel_i,
      sel_o => sel_o,
      shift_i => shift_i,
      shift_o => shift_o,
      tck_i => tck_i,
      tck_o => tck_o,
      tdi_i => tdi_i,
      tdi_o => tdi_o,
      tdo_i => tdo_i,
      tdo_o => tdo_o,
      tms_i => tms_i,
      tms_o => tms_o,
      update_i => update_i,
      update_o => update_o
    );
end STRUCTURE;
