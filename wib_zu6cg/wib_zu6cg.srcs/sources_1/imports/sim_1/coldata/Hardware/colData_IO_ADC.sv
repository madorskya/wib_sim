`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: colData_IO_ADC
//***	Description: The LVDS and CMOS IO block for system signals
//***
//*******************************************************************************************
//*******************************************************************************************

module	colData_IO_ADC	(
  //ADC
	input		logic						ADC_DIG_OUTA_P,
	input		logic						ADC_DIG_OUTA_N,
	input		logic						ADC_DIG_OUTB_P,
	input		logic						ADC_DIG_OUTB_N,
	input		logic						ADC_DIG_OUTC_P,
	input		logic						ADC_DIG_OUTC_N,
	input		logic						ADC_DIG_OUTD_P,
	input		logic						ADC_DIG_OUTD_N,
	input		logic						ADC_DIG_OUTE_P,
	input		logic						ADC_DIG_OUTE_N,
	input		logic						ADC_DIG_OUTF_P,
	input		logic						ADC_DIG_OUTF_N,
	input		logic						ADC_DIG_OUTG_P,
	input		logic						ADC_DIG_OUTG_N,
	input		logic						ADC_DIG_OUTH_P,
	input		logic						ADC_DIG_OUTH_N,
	input		logic						ADC_DIG_FRAME_P,
	input		logic						ADC_DIG_FRAME_N,
  input		logic						ADC_DIG_CLKOUT_P,
  input		logic						ADC_DIG_CLKOUT_N,
	output	logic						ADC_CLK_2MHZ_P,
	output	logic						ADC_CLK_2MHZ_N,
	output	logic						ADC_CLK_64MHZ_P,
	output	logic						ADC_CLK_64MHZ_N,
  //Internal Signals
	output	logic						ADC_DIG_OUTA_internal,
	output	logic						ADC_DIG_OUTB_internal,
	output	logic						ADC_DIG_OUTC_internal,
	output	logic						ADC_DIG_OUTD_internal,
	output	logic						ADC_DIG_OUTE_internal,
	output	logic						ADC_DIG_OUTF_internal,
	output	logic						ADC_DIG_OUTG_internal,
	output	logic						ADC_DIG_OUTH_internal,
	output	logic						ADC_DIG_FRAME_internal,
  output	logic						ADC_DIG_CLKOUT_internal,
	input 	logic						ADC_CLK_2MHZ_internal,
	input 	logic						ADC_CLK_64MHZ_internal,
  //Bias
	input   logic   [2:0]   LVDS_bias,
	input   logic   [2:0]   LVDS_biasB,
	inout 	logic 					VDD_IO
);


//***
	LVDS_2p5_Tx_Core_PADs3_120umPitch ADC_CLK_2MHZ_0	(	.txp(	ADC_CLK_2MHZ_P				),
                    																	.txn(	ADC_CLK_2MHZ_N 				),
																											.I(		ADC_CLK_2MHZ_internal	),
																											.b1(		LVDS_bias[0]	),
																											.b1B(		LVDS_biasB[0]	),
																											.b2(		LVDS_bias[1]	),
																											.b2B(		LVDS_biasB[1]	),
																											.b3(		LVDS_bias[2]	),
																											.b3B(		LVDS_biasB[2]	)
                																		);
//***
//***
	LVDS_2p5_Tx_Core_PADs3_120umPitch ADC_CLK_64MHZ_0	(	.txp(	ADC_CLK_64MHZ_P				  ),
                    				  												.txn(	ADC_CLK_64MHZ_N 				),
                    				  												.I(		ADC_CLK_64MHZ_internal	),
																											.b1(		LVDS_bias[0]	),
																											.b1B(		LVDS_biasB[0]	),
																											.b2(		LVDS_bias[1]	),
																											.b2B(		LVDS_biasB[1]	),
																											.b3(		LVDS_bias[2]	),
																											.b3B(		LVDS_biasB[2]	)
                																		);
//***
//***
	LVDS_Rx_dnw_Top ADC_DIG_OUTA_0	( .PAD_VinP(	ADC_DIG_OUTA_P				),
                  									.PAD_VinN(	ADC_DIG_OUTA_N 				),
                  									.OC_Out(		ADC_DIG_OUTA_internal	)
                									);
//***
//***
	LVDS_Rx_dnw_Top ADC_DIG_OUTB_0	( .PAD_VinP(	ADC_DIG_OUTB_P				),
                  									.PAD_VinN(	ADC_DIG_OUTB_N 				),
                  									.OC_Out(		ADC_DIG_OUTB_internal	)
                									);
//***
//***
	LVDS_Rx_dnw_Top ADC_DIG_OUTC_0	( .PAD_VinP(	ADC_DIG_OUTC_P				),
                  									.PAD_VinN(	ADC_DIG_OUTC_N 				),
                  									.OC_Out(		ADC_DIG_OUTC_internal	)
                									);
//***
//***
	LVDS_Rx_dnw_Top ADC_DIG_OUTD_0	( .PAD_VinP(	ADC_DIG_OUTD_P				),
                  									.PAD_VinN(	ADC_DIG_OUTD_N 				),
                  									.OC_Out(		ADC_DIG_OUTD_internal	)
                									);
//***
//***
	LVDS_Rx_dnw_Top ADC_DIG_OUTE_0	( .PAD_VinP(	ADC_DIG_OUTE_P				),
                  									.PAD_VinN(	ADC_DIG_OUTE_N 				),
                  									.OC_Out(		ADC_DIG_OUTE_internal	)
                									);
//***
//***
	LVDS_Rx_dnw_Top ADC_DIG_OUTF_0	( .PAD_VinP(	ADC_DIG_OUTF_P				),
                  									.PAD_VinN(	ADC_DIG_OUTF_N 				),
                  									.OC_Out(		ADC_DIG_OUTF_internal	)
                									);
//***
//***
	LVDS_Rx_dnw_Top ADC_DIG_OUTG_0	( .PAD_VinP(	ADC_DIG_OUTG_P				),
                  									.PAD_VinN(	ADC_DIG_OUTG_N 				),
                  									.OC_Out(		ADC_DIG_OUTG_internal	)
                									);
//***
//***
	LVDS_Rx_dnw_Top ADC_DIG_OUTH_0	( .PAD_VinP(	ADC_DIG_OUTH_P				),
                  									.PAD_VinN(	ADC_DIG_OUTH_N 				),
                  									.OC_Out(		ADC_DIG_OUTH_internal	)
                									);
//***
//***
	LVDS_Rx_dnw_Top ADC_DIG_FRAME_0	( .PAD_VinP(	ADC_DIG_FRAME_P				  ),
                  					  				.PAD_VinN(	ADC_DIG_FRAME_N 				),
                  					  				.OC_Out(		ADC_DIG_FRAME_internal	)
                					  				);
//***
//***
	LVDS_Rx_dnw_Top ADC_DIG_CLKOUT_0	( .PAD_VinP(	ADC_DIG_CLKOUT_P				),
                  					  				.PAD_VinN(	ADC_DIG_CLKOUT_N 				),
                  					  				.OC_Out(		ADC_DIG_CLKOUT_internal	)
                					  				);
//***

endmodule
