// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:ts_reclock:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ts_reclock_0_0 (
  stat_in,
  rst_in,
  rdy_in,
  sync_in,
  sync_stb_in,
  sync_first_in,
  tstamp_in,
  stat_out,
  rst_out,
  rdy_out,
  sync_out,
  sync_stb_out,
  sync_first_out,
  tstamp_out,
  ts_valid,
  clk62p5,
  fifo_rst,
  fifo_valid,
  cmd_code_idle,
  cmd_code_edge,
  cmd_code_sync,
  cmd_code_act,
  cmd_code_reset,
  cmd_code_adc_reset,
  cmd_bit_idle,
  cmd_bit_edge,
  cmd_bit_sync,
  cmd_bit_act,
  cmd_bit_reset,
  cmd_bit_adc_reset,
  fake_time_stamp_en,
  fake_time_stamp_init,
  state
);

input wire [3 : 0] stat_in;
input wire rst_in;
input wire rdy_in;
input wire [3 : 0] sync_in;
input wire sync_stb_in;
input wire sync_first_in;
input wire [63 : 0] tstamp_in;
output wire [3 : 0] stat_out;
output wire rst_out;
output wire rdy_out;
output wire [3 : 0] sync_out;
output wire sync_stb_out;
output wire sync_first_out;
output wire [63 : 0] tstamp_out;
output wire ts_valid;
input wire clk62p5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_rst RST" *)
input wire fifo_rst;
output wire fifo_valid;
input wire [7 : 0] cmd_code_idle;
input wire [7 : 0] cmd_code_edge;
input wire [7 : 0] cmd_code_sync;
input wire [7 : 0] cmd_code_act;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmd_code_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cmd_code_reset RST" *)
input wire [7 : 0] cmd_code_reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmd_code_adc_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cmd_code_adc_reset RST" *)
input wire [7 : 0] cmd_code_adc_reset;
output wire cmd_bit_idle;
output wire cmd_bit_edge;
output wire cmd_bit_sync;
output wire cmd_bit_act;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmd_bit_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cmd_bit_reset RST" *)
output wire cmd_bit_reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cmd_bit_adc_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cmd_bit_adc_reset RST" *)
output wire cmd_bit_adc_reset;
input wire fake_time_stamp_en;
input wire [63 : 0] fake_time_stamp_init;
output wire [1 : 0] state;

  ts_reclock inst (
    .stat_in(stat_in),
    .rst_in(rst_in),
    .rdy_in(rdy_in),
    .sync_in(sync_in),
    .sync_stb_in(sync_stb_in),
    .sync_first_in(sync_first_in),
    .tstamp_in(tstamp_in),
    .stat_out(stat_out),
    .rst_out(rst_out),
    .rdy_out(rdy_out),
    .sync_out(sync_out),
    .sync_stb_out(sync_stb_out),
    .sync_first_out(sync_first_out),
    .tstamp_out(tstamp_out),
    .ts_valid(ts_valid),
    .clk62p5(clk62p5),
    .fifo_rst(fifo_rst),
    .fifo_valid(fifo_valid),
    .cmd_code_idle(cmd_code_idle),
    .cmd_code_edge(cmd_code_edge),
    .cmd_code_sync(cmd_code_sync),
    .cmd_code_act(cmd_code_act),
    .cmd_code_reset(cmd_code_reset),
    .cmd_code_adc_reset(cmd_code_adc_reset),
    .cmd_bit_idle(cmd_bit_idle),
    .cmd_bit_edge(cmd_bit_edge),
    .cmd_bit_sync(cmd_bit_sync),
    .cmd_bit_act(cmd_bit_act),
    .cmd_bit_reset(cmd_bit_reset),
    .cmd_bit_adc_reset(cmd_bit_adc_reset),
    .fake_time_stamp_en(fake_time_stamp_en),
    .fake_time_stamp_init(fake_time_stamp_init),
    .state(state)
  );
endmodule
