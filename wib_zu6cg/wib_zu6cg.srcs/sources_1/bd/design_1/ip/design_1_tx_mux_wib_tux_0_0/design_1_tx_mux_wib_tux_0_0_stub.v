// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Nov 23 14:30:29 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_tx_mux_wib_tux_0_0/design_1_tx_mux_wib_tux_0_0_stub.v
// Design      : design_1_tx_mux_wib_tux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tx_mux_wib_tux,Vivado 2020.1" *)
module design_1_tx_mux_wib_tux_0_0(S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWADDR, 
  S_AXI_AWPROT, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WVALID, 
  S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARPROT, 
  S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, S_AXI_RREADY, eth_tx_p, 
  eth_tx_n, eth_rx_p, eth_rx_n, eth_clk_p, eth_clk_n, clk, rst, d0, d0_valid, d0_last, d1, d1_valid, 
  d1_last, d2, d2_valid, d2_last, d3, d3_valid, d3_last, d4, d4_valid, d4_last, d5, d5_valid, d5_last, d6, 
  d6_valid, d6_last, d7, d7_valid, d7_last)
/* synthesis syn_black_box black_box_pad_pin="S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[7:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB,S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[7:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,eth_tx_p,eth_tx_n,eth_rx_p,eth_rx_n,eth_clk_p,eth_clk_n,clk,rst,d0[63:0],d0_valid,d0_last,d1[63:0],d1_valid,d1_last,d2[63:0],d2_valid,d2_last,d3[63:0],d3_valid,d3_last,d4[63:0],d4_valid,d4_last,d5[63:0],d5_valid,d5_last,d6[63:0],d6_valid,d6_last,d7[63:0],d7_valid,d7_last" */;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [7:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [7:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output eth_tx_p;
  output eth_tx_n;
  input eth_rx_p;
  input eth_rx_n;
  input eth_clk_p;
  input eth_clk_n;
  input clk;
  input rst;
  input [63:0]d0;
  input d0_valid;
  input d0_last;
  input [63:0]d1;
  input d1_valid;
  input d1_last;
  input [63:0]d2;
  input d2_valid;
  input d2_last;
  input [63:0]d3;
  input d3_valid;
  input d3_last;
  input [63:0]d4;
  input d4_valid;
  input d4_last;
  input [63:0]d5;
  input d5_valid;
  input d5_last;
  input [63:0]d6;
  input d6_valid;
  input d6_last;
  input [63:0]d7;
  input d7_valid;
  input d7_last;
endmodule
