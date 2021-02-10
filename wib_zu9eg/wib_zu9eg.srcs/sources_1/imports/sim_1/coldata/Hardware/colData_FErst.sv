`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//***************************
//***
//***	Module Name: colData_FErst
//***	Description:	Controls the reset pad of both the LARASIC and COLDADC
//***
//***************************
module	colData_FErst	(	output	logic				ADC_MASTER_RESET,				//Active-Low
												output	logic				LARASIC_MASTER_RESET,		//Active-Low
												input		logic				FASTACT_COLDADC_RESET, 	//Positive-active signal from Fast Command
												input		logic				FASTACT_LARASIC_RESET, 	//Positive-active signal from Fast Command
												input 	logic [7:0]	COLDADC_RST_COUNT,
												input 	logic [7:0]	LARASIC_RST_COUNT,
												input		logic				Clk_64MHz_Sys,
												input		logic				Rst_ACTIVE_LOW		//Active-Low Power-On Reset
											);

//***************************
//***
//***	Variables
//***
//***************************
				feResetStates				rstState;
				feResetStates				nextRstState;
	var		logic					[7:0]	COLDADC_Counter;
	var		logic					[7:0]	LARASIC_Counter;
	wire 	logic 							flag_FERST_S0_IDLE;

//***************************
//***
//***	Assignments
//***
//***************************

assign 	flag_FERST_S0_IDLE		=	(rstState == FERST_S0_IDLE ) 	?	ONE	:	ZERO;
assign 	ADC_MASTER_RESET			=	(rstState == FERST_S1_COLDADC_RESET ) 	?	ZERO	:	ONE;
assign 	LARASIC_MASTER_RESET	=	(rstState == FERST_S2_LARASIC_RESET ) 	?	ZERO	:	ONE;

//***************************
//***
//***	State Machine
//***
//***************************
	//FASTACT_COLDADC_RESET and FASTACT_LARASIC_RESET are issued on the negative edge of the clock.

	//State Register
	always_ff @(posedge Clk_64MHz_Sys or negedge Rst_ACTIVE_LOW)
		if(Rst_ACTIVE_LOW == ZERO)
			rstState	<=	FERST_S0_IDLE;
		else
			rstState	<=	nextRstState;

	always_comb
		unique case	(rstState)
		FERST_S0_IDLE						:	if ( FASTACT_COLDADC_RESET == ONE )
																	nextRstState = FERST_S1_COLDADC_RESET;
															else if ( FASTACT_LARASIC_RESET == ONE )
																	nextRstState = FERST_S2_LARASIC_RESET;
															else
																	nextRstState = FERST_S0_IDLE;

		FERST_S1_COLDADC_RESET	:	if ( COLDADC_Counter >= COLDADC_RST_COUNT )
																	nextRstState = FERST_S0_IDLE;
															else
																	nextRstState = FERST_S1_COLDADC_RESET;

		FERST_S2_LARASIC_RESET	:	if ( LARASIC_Counter >= LARASIC_RST_COUNT )
																	nextRstState = FERST_S0_IDLE;
															else
																	nextRstState = FERST_S2_LARASIC_RESET;

		FERST_S3_UNUSED 				:	nextRstState = FERST_S0_IDLE;

		endcase

//***************************
//***
//***	Follow-on Logic
//***
//***************************
	always_ff @(negedge Clk_64MHz_Sys or posedge flag_FERST_S0_IDLE)
		if(flag_FERST_S0_IDLE == ONE)
			begin
				COLDADC_Counter	<=	8'b0000_0000;
				LARASIC_Counter	<=	8'b0000_0000;
			end
		else if (	rstState == FERST_S1_COLDADC_RESET	)
			begin
				COLDADC_Counter	<=	COLDADC_Counter + 8'b0000_0001;
				LARASIC_Counter	<=	8'b0000_0000;
			end
		else if (	rstState == FERST_S2_LARASIC_RESET	)
			begin
				COLDADC_Counter	<=	8'b0000_0000;
				LARASIC_Counter	<=	LARASIC_Counter + 8'b0000_0001;
			end
		else
			begin
				COLDADC_Counter	<=	COLDADC_Counter;
				LARASIC_Counter	<=	LARASIC_Counter;
			end

endmodule
