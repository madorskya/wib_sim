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


// IP VLNV: xilinx.com:module_ref:pdts_endpoint_stdlogic:1.0
// IP Revision: 1

(* X_CORE_INFO = "pdts_endpoint_stdlogic,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "design_1_pdts_endpoint_stdlog_0_0,pdts_endpoint_stdlogic,{}" *)
(* CORE_GENERATION_INFO = "design_1_pdts_endpoint_stdlog_0_0,pdts_endpoint_stdlogic,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=pdts_endpoint_stdlogic,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_pdts_endpoint_stdlog_0_0 (
  sclk,
  srst,
  addr,
  tgrp,
  stat,
  rec_clk,
  rec_d,
  sfp_los,
  cdr_los,
  cdr_lol,
  pll_locked,
  clk,
  rst,
  rdy,
  sync,
  sync_stb,
  sync_first,
  tstamp,
  debug,
  txd,
  tx_dis
);

input wire sclk;
input wire srst;
input wire [7 : 0] addr;
input wire [1 : 0] tgrp;
output wire [3 : 0] stat;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rec_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ts_rec_d_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rec_clk CLK" *)
input wire rec_clk;
input wire rec_d;
input wire sfp_los;
input wire cdr_los;
input wire cdr_lol;
input wire pll_locked;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_pdts_endpoint_stdlog_0_0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
output wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
output wire rst;
output wire rdy;
output wire [3 : 0] sync;
output wire sync_stb;
output wire sync_first;
output wire [63 : 0] tstamp;
output wire [31 : 0] debug;
output wire txd;
output wire tx_dis;

  pdts_endpoint_stdlogic inst (
    .sclk(sclk),
    .srst(srst),
    .addr(addr),
    .tgrp(tgrp),
    .stat(stat),
    .rec_clk(rec_clk),
    .rec_d(rec_d),
    .sfp_los(sfp_los),
    .cdr_los(cdr_los),
    .cdr_lol(cdr_lol),
    .pll_locked(pll_locked),
    .clk(clk),
    .rst(rst),
    .rdy(rdy),
    .sync(sync),
    .sync_stb(sync_stb),
    .sync_first(sync_first),
    .tstamp(tstamp),
    .debug(debug),
    .txd(txd),
    .tx_dis(tx_dis)
  );
endmodule
