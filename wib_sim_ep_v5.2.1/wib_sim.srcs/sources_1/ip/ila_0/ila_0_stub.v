// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Nov  4 14:51:38 2020
// Host        : lxeng99 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/lxeng99/DUNE/wib_sim_timing/wib_sim_ep_v5.2.1/wib_sim.srcs/sources_1/ip/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.1.1_AR73018" *)
module ila_0(clk, probe0, probe1)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[15:0],probe1[1:0]" */;
  input clk;
  input [15:0]probe0;
  input [1:0]probe1;
endmodule
