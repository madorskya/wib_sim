// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat Aug 20 16:53:05 2022
// Host        : endcap-tf2 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/madorsky/github/wib_sim/wib_zu6cg/wib_zu6cg.srcs/sources_1/bd/design_1/ip/design_1_spi_mux_0_0/design_1_spi_mux_0_0_sim_netlist.v
// Design      : design_1_spi_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu6cg-ffvb1156-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_spi_mux_0_0,spi_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spi_mux,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_spi_mux_0_0
   (ss_t,
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
    adc_cs);
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SS_T" *) input ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SCK_I" *) output sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SCK_O" *) input sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SCK_T" *) input sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO0_I" *) output io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO0_O" *) input io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO0_T" *) input io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO1_I" *) output io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO1_O" *) input io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO1_T" *) input io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SS_O" *) input ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SS1_O" *) input ss1_o;
  inout adc_sck;
  inout [3:0]adc_sdo;
  output adc_cs;

  wire \<const0> ;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire adc_sck;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [3:0]adc_sdo;
  wire io0_i;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io0_o;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire io0_t;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire sck_i;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire sck_o;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire sck_t;
  wire ss1_o;
  wire ss_o;
  wire ss_t;

  assign adc_cs = ss_t;
  assign io1_i = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_spi_mux_0_0_spi_mux inst
       (.adc_sck(adc_sck),
        .adc_sdo(adc_sdo),
        .io0_i(io0_i),
        .io0_o(io0_o),
        .io0_t(io0_t),
        .sck_i(sck_i),
        .sck_o(sck_o),
        .sck_t(sck_t),
        .ss1_o(ss1_o),
        .ss_o(ss_o));
endmodule

(* ORIG_REF_NAME = "spi_mux" *) 
module design_1_spi_mux_0_0_spi_mux
   (sck_i,
    io0_i,
    adc_sck,
    adc_sdo,
    sck_o,
    sck_t,
    io0_o,
    io0_t,
    ss1_o,
    ss_o);
  output sck_i;
  output io0_i;
  inout adc_sck;
  inout [3:0]adc_sdo;
  input sck_o;
  input sck_t;
  input io0_o;
  input io0_t;
  input ss1_o;
  input ss_o;

  wire [3:0]adc_io0;
  wire adc_sck;
  wire [3:0]adc_sdo;
  wire io0_i;
  wire io0_o;
  wire io0_t;
  wire sck_i;
  wire sck_o;
  wire sck_t;
  wire ss1_o;
  wire ss_o;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    io0_i__0
       (.I0(adc_io0[3]),
        .I1(adc_io0[2]),
        .I2(ss1_o),
        .I3(adc_io0[1]),
        .I4(ss_o),
        .I5(adc_io0[0]),
        .O(io0_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \iobuf_loop[0].io0_iobuf 
       (.I(io0_o),
        .IO(adc_sdo[0]),
        .O(adc_io0[0]),
        .T(io0_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \iobuf_loop[1].io0_iobuf 
       (.I(io0_o),
        .IO(adc_sdo[1]),
        .O(adc_io0[1]),
        .T(io0_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \iobuf_loop[2].io0_iobuf 
       (.I(io0_o),
        .IO(adc_sdo[2]),
        .O(adc_io0[2]),
        .T(io0_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \iobuf_loop[3].io0_iobuf 
       (.I(io0_o),
        .IO(adc_sdo[3]),
        .O(adc_io0[3]),
        .T(io0_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    sck_iobuf
       (.I(sck_o),
        .IO(adc_sck),
        .O(sck_i),
        .T(sck_t));
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
