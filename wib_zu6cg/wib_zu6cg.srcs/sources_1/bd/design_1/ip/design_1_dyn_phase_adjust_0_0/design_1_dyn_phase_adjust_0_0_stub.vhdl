-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sun Dec  4 11:42:43 2022
-- Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_dyn_phase_adjust_0_0/design_1_dyn_phase_adjust_0_0_stub.vhdl
-- Design      : design_1_dyn_phase_adjust_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu6cg-ffvb1156-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_dyn_phase_adjust_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    psen_in : in STD_LOGIC;
    psen : out STD_LOGIC;
    psincdec : out STD_LOGIC
  );

end design_1_dyn_phase_adjust_0_0;

architecture stub of design_1_dyn_phase_adjust_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,psen_in,psen,psincdec";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dyn_phase_adjust,Vivado 2020.1";
begin
end;
