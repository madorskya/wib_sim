// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1.1_AR73018 (win64) Build 2960000 Wed Aug  5 22:57:20 MDT 2020
// Date        : Sun Nov 29 01:23:49 2020
// Host        : uf-eng-srv-1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_1/bd_0/ip/ip_1/bd_0482_lut_buffer_0_sim_netlist.v
// Design      : bd_0482_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0482_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2020.1.1_AR73018" *) 
(* NotValidForBitStream *)
module bd_0482_lut_buffer_0
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  bd_0482_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule

(* C_EN_BSCANID_VEC = "0" *) (* ORIG_REF_NAME = "lut_buffer_v2_0_0_lut_buffer" *) (* dont_touch = "true" *) 
module bd_0482_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer
   (tms_i,
    tdi_i,
    tck_i,
    capture_i,
    runtest_i,
    reset_i,
    shift_i,
    sel_i,
    update_i,
    drck_i,
    bscanid_en_i,
    bscanid_o,
    tdo_o,
    tms_o,
    tdi_o,
    tck_o,
    capture_o,
    runtest_o,
    reset_o,
    shift_o,
    sel_o,
    update_o,
    drck_o,
    bscanid_en_o,
    bscanid_i,
    tdo_i);
  input tms_i;
  input tdi_i;
  input tck_i;
  input capture_i;
  input runtest_i;
  input reset_i;
  input shift_i;
  input sel_i;
  input update_i;
  input drck_i;
  input bscanid_en_i;
  output [31:0]bscanid_o;
  output tdo_o;
  output tms_o;
  output tdi_o;
  output tck_o;
  output capture_o;
  output runtest_o;
  output reset_o;
  output shift_o;
  output sel_o;
  output update_o;
  output drck_o;
  output bscanid_en_o;
  input [31:0]bscanid_i;
  input tdo_i;

  wire \<const0> ;
  wire bscanid_en_i;
  wire capture_i;
  wire drck_i;
  wire reset_i;
  wire runtest_i;
  wire sel_i;
  wire shift_i;
  wire tck_i;
  wire tdi_i;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire update_i;

  assign bscanid_en_o = bscanid_en_i;
  assign bscanid_o[31] = \<const0> ;
  assign bscanid_o[30] = \<const0> ;
  assign bscanid_o[29] = \<const0> ;
  assign bscanid_o[28] = \<const0> ;
  assign bscanid_o[27] = \<const0> ;
  assign bscanid_o[26] = \<const0> ;
  assign bscanid_o[25] = \<const0> ;
  assign bscanid_o[24] = \<const0> ;
  assign bscanid_o[23] = \<const0> ;
  assign bscanid_o[22] = \<const0> ;
  assign bscanid_o[21] = \<const0> ;
  assign bscanid_o[20] = \<const0> ;
  assign bscanid_o[19] = \<const0> ;
  assign bscanid_o[18] = \<const0> ;
  assign bscanid_o[17] = \<const0> ;
  assign bscanid_o[16] = \<const0> ;
  assign bscanid_o[15] = \<const0> ;
  assign bscanid_o[14] = \<const0> ;
  assign bscanid_o[13] = \<const0> ;
  assign bscanid_o[12] = \<const0> ;
  assign bscanid_o[11] = \<const0> ;
  assign bscanid_o[10] = \<const0> ;
  assign bscanid_o[9] = \<const0> ;
  assign bscanid_o[8] = \<const0> ;
  assign bscanid_o[7] = \<const0> ;
  assign bscanid_o[6] = \<const0> ;
  assign bscanid_o[5] = \<const0> ;
  assign bscanid_o[4] = \<const0> ;
  assign bscanid_o[3] = \<const0> ;
  assign bscanid_o[2] = \<const0> ;
  assign bscanid_o[1] = \<const0> ;
  assign bscanid_o[0] = \<const0> ;
  assign capture_o = capture_i;
  assign drck_o = drck_i;
  assign reset_o = reset_i;
  assign runtest_o = runtest_i;
  assign sel_o = sel_i;
  assign shift_o = shift_i;
  assign tck_o = tck_i;
  assign tdi_o = tdi_i;
  assign tms_o = tms_i;
  assign update_o = update_i;
  GND GND
       (.G(\<const0> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    u_tdo
       (.I0(tdo_i),
        .O(tdo_o));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
