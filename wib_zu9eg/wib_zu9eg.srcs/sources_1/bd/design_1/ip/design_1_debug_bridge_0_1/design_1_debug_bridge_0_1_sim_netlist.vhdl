-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Wed Feb 10 15:29:10 2021
-- Host        : endcap-tf1.phys.ufl.edu running 64-bit CentOS Linux release 7.8.2003 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/madorsky/github/wib_sim/wib_zu9eg/wib_zu9eg.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_1/design_1_debug_bridge_0_1_sim_netlist.vhdl
-- Design      : design_1_debug_bridge_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_debug_bridge_0_1_bd_0482 is
  port (
    S_BSCAN_bscanid_en : in STD_LOGIC;
    S_BSCAN_capture : in STD_LOGIC;
    S_BSCAN_drck : in STD_LOGIC;
    S_BSCAN_reset : in STD_LOGIC;
    S_BSCAN_runtest : in STD_LOGIC;
    S_BSCAN_sel : in STD_LOGIC;
    S_BSCAN_shift : in STD_LOGIC;
    S_BSCAN_tck : in STD_LOGIC;
    S_BSCAN_tdi : in STD_LOGIC;
    S_BSCAN_tdo : out STD_LOGIC;
    S_BSCAN_tms : in STD_LOGIC;
    S_BSCAN_update : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1_debug_bridge_0_1_bd_0482 : entity is "design_1_debug_bridge_0_1.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_debug_bridge_0_1_bd_0482 : entity is "bd_0482";
end design_1_debug_bridge_0_1_bd_0482;

architecture STRUCTURE of design_1_debug_bridge_0_1_bd_0482 is
  component design_1_debug_bridge_0_1_bd_0482_lut_buffer_0 is
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
  end component design_1_debug_bridge_0_1_bd_0482_lut_buffer_0;
  component design_1_debug_bridge_0_1_bd_0482_xsdbm_0 is
  port (
    update : in STD_LOGIC;
    capture : in STD_LOGIC;
    reset : in STD_LOGIC;
    runtest : in STD_LOGIC;
    tck : in STD_LOGIC;
    tms : in STD_LOGIC;
    tdi : in STD_LOGIC;
    sel : in STD_LOGIC;
    shift : in STD_LOGIC;
    drck : in STD_LOGIC;
    tdo : out STD_LOGIC;
    bscanid_en : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  end component design_1_debug_bridge_0_1_bd_0482_xsdbm_0;
  signal lut_buffer_m_bscan_BSCANID_EN : STD_LOGIC;
  signal lut_buffer_m_bscan_CAPTURE : STD_LOGIC;
  signal lut_buffer_m_bscan_DRCK : STD_LOGIC;
  signal lut_buffer_m_bscan_RESET : STD_LOGIC;
  signal lut_buffer_m_bscan_RUNTEST : STD_LOGIC;
  signal lut_buffer_m_bscan_SEL : STD_LOGIC;
  signal lut_buffer_m_bscan_SHIFT : STD_LOGIC;
  signal lut_buffer_m_bscan_TCK : STD_LOGIC;
  signal lut_buffer_m_bscan_TDI : STD_LOGIC;
  signal lut_buffer_m_bscan_TDO : STD_LOGIC;
  signal lut_buffer_m_bscan_TMS : STD_LOGIC;
  signal lut_buffer_m_bscan_UPDATE : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of lut_buffer : label is "lut_buffer_v2_0_0_lut_buffer,Vivado 2020.1";
  attribute X_CORE_INFO of xsdbm : label is "xsdbm_v3_0_0_xsdbm,Vivado 2020.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_BSCAN_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN";
  attribute X_INTERFACE_INFO of S_BSCAN_capture : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE";
  attribute X_INTERFACE_INFO of S_BSCAN_drck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK";
  attribute X_INTERFACE_INFO of S_BSCAN_reset : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RESET";
  attribute X_INTERFACE_INFO of S_BSCAN_runtest : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST";
  attribute X_INTERFACE_INFO of S_BSCAN_sel : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SEL";
  attribute X_INTERFACE_INFO of S_BSCAN_shift : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT";
  attribute X_INTERFACE_INFO of S_BSCAN_tck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TCK";
  attribute X_INTERFACE_INFO of S_BSCAN_tdi : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDI";
  attribute X_INTERFACE_INFO of S_BSCAN_tdo : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDO";
  attribute X_INTERFACE_INFO of S_BSCAN_tms : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TMS";
  attribute X_INTERFACE_INFO of S_BSCAN_update : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
lut_buffer: component design_1_debug_bridge_0_1_bd_0482_lut_buffer_0
     port map (
      bscanid_en_i => S_BSCAN_bscanid_en,
      bscanid_en_o => lut_buffer_m_bscan_BSCANID_EN,
      capture_i => S_BSCAN_capture,
      capture_o => lut_buffer_m_bscan_CAPTURE,
      drck_i => S_BSCAN_drck,
      drck_o => lut_buffer_m_bscan_DRCK,
      reset_i => S_BSCAN_reset,
      reset_o => lut_buffer_m_bscan_RESET,
      runtest_i => S_BSCAN_runtest,
      runtest_o => lut_buffer_m_bscan_RUNTEST,
      sel_i => S_BSCAN_sel,
      sel_o => lut_buffer_m_bscan_SEL,
      shift_i => S_BSCAN_shift,
      shift_o => lut_buffer_m_bscan_SHIFT,
      tck_i => S_BSCAN_tck,
      tck_o => lut_buffer_m_bscan_TCK,
      tdi_i => S_BSCAN_tdi,
      tdi_o => lut_buffer_m_bscan_TDI,
      tdo_i => lut_buffer_m_bscan_TDO,
      tdo_o => S_BSCAN_tdo,
      tms_i => S_BSCAN_tms,
      tms_o => lut_buffer_m_bscan_TMS,
      update_i => S_BSCAN_update,
      update_o => lut_buffer_m_bscan_UPDATE
    );
xsdbm: component design_1_debug_bridge_0_1_bd_0482_xsdbm_0
     port map (
      bscanid_en => lut_buffer_m_bscan_BSCANID_EN,
      capture => lut_buffer_m_bscan_CAPTURE,
      clk => clk,
      drck => lut_buffer_m_bscan_DRCK,
      reset => lut_buffer_m_bscan_RESET,
      runtest => lut_buffer_m_bscan_RUNTEST,
      sel => lut_buffer_m_bscan_SEL,
      shift => lut_buffer_m_bscan_SHIFT,
      tck => lut_buffer_m_bscan_TCK,
      tdi => lut_buffer_m_bscan_TDI,
      tdo => lut_buffer_m_bscan_TDO,
      tms => lut_buffer_m_bscan_TMS,
      update => lut_buffer_m_bscan_UPDATE
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_debug_bridge_0_1 is
  port (
    clk : in STD_LOGIC;
    S_BSCAN_bscanid_en : in STD_LOGIC;
    S_BSCAN_capture : in STD_LOGIC;
    S_BSCAN_drck : in STD_LOGIC;
    S_BSCAN_reset : in STD_LOGIC;
    S_BSCAN_runtest : in STD_LOGIC;
    S_BSCAN_sel : in STD_LOGIC;
    S_BSCAN_shift : in STD_LOGIC;
    S_BSCAN_tck : in STD_LOGIC;
    S_BSCAN_tdi : in STD_LOGIC;
    S_BSCAN_tdo : out STD_LOGIC;
    S_BSCAN_tms : in STD_LOGIC;
    S_BSCAN_update : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_debug_bridge_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_debug_bridge_0_1 : entity is "design_1_debug_bridge_0_1,bd_0482,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_debug_bridge_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_debug_bridge_0_1 : entity is "bd_0482,Vivado 2020.1";
end design_1_debug_bridge_0_1;

architecture STRUCTURE of design_1_debug_bridge_0_1 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "design_1_debug_bridge_0_1.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_BSCAN_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN";
  attribute X_INTERFACE_INFO of S_BSCAN_capture : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE";
  attribute X_INTERFACE_INFO of S_BSCAN_drck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK";
  attribute X_INTERFACE_INFO of S_BSCAN_reset : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RESET";
  attribute X_INTERFACE_INFO of S_BSCAN_runtest : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST";
  attribute X_INTERFACE_INFO of S_BSCAN_sel : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SEL";
  attribute X_INTERFACE_INFO of S_BSCAN_shift : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT";
  attribute X_INTERFACE_INFO of S_BSCAN_tck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TCK";
  attribute X_INTERFACE_INFO of S_BSCAN_tdi : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDI";
  attribute X_INTERFACE_INFO of S_BSCAN_tdo : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDO";
  attribute X_INTERFACE_INFO of S_BSCAN_tms : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TMS";
  attribute X_INTERFACE_INFO of S_BSCAN_update : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
begin
inst: entity work.design_1_debug_bridge_0_1_bd_0482
     port map (
      S_BSCAN_bscanid_en => S_BSCAN_bscanid_en,
      S_BSCAN_capture => S_BSCAN_capture,
      S_BSCAN_drck => S_BSCAN_drck,
      S_BSCAN_reset => S_BSCAN_reset,
      S_BSCAN_runtest => S_BSCAN_runtest,
      S_BSCAN_sel => S_BSCAN_sel,
      S_BSCAN_shift => S_BSCAN_shift,
      S_BSCAN_tck => S_BSCAN_tck,
      S_BSCAN_tdi => S_BSCAN_tdi,
      S_BSCAN_tdo => S_BSCAN_tdo,
      S_BSCAN_tms => S_BSCAN_tms,
      S_BSCAN_update => S_BSCAN_update,
      clk => clk
    );
end STRUCTURE;
