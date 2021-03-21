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


// IP VLNV: xilinx.com:module_ref:daq_spy_control:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_daq_spy_control_0_1 (
  daq_stream,
  daq_stream_k,
  daq_data_type,
  daq_clk,
  bram_addr,
  bram_clk,
  bram_din,
  bram_en,
  bram_rst,
  bram_we,
  time_stamp,
  clk65p5,
  reset,
  full,
  state,
  trigger,
  rec_time
);

input wire [31 : 0] daq_stream;
input wire [3 : 0] daq_stream_k;
input wire [1 : 0] daq_data_type;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME daq_clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_daq_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 daq_clk CLK" *)
input wire daq_clk;
output wire [19 : 0] bram_addr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_clk, ASSOCIATED_RESET bram_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_daq_spy_control_0_1_bram_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 bram_clk CLK" *)
output wire bram_clk;
output wire [31 : 0] bram_din;
output wire bram_en;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bram_rst RST" *)
output wire bram_rst;
output wire [3 : 0] bram_we;
input wire [63 : 0] time_stamp;
input wire clk65p5;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
output wire full;
output wire [2 : 0] state;
input wire trigger;
input wire [17 : 0] rec_time;

  daq_spy_control #(
    .IDLE(3'B000),
    .IDLE_CHECK(3'B001),
    .RECORD(3'B010),
    .LAST(3'B011),
    .FULL(3'B100),
    .FRAME_LNG(20'H001E0),
    .DT_INTERMEDIATE(2'B00),
    .DT_FIRST(2'B01),
    .DT_LAST(2'B10),
    .DT_IGNORE(2'B11)
  ) inst (
    .daq_stream(daq_stream),
    .daq_stream_k(daq_stream_k),
    .daq_data_type(daq_data_type),
    .daq_clk(daq_clk),
    .bram_addr(bram_addr),
    .bram_clk(bram_clk),
    .bram_din(bram_din),
    .bram_en(bram_en),
    .bram_rst(bram_rst),
    .bram_we(bram_we),
    .time_stamp(time_stamp),
    .clk65p5(clk65p5),
    .reset(reset),
    .full(full),
    .state(state),
    .trigger(trigger),
    .rec_time(rec_time)
  );
endmodule
