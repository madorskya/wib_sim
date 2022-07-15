-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jul 14 10:46:04 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_dyn_phase_adjust_0_0/design_1_dyn_phase_adjust_0_0_sim_netlist.vhdl
-- Design      : design_1_dyn_phase_adjust_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dyn_phase_adjust_0_0_dyn_phase_adjust is
  port (
    psen : out STD_LOGIC;
    psen_in : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dyn_phase_adjust_0_0_dyn_phase_adjust : entity is "dyn_phase_adjust";
end design_1_dyn_phase_adjust_0_0_dyn_phase_adjust;

architecture STRUCTURE of design_1_dyn_phase_adjust_0_0_dyn_phase_adjust is
  signal psen_i_1_n_0 : STD_LOGIC;
  signal psen_r : STD_LOGIC;
  signal psen_rr : STD_LOGIC;
begin
psen_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => psen_r,
      I1 => psen_rr,
      O => psen_i_1_n_0
    );
psen_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => psen_in,
      Q => psen_r,
      R => '0'
    );
psen_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => psen_i_1_n_0,
      Q => psen,
      R => '0'
    );
psen_rr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => psen_r,
      Q => psen_rr,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dyn_phase_adjust_0_0 is
  port (
    clk : in STD_LOGIC;
    psen_in : in STD_LOGIC;
    psen : out STD_LOGIC;
    psincdec : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_dyn_phase_adjust_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_dyn_phase_adjust_0_0 : entity is "design_1_dyn_phase_adjust_0_0,dyn_phase_adjust,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_dyn_phase_adjust_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_dyn_phase_adjust_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_dyn_phase_adjust_0_0 : entity is "dyn_phase_adjust,Vivado 2020.1";
end design_1_dyn_phase_adjust_0_0;

architecture STRUCTURE of design_1_dyn_phase_adjust_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_pdts_endpoint_stdlog_0_0_clk, INSERT_VIP 0";
begin
  psincdec <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_dyn_phase_adjust_0_0_dyn_phase_adjust
     port map (
      clk => clk,
      psen => psen,
      psen_in => psen_in
    );
end STRUCTURE;
