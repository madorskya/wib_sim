`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
module  COLDADCP1 (
					//***
					//*** Connections for coldADC_DigitalBlock
					//***
						//*** for I2C
					output    logic					I2C_SDA_C2W,
					input 	  logic					I2C_SDA_W2C,
					input		  logic					I2C_SCL,
					input		  logic					I2C_ADD_0,
					input		  logic					I2C_ADD_1,
					input		  logic					I2C_ADD_2,
					input		  logic					I2C_ADD_3,
					input		  logic					I2C_UART_SEL,
					input		  logic					CLK_2MHZ_N,
					input		  logic					CLK_2MHZ_P,
					input		  logic					CLK_64MHZ_N,
					input		  logic					CLK_64MHZ_P,
					output		logic					DIG_FRAME_N,
					output		logic					DIG_FRAME_P,
					output		logic					DIG_CLKOUT_N,
					output		logic					DIG_CLKOUT_P,
					output		logic					DIG_OUTA_N,
					output		logic					DIG_OUTA_P,
					output		logic					DIG_OUTB_N,
					output		logic					DIG_OUTB_P,
					output		logic					DIG_OUTC_N,
					output		logic					DIG_OUTC_P,
					output		logic					DIG_OUTD_N,
					output		logic					DIG_OUTD_P,
					output		logic					DIG_OUTE_N,
					output		logic					DIG_OUTE_P,
					output		logic					DIG_OUTF_N,
					output		logic					DIG_OUTF_P,
					output		logic					DIG_OUTG_N,
					output		logic					DIG_OUTG_P,
					output		logic					DIG_OUTH_N,
					output		logic					DIG_OUTH_P,
					input 		logic					MASTER_RESET,
					input 		logic					MOSI,
					output		logic					MISO,
					output		logic					DIGITAL_MUX_OUT_N,
					output		logic					DIGITAL_MUX_OUT_P,
					output		logic					SSO_DATA_OUT_0,
					output		logic					SSO_DATA_OUT_1,
					output		logic					SSO_FRAME_CLOCK,
					output		logic					SSO_OUT_CLOCK,
					output		logic					VREFP,
					output		logic					VREFN,
					output		logic					VREF_EXT,
					output		logic					VOLTAGE_MONITOR,
					output		logic					VCMO,
					output		logic					VCMI,
					output		logic					RBIAS_CMOS,
					output		logic					INP,
					output		logic					INN,
					output		logic					CURRENT_MONITOR,
					output		logic					AUX_ISOURCE,
					output		logic					AUX_ISINK,
					output		logic					AUX_VOLTAGE,
					output		logic					ADC_TEST_INP,
					output		logic					ADC_TEST_INN,
					output		logic					VREF_DECOUPLE,
					output		logic					TAVDDA2P5,
					output		logic					TAVDDD2P5_2,
					output		logic					VSSD2P5,
					output		logic					TAVDDA2P5_2,
					output		logic					TACVDDD1P2_2,
					output		logic					VSSIO,
					output		logic					TAVDD_IO,
					output		logic					VSSD1P2,
					output		logic					TACVDDD1P2,
					output		logic					TAVDDD2P5
  );

//***
//***	wires
//***
				logic				PAD_Clk_2MHz;
				logic				PAD_Clk_64MHz;
	wire 	logic				PAD_frameStart;
	wire 	logic				PAD_dataOutClk;
	wire 	logic				PAD_dataOutA;
	wire 	logic				PAD_dataOutB;
	wire 	logic				PAD_dataOutC;
	wire 	logic				PAD_dataOutD;
	wire 	logic				PAD_dataOutE;
	wire 	logic				PAD_dataOutF;
	wire 	logic				PAD_dataOutG;
	wire 	logic				PAD_dataOutH;
	wire 	logic				PAD_MASTER_RESET;
	wire 	logic	[3:0]	PAD_lvdsICTRL;
	wire 	logic				PAD_mosi;
	wire 	logic				PAD_miso;
	wire 	logic				PAD_digital_mux_out;
	wire 	logic				PAD_sso_data_out_0;
	wire 	logic				PAD_sso_data_out_1;
	wire 	logic				PAD_sso_frame_clk;
	wire 	logic				PAD_sso_out_clk;

	supply0 					TIELOW;
	supply1 					TIEHIGH;

	wire 	logic					UNCONNECTED_COLDADC_TOP_A;
	wire 	logic					UNCONNECTED_COLDADC_TOP_B;
	wire 	logic					UNCONNECTED_COLDADC_TOP_C;
	wire 	logic					UNCONNECTED_COLDADC_TOP_D;
	wire 	logic					UNCONNECTED_COLDADC_TOP_E;
	wire 	logic					UNCONNECTED_COLDADC_TOP_F;
	wire 	logic					UNCONNECTED_COLDADC_TOP_G;
	wire 	logic					UNCONNECTED_COLDADC_TOP_H;
	wire 	logic					UNCONNECTED_COLDADC_TOP_I;
	wire 	logic					UNCONNECTED_COLDADC_TOP_J;
	wire 	logic					UNCONNECTED_COLDADC_TOP_K;
	wire 	logic					UNCONNECTED_COLDADC_TOP_L;
	wire 	logic					UNCONNECTED_COLDADC_TOP_M;
	wire 	logic					UNCONNECTED_COLDADC_TOP_N[0:15];
	wire 	logic					UNCONNECTED_COLDADC_TOP_O[0:15];
	wire 	logic					UNCONNECTED_COLDADC_TOP_P;
	wire 	logic					UNCONNECTED_COLDADC_TOP_Q;
	wire 	logic					UNCONNECTED_COLDADC_TOP_R;
	wire 	logic					UNCONNECTED_COLDADC_TOP_S;
	wire 	logic					UNCONNECTED_COLDADC_TOP_T;
	wire 	logic					UNCONNECTED_COLDADC_TOP_U;
	wire 	logic					UNCONNECTED_COLDADC_TOP_V;
//***
//*** assignments
//***
always_comb
	begin
		PAD_Clk_2MHz			=	(({CLK_2MHZ_P, CLK_2MHZ_N} == 2'b00)	?	1'bX	:
												(({CLK_2MHZ_P, CLK_2MHZ_N} == 2'b01)	?	1'b0	:
												(({CLK_2MHZ_P, CLK_2MHZ_N} == 2'b10)	?	1'b1	:	1'bX)));

		PAD_Clk_64MHz			=	(({CLK_64MHZ_P, CLK_64MHZ_N} == 2'b00)	?	1'bX	:
												(({CLK_64MHZ_P, CLK_64MHZ_N} == 2'b01)	?	1'b0	:
												(({CLK_64MHZ_P, CLK_64MHZ_N} == 2'b10)	?	1'b1	:	1'bX)));

		DIGITAL_MUX_OUT_P	=	PAD_digital_mux_out;
		DIGITAL_MUX_OUT_N	=	!PAD_digital_mux_out;

		DIG_FRAME_P		=	PAD_frameStart;
		DIG_FRAME_N		=	!PAD_frameStart;
		DIG_CLKOUT_P	=	PAD_dataOutClk;
		DIG_CLKOUT_N	=	!PAD_dataOutClk;
		DIG_OUTA_P		=	PAD_dataOutA;
		DIG_OUTA_N		=	!PAD_dataOutA;
		DIG_OUTB_P		=	PAD_dataOutB;
		DIG_OUTB_N		=	!PAD_dataOutB;
		DIG_OUTC_P		=	PAD_dataOutC;
		DIG_OUTC_N		=	!PAD_dataOutC;
		DIG_OUTD_P		=	PAD_dataOutD;
		DIG_OUTD_N		=	!PAD_dataOutD;
		DIG_OUTE_P		=	PAD_dataOutE;
		DIG_OUTE_N		=	!PAD_dataOutE;
		DIG_OUTF_P		=	PAD_dataOutF;
		DIG_OUTF_N		=	!PAD_dataOutF;
		DIG_OUTG_P		=	PAD_dataOutG;
		DIG_OUTG_N		=	!PAD_dataOutG;
		DIG_OUTH_P		=	PAD_dataOutH;
		DIG_OUTH_N		=	!PAD_dataOutH;

	end
	coldADC_Top coldADC_Top_0	(	.PAD_SDA_c2w(					I2C_SDA_C2W					),
															.PAD_SDA_w2c(					I2C_SDA_W2C					),
															.PAD_SCL(							I2C_SCL							),
															.PAD_chipID(				{	I2C_ADD_3,
																										I2C_ADD_2,
																										I2C_ADD_1,
																										I2C_ADD_0	}					),
															.PAD_I2C_UART_SEL(		I2C_UART_SEL				),
															.PAD_Clk_2MHz(				PAD_Clk_2MHz				),
															.PAD_Clk_64MHz(				PAD_Clk_64MHz				),
															.PAD_frameStart(			PAD_frameStart			),
															.PAD_dataOutClk(			PAD_dataOutClk			),
															.PAD_dataOutA(				PAD_dataOutA				),
															.PAD_dataOutB(				PAD_dataOutB				),
															.PAD_dataOutC(				PAD_dataOutC				),
															.PAD_dataOutD(				PAD_dataOutD				),
															.PAD_dataOutE(				PAD_dataOutE				),
															.PAD_dataOutF(				PAD_dataOutF				),
															.PAD_dataOutG(				PAD_dataOutG				),
															.PAD_dataOutH(				PAD_dataOutH				),
															.PAD_MASTER_RESET(		MASTER_RESET				),
															.PAD_lvdsICTRL(				PAD_lvdsICTRL				),
															.PAD_mosi(						TIELOW							),
															.PAD_miso(						PAD_miso						),
															.PAD_digital_mux_out(	PAD_digital_mux_out	),
															.PAD_sso_data_out_0(	PAD_sso_data_out_0	),
															.PAD_sso_data_out_1(	PAD_sso_data_out_1	),
															.PAD_sso_frame_clk(		PAD_sso_frame_clk		),
															.PAD_sso_out_clk(			PAD_sso_out_clk			),
															.vssd2p5(							UNCONNECTED_COLDADC_TOP_A	),
															.vssd1p2(							UNCONNECTED_COLDADC_TOP_B	),
															.vssa2p5(							UNCONNECTED_COLDADC_TOP_C	),
															.vrefp_unbuffered(		UNCONNECTED_COLDADC_TOP_D	),
															.vrefn_unbuffered(		UNCONNECTED_COLDADC_TOP_E	),
															.vref_ext(						UNCONNECTED_COLDADC_TOP_F	),
															.vmonitor_out(				UNCONNECTED_COLDADC_TOP_G	),
															.vddd2p5(							UNCONNECTED_COLDADC_TOP_H	),
															.vddd1p2(							UNCONNECTED_COLDADC_TOP_I	),
															.vdda2p5(							UNCONNECTED_COLDADC_TOP_J	),
															.vcmo_unbuffered(			UNCONNECTED_COLDADC_TOP_K	),
															.vcmi_unbuffered(			UNCONNECTED_COLDADC_TOP_L	),
															.r_bias_ext(					UNCONNECTED_COLDADC_TOP_M	),
															.inp(									UNCONNECTED_COLDADC_TOP_N	),
															.inn(									UNCONNECTED_COLDADC_TOP_O	),
															.imonitor_out(				UNCONNECTED_COLDADC_TOP_P	),
															.aux3(								UNCONNECTED_COLDADC_TOP_Q	),
															.aux2(								UNCONNECTED_COLDADC_TOP_R	),
															.aux1(								UNCONNECTED_COLDADC_TOP_S	),
															.adc_test_in_p(				UNCONNECTED_COLDADC_TOP_T	),
															.adc_test_in_n(				UNCONNECTED_COLDADC_TOP_U	),
															.vref_decouple(				UNCONNECTED_COLDADC_TOP_V	)
														);

endmodule
