// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:spi_mux:1.0
// IP Revision: 1

(* X_CORE_INFO = "spi_mux,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "design_1_spi_mux_0_0,spi_mux,{}" *)
(* CORE_GENERATION_INFO = "design_1_spi_mux_0_0,spi_mux,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=spi_mux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_spi_mux_0_0 (
  ss_t,
  sck_i,
  sck_o,
  sck_t,
  io0_i,
  io0_o,
  io0_t,
  io1_i,
  io1_o,
  io1_t,
  ss_o,
  ss1_o,
  adc_sck,
  adc_sdo,
  adc_cs
);

(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SS_T" *)
input wire ss_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SCK_I" *)
output wire sck_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SCK_O" *)
input wire sck_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SCK_T" *)
input wire sck_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO0_I" *)
output wire io0_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO0_O" *)
input wire io0_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO0_T" *)
input wire io0_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO1_I" *)
output wire io1_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO1_O" *)
input wire io1_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO1_T" *)
input wire io1_t;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SS_O" *)
input wire ss_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SS1_O" *)
input wire ss1_o;
inout wire adc_sck;
inout wire [3 : 0] adc_sdo;
output wire adc_cs;

  spi_mux inst (
    .ss_t(ss_t),
    .sck_i(sck_i),
    .sck_o(sck_o),
    .sck_t(sck_t),
    .io0_i(io0_i),
    .io0_o(io0_o),
    .io0_t(io0_t),
    .io1_i(io1_i),
    .io1_o(io1_o),
    .io1_t(io1_t),
    .ss_o(ss_o),
    .ss1_o(ss1_o),
    .adc_sck(adc_sck),
    .adc_sdo(adc_sdo),
    .adc_cs(adc_cs)
  );
endmodule
