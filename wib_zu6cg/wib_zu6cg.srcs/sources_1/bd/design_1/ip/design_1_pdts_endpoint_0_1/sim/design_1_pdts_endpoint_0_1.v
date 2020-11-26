// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:pdts_endpoint:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_pdts_endpoint_0_1 (
  sclk,
  srst,
  addr,
  tgrp,
  stat,
  rec_clk,
  rec_d_clk,
  rec_d,
  rec_clk_locked,
  rec_clk_reset,
  sfp_los,
  cdr_los,
  cdr_lol,
  clk,
  rst,
  rdy,
  sync,
  sync_v,
  tstamp,
  evtctr
);

input wire sclk;
input wire srst;
input wire [7 : 0] addr;
input wire [1 : 0] tgrp;
output wire [3 : 0] stat;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rec_clk, ASSOCIATED_RESET rec_clk_reset, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rec_clk CLK" *)
input wire rec_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rec_d_clk, FREQ_HZ 312500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ts_rec_d_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rec_d_clk CLK" *)
input wire rec_d_clk;
input wire rec_d;
input wire rec_clk_locked;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rec_clk_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rec_clk_reset RST" *)
output wire rec_clk_reset;
input wire sfp_los;
input wire cdr_los;
input wire cdr_lol;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_pdts_endpoint_0_1_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
output wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
output wire rst;
output wire rdy;
output wire [3 : 0] sync;
output wire sync_v;
output wire [63 : 0] tstamp;
output wire [31 : 0] evtctr;

  pdts_endpoint inst (
    .sclk(sclk),
    .srst(srst),
    .addr(addr),
    .tgrp(tgrp),
    .stat(stat),
    .rec_clk(rec_clk),
    .rec_d_clk(rec_d_clk),
    .rec_d(rec_d),
    .rec_clk_locked(rec_clk_locked),
    .rec_clk_reset(rec_clk_reset),
    .sfp_los(sfp_los),
    .cdr_los(cdr_los),
    .cdr_lol(cdr_lol),
    .clk(clk),
    .rst(rst),
    .rdy(rdy),
    .sync(sync),
    .sync_v(sync_v),
    .tstamp(tstamp),
    .evtctr(evtctr)
  );
endmodule
