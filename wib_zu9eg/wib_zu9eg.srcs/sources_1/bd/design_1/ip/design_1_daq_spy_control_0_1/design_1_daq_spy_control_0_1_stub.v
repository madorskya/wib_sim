// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Fri Jan 29 00:19:34 2021
// Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/github/wib_sim/wib_zu9eg/wib_zu9eg.srcs/sources_1/bd/design_1/ip/design_1_daq_spy_control_0_1/design_1_daq_spy_control_0_1_stub.v
// Design      : design_1_daq_spy_control_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "daq_spy_control,Vivado 2020.1.1_AR73018" *)
module design_1_daq_spy_control_0_1(daq_stream, daq_stream_k, daq_clk, bram_addr, 
  bram_clk, bram_din, bram_en, bram_rst, bram_we, time_stamp, clk65p5, reset, full, state)
/* synthesis syn_black_box black_box_pad_pin="daq_stream[31:0],daq_stream_k[3:0],daq_clk,bram_addr[19:0],bram_clk,bram_din[31:0],bram_en,bram_rst,bram_we[3:0],time_stamp[63:0],clk65p5,reset,full,state[2:0]" */;
  input [31:0]daq_stream;
  input [3:0]daq_stream_k;
  input daq_clk;
  output [19:0]bram_addr;
  output bram_clk;
  output [31:0]bram_din;
  output bram_en;
  output bram_rst;
  output [3:0]bram_we;
  input [63:0]time_stamp;
  input clk65p5;
  input reset;
  output full;
  output [2:0]state;
endmodule
