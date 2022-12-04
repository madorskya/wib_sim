// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sun Dec  4 11:42:43 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/madorsky/github/zynq/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_dyn_phase_adjust_0_0/design_1_dyn_phase_adjust_0_0_sim_netlist.v
// Design      : design_1_dyn_phase_adjust_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dyn_phase_adjust_0_0,dyn_phase_adjust,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "dyn_phase_adjust,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_dyn_phase_adjust_0_0
   (clk,
    psen_in,
    psen,
    psincdec);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_ts_clk, INSERT_VIP 0" *) input clk;
  input psen_in;
  output psen;
  output psincdec;

  wire \<const0> ;
  wire clk;
  wire psen;
  wire psen_in;

  assign psincdec = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_dyn_phase_adjust_0_0_dyn_phase_adjust inst
       (.clk(clk),
        .psen(psen),
        .psen_in(psen_in));
endmodule

(* ORIG_REF_NAME = "dyn_phase_adjust" *) 
module design_1_dyn_phase_adjust_0_0_dyn_phase_adjust
   (psen,
    psen_in,
    clk);
  output psen;
  input psen_in;
  input clk;

  wire clk;
  wire psen;
  wire psen_i_1_n_0;
  wire psen_in;
  wire psen_r;
  wire psen_rr;

  LUT2 #(
    .INIT(4'h2)) 
    psen_i_1
       (.I0(psen_r),
        .I1(psen_rr),
        .O(psen_i_1_n_0));
  FDRE psen_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(psen_in),
        .Q(psen_r),
        .R(1'b0));
  FDRE psen_reg
       (.C(clk),
        .CE(1'b1),
        .D(psen_i_1_n_0),
        .Q(psen),
        .R(1'b0));
  FDRE psen_rr_reg
       (.C(clk),
        .CE(1'b1),
        .D(psen_r),
        .Q(psen_rr),
        .R(1'b0));
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
