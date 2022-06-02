// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Jun  1 23:30:44 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/ip/ila_deframer/ila_deframer_stub.v
// Design      : ila_deframer
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.1" *)
module ila_deframer(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18, probe19)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[14:0],probe1[14:0],probe2[14:0],probe3[14:0],probe4[14:0],probe5[14:0],probe6[14:0],probe7[14:0],probe8[14:0],probe9[14:0],probe10[14:0],probe11[14:0],probe12[14:0],probe13[14:0],probe14[14:0],probe15[14:0],probe16[15:0],probe17[15:0],probe18[63:0],probe19[63:0]" */;
  input clk;
  input [14:0]probe0;
  input [14:0]probe1;
  input [14:0]probe2;
  input [14:0]probe3;
  input [14:0]probe4;
  input [14:0]probe5;
  input [14:0]probe6;
  input [14:0]probe7;
  input [14:0]probe8;
  input [14:0]probe9;
  input [14:0]probe10;
  input [14:0]probe11;
  input [14:0]probe12;
  input [14:0]probe13;
  input [14:0]probe14;
  input [14:0]probe15;
  input [15:0]probe16;
  input [15:0]probe17;
  input [63:0]probe18;
  input [63:0]probe19;
endmodule
