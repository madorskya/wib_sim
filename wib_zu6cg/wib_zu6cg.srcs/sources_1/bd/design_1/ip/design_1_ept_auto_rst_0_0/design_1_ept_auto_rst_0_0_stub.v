// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Jun  4 16:17:50 2021
// Host        : lxeng99 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/lxeng99/DUNE/wib_sim_timing_sync/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_ept_auto_rst_0_0/design_1_ept_auto_rst_0_0_stub.v
// Design      : design_1_ept_auto_rst_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ept_auto_rst,Vivado 2020.1" *)
module design_1_ept_auto_rst_0_0(stat_in, clk_in, srst_in, timeout, retry_in, 
  pass_thru, ept_auto_rst_in, rst_out, err_out)
/* synthesis syn_black_box black_box_pad_pin="stat_in[3:0],clk_in,srst_in,timeout[31:0],retry_in[3:0],pass_thru,ept_auto_rst_in,rst_out,err_out" */;
  input [3:0]stat_in;
  input clk_in;
  input srst_in;
  input [31:0]timeout;
  input [3:0]retry_in;
  input pass_thru;
  input ept_auto_rst_in;
  output rst_out;
  output err_out;
endmodule
