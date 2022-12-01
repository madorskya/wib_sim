// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Nov 29 09:37:28 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/ip/ila_3/ila_3_stub.v
// Design      : ila_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.1" *)
module ila_3(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, 
  probe18)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[2:0],probe1[0:0],probe2[3:0],probe3[1:0],probe4[1:0],probe5[1:0],probe6[1:0],probe7[1:0],probe8[15:0],probe9[15:0],probe10[3:0],probe11[6:0],probe12[2:0],probe13[0:0],probe14[63:0],probe15[5:0],probe16[63:0],probe17[0:0],probe18[0:0]" */;
  input clk;
  input [2:0]probe0;
  input [0:0]probe1;
  input [3:0]probe2;
  input [1:0]probe3;
  input [1:0]probe4;
  input [1:0]probe5;
  input [1:0]probe6;
  input [1:0]probe7;
  input [15:0]probe8;
  input [15:0]probe9;
  input [3:0]probe10;
  input [6:0]probe11;
  input [2:0]probe12;
  input [0:0]probe13;
  input [63:0]probe14;
  input [5:0]probe15;
  input [63:0]probe16;
  input [0:0]probe17;
  input [0:0]probe18;
endmodule
