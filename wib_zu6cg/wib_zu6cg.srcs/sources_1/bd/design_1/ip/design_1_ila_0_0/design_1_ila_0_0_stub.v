// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Feb 21 13:57:34 2023
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madorsky/github/zynq/wib_felix/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_ila_0_0/design_1_ila_0_0_stub.v
// Design      : design_1_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.1.1_AR73018" *)
module design_1_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[3:0],probe2[19:0],probe3[31:0],probe4[0:0],probe5[3:0],probe6[0:0],probe7[2:0],probe8[0:0]" */;
  input clk;
  input [31:0]probe0;
  input [3:0]probe1;
  input [19:0]probe2;
  input [31:0]probe3;
  input [0:0]probe4;
  input [3:0]probe5;
  input [0:0]probe6;
  input [2:0]probe7;
  input [0:0]probe8;
endmodule
