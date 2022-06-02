// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Jun  1 11:29:38 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_pdts_endpoint_stdlog_0_0/design_1_pdts_endpoint_stdlog_0_0_stub.v
// Design      : design_1_pdts_endpoint_stdlog_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pdts_endpoint_stdlogic,Vivado 2020.1" *)
module design_1_pdts_endpoint_stdlog_0_0(sclk, srst, addr, tgrp, stat, rec_clk, rec_d, sfp_los, 
  cdr_los, cdr_lol, pll_locked, clk, rst, rdy, sync, sync_stb, sync_first, tstamp, debug, txd, tx_dis)
/* synthesis syn_black_box black_box_pad_pin="sclk,srst,addr[7:0],tgrp[1:0],stat[3:0],rec_clk,rec_d,sfp_los,cdr_los,cdr_lol,pll_locked,clk,rst,rdy,sync[3:0],sync_stb,sync_first,tstamp[63:0],debug[31:0],txd,tx_dis" */;
  input sclk;
  input srst;
  input [7:0]addr;
  input [1:0]tgrp;
  output [3:0]stat;
  input rec_clk;
  input rec_d;
  input sfp_los;
  input cdr_los;
  input cdr_lol;
  input pll_locked;
  output clk;
  output rst;
  output rdy;
  output [3:0]sync;
  output sync_stb;
  output sync_first;
  output [63:0]tstamp;
  output [31:0]debug;
  output txd;
  output tx_dis;
endmodule
