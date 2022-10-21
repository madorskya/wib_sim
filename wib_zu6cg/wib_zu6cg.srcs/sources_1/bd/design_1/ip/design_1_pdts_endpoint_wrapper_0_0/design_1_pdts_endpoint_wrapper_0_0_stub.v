// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Oct 21 12:58:34 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_pdts_endpoint_wrapper_0_0/design_1_pdts_endpoint_wrapper_0_0_stub.v
// Design      : design_1_pdts_endpoint_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pdts_endpoint_wrapper,Vivado 2020.1" *)
module design_1_pdts_endpoint_wrapper_0_0(sclk, srst, addr, tgrp, ts_clk_sel, rec_clk, rec_d, 
  sfp_los, cdr_los, cdr_lol, pll_locked, stat, clk, clkx2, rst, rdy, sync, sync_stb, sync_first, tstamp, txd, 
  tx_dis)
/* synthesis syn_black_box black_box_pad_pin="sclk,srst,addr[15:0],tgrp[1:0],ts_clk_sel,rec_clk,rec_d,sfp_los,cdr_los,cdr_lol,pll_locked,stat[3:0],clk,clkx2,rst,rdy,sync[7:0],sync_stb,sync_first,tstamp[63:0],txd,tx_dis" */;
  input sclk;
  input srst;
  input [15:0]addr;
  input [1:0]tgrp;
  input ts_clk_sel;
  input rec_clk;
  input rec_d;
  input sfp_los;
  input cdr_los;
  input cdr_lol;
  input pll_locked;
  output [3:0]stat;
  output clk;
  output clkx2;
  output rst;
  output rdy;
  output [7:0]sync;
  output sync_stb;
  output sync_first;
  output [63:0]tstamp;
  output txd;
  output tx_dis;
endmodule
