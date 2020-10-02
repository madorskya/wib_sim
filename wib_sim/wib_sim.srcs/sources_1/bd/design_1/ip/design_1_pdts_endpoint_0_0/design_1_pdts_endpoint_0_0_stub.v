// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Aug 23 18:51:09 2020
// Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_pdts_endpoint_0_0 -prefix
//               design_1_pdts_endpoint_0_0_ design_1_pdts_endpoint_0_0_stub.v
// Design      : design_1_pdts_endpoint_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pdts_endpoint,Vivado 2020.1" *)
module design_1_pdts_endpoint_0_0(sclk, srst, addr, tgrp, stat, rec_clk, rec_d_clk, 
  rec_d, rec_clk_locked, rec_clk_reset, sfp_los, cdr_los, cdr_lol, clk, rst, rdy, sync, sync_v, tstamp, 
  evtctr)
/* synthesis syn_black_box black_box_pad_pin="sclk,srst,addr[7:0],tgrp[1:0],stat[3:0],rec_clk,rec_d_clk,rec_d,rec_clk_locked,rec_clk_reset,sfp_los,cdr_los,cdr_lol,clk,rst,rdy,sync[3:0],sync_v,tstamp[63:0],evtctr[31:0]" */;
  input sclk;
  input srst;
  input [7:0]addr;
  input [1:0]tgrp;
  output [3:0]stat;
  input rec_clk;
  input rec_d_clk;
  input rec_d;
  input rec_clk_locked;
  output rec_clk_reset;
  input sfp_los;
  input cdr_los;
  input cdr_lol;
  output clk;
  output rst;
  output rdy;
  output [3:0]sync;
  output sync_v;
  output [63:0]tstamp;
  output [31:0]evtctr;
endmodule
