// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Oct 26 16:07:19 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_i2c_clk_phase_0/design_1_i2c_clk_phase_0_stub.v
// Design      : design_1_i2c_clk_phase_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_i2c_clk_phase_0(clk_out1, psclk, psen, psincdec, psdone, reset, 
  locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,psclk,psen,psincdec,psdone,reset,locked,clk_in1" */;
  output clk_out1;
  input psclk;
  input psen;
  input psincdec;
  output psdone;
  input reset;
  output locked;
  input clk_in1;
endmodule
