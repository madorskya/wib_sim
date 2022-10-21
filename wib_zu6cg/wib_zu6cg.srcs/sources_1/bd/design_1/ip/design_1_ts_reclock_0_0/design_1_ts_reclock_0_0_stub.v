// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Oct 21 11:48:38 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_ts_reclock_0_0/design_1_ts_reclock_0_0_stub.v
// Design      : design_1_ts_reclock_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ts_reclock,Vivado 2020.1" *)
module design_1_ts_reclock_0_0(stat_in, rst_in, rdy_in, sync_in, sync_stb_in, 
  sync_first_in, tstamp_in, stat_out, rst_out, rdy_out, sync_out, sync_stb_out, sync_first_out, 
  tstamp_out, ts_valid, clk62p5, fifo_rst, fifo_valid, cmd_code_idle, cmd_code_edge, 
  cmd_code_sync, cmd_code_act, cmd_code_reset, cmd_code_adc_reset, cmd_code_trigger, 
  cmd_en_idle, cmd_en_edge, cmd_en_sync, cmd_en_act, cmd_en_reset, cmd_en_adc_reset, 
  cmd_en_trigger, cmd_bit_idle, cmd_bit_edge, cmd_bit_sync, cmd_bit_act, cmd_bit_reset, 
  cmd_bit_adc_reset, cmd_bit_trigger, fake_time_stamp_en, fake_time_stamp_init, 
  cmd_stamp_sync, cmd_stamp_sync_en)
/* synthesis syn_black_box black_box_pad_pin="stat_in[3:0],rst_in,rdy_in,sync_in[7:0],sync_stb_in,sync_first_in,tstamp_in[63:0],stat_out[3:0],rst_out,rdy_out,sync_out[7:0],sync_stb_out,sync_first_out,tstamp_out[63:0],ts_valid,clk62p5,fifo_rst,fifo_valid,cmd_code_idle[7:0],cmd_code_edge[7:0],cmd_code_sync[7:0],cmd_code_act[7:0],cmd_code_reset[7:0],cmd_code_adc_reset[7:0],cmd_code_trigger[7:0],cmd_en_idle,cmd_en_edge,cmd_en_sync,cmd_en_act,cmd_en_reset,cmd_en_adc_reset,cmd_en_trigger,cmd_bit_idle,cmd_bit_edge,cmd_bit_sync,cmd_bit_act,cmd_bit_reset,cmd_bit_adc_reset,cmd_bit_trigger,fake_time_stamp_en,fake_time_stamp_init[63:0],cmd_stamp_sync[14:0],cmd_stamp_sync_en" */;
  input [3:0]stat_in;
  input rst_in;
  input rdy_in;
  input [7:0]sync_in;
  input sync_stb_in;
  input sync_first_in;
  input [63:0]tstamp_in;
  output [3:0]stat_out;
  output rst_out;
  output rdy_out;
  output [7:0]sync_out;
  output sync_stb_out;
  output sync_first_out;
  output [63:0]tstamp_out;
  output ts_valid;
  input clk62p5;
  input fifo_rst;
  output fifo_valid;
  input [7:0]cmd_code_idle;
  input [7:0]cmd_code_edge;
  input [7:0]cmd_code_sync;
  input [7:0]cmd_code_act;
  input [7:0]cmd_code_reset;
  input [7:0]cmd_code_adc_reset;
  input [7:0]cmd_code_trigger;
  input cmd_en_idle;
  input cmd_en_edge;
  input cmd_en_sync;
  input cmd_en_act;
  input cmd_en_reset;
  input cmd_en_adc_reset;
  input cmd_en_trigger;
  output cmd_bit_idle;
  output cmd_bit_edge;
  output cmd_bit_sync;
  output cmd_bit_act;
  output cmd_bit_reset;
  output cmd_bit_adc_reset;
  output cmd_bit_trigger;
  input fake_time_stamp_en;
  input [63:0]fake_time_stamp_init;
  input [14:0]cmd_stamp_sync;
  input cmd_stamp_sync_en;
endmodule
