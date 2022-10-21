// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Oct 21 11:48:34 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_dyn_phase_adjust_0_0/design_1_dyn_phase_adjust_0_0_stub.v
// Design      : design_1_dyn_phase_adjust_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dyn_phase_adjust,Vivado 2020.1" *)
module design_1_dyn_phase_adjust_0_0(clk, psen_in, psen, psincdec)
/* synthesis syn_black_box black_box_pad_pin="clk,psen_in,psen,psincdec" */;
  input clk;
  input psen_in;
  output psen;
  output psincdec;
endmodule
