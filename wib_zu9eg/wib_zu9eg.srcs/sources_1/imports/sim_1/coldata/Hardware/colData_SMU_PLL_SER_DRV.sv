`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: coldData_SMU_PLL_SER_DRV
//***	Description: Verilog Module of the Phase-locked Loop, Serializer and Driver
//***
//*******************************************************************************************
//*******************************************************************************************
//module coldData_SMU_PLL_SER_DRV (	// Inside-facing signals of the SMU Trinity
module 	TOP_CDP2_PLLA_SER_LD_INTERFACE_POWER_PADS(
																	input 	logic	[9:0]	SERIALIZER_INPUT_DATA1,
																	input 	logic [9:0]	SERIALIZER_INPUT_DATA2,
																	output 	logic 			CLK_128MHZ_1,
																	output 	logic 			CLK_128MHZ_2,
																	input 	logic 			PLL_RESET_FROM_CORE,									//To be ORed with external PLL Reset
																	input 	logic 			CORE_RESET_ACTIVE_LOW,
																	output 	logic 			INTERFACE_LOCK,
																	// Inside-looking Configuration signals for the SMU Trinity
																	input 	logic [2:0]	CONFIG_PLL_ICP,
																	input 	logic [5:0]	CONFIG_PLL_BAND,
																	input 	logic [1:0]	CONFIG_PLL_LPFR,
																	input 	logic [1:0]	CONFIG_PLL_ATO,
																	input 	logic 			CONFIG_PLL_PDCP,
																	input 	logic 			CONFIG_PLL_OPEN,

																	input 	logic 			CONFIG_SER_MODE,
																	input 	logic 			CONFIG_SER_INV_SER_CLK,

																	input 	logic [2:0]	CONFIG_DRV_VMBOOST,
																	input 	logic [2:0]	CONFIG_DRV_VMDRIVER,
																	input 	logic [3:0]	CONFIG_DRV_SELPRE,
																	input 	logic [3:0]	CONFIG_DRV_SELPST1,
																	input 	logic [2:0]	CONFIG_DRV_SELPST2,
																	input 	logic [3:0]	CONFIG_DRV_SELCM_MAIN,
																	input 	logic 			CONFIG_DRV_ENABLE_CM,
																	input 	logic 			CONFIG_DRV_INVERSE_CLK,
																	input 	logic [2:0]	CONFIG_DRV_DELAYSEL,
																	input 	logic [3:0]	CONFIG_DRV_DELAY_CS,
																	input 	logic 			CONFIG_DRV_CML,
																	input 	logic 			CONFIG_DRV_BIAS_CML_INTERNAL,
																	input 	logic 			CONFIG_DRV_BIAS_CS_INTERNAL,
																	// Pad-facing signals of the SMU Trinity
																	input 	logic 			CKIN,
																	output 	logic 			CKOUTN,
																	output 	logic 			CKOUTP,
																	inout 	logic 			VCEXT,
																	inout 	logic 			ATO,
																	output 	logic 			LOCK,
																	input 	logic 			PLL_EXTERNAL_RESETN,
																	inout 	logic 			IBIAS_CML,
																	inout 	logic 			IBIAS_CS,
																	output 	logic 			SEROUTN1,
																	output 	logic 			SEROUTP1,
																	output 	logic 			SEROUTN2,
																	output 	logic 			SEROUTP2
																);

		wire 	logic SerializerOut_1;
		wire 	logic SerializerOut_2;
					logic PLL_Rst_ACTIVE_LOW;

		//*** If either SMU_PLL_RESET or PLL_Reset_from_CORE are low, then someone
		//*** 	is calling for a reset for the PLL
		always_comb
			PLL_Rst_ACTIVE_LOW	=	PLL_EXTERNAL_RESETN && PLL_RESET_FROM_CORE;

		assign 	INTERFACE_LOCK	=	LOCK;

		SMU_PLL					SMU_PLL_0					(	.Clk_1p28GHz(	Clk_1p28GHz 				),
																				.LOCK(				LOCK 								),
																				.CKIN(				CKIN 								),
																				.rstn(				PLL_Rst_ACTIVE_LOW	)
																			);

		//*** ONLY CORE_Reset_ACTIVE_LOW resets the serializer
		SMU_Serializer	SMU_Serializer_1	(	.dataOut(	SerializerOut_1					),
																				.clk_out(	CLK_128MHZ_1						),
																				.clk(			Clk_1p28GHz							),
																				.rstn(		CORE_RESET_ACTIVE_LOW		),
																				.dataIn(	SERIALIZER_INPUT_DATA1	)
																			);

		//*** Drive the serialized data out
		SMU_DRV					SMU_DRV_1					(	.Out_P(	SEROUTP1				),
																				.Out_N(	SEROUTN1				),
																				.In(		SerializerOut_1	)
																			);

		//*** ONLY CORE_Reset_ACTIVE_LOW resets the serializer
		SMU_Serializer	SMU_Serializer_2	(	.dataOut(	SerializerOut_2					),
																				.clk_out(	CLK_128MHZ_2						),
																				.clk(			Clk_1p28GHz							),
																				.rstn(		CORE_RESET_ACTIVE_LOW		),
																				.dataIn(	SERIALIZER_INPUT_DATA2	)
																			);

		//*** Drive the serialized data out
		SMU_DRV					SMU_DRV_2					(	.Out_P(	SEROUTP2				),
																				.Out_N(	SEROUTN2				),
																				.In(		SerializerOut_2	)
																			);

		//*** Drive the serialized data out
		SMU_DRV					CLKOUT_3					(	.Out_P(	CKOUTP				),
																				.Out_N(	CKOUTN				),
																				.In(		Clk_1p28GHz		)
																			);

endmodule // coldData_SMU_PLL_SER_DRV
/*******************************************************************************
***	Name: SMU_Serializer
***	Description: Serializer module provided by SMU
***	Type: Module
***	Compatibility: Verilog
***	Date: May 1, 2017
*******************************************************************************/
module	SMU_Serializer	(	output 	logic				dataOut,
													output 	logic				clk_out,
													input 	logic				clk,
													input		logic				rstn,
													input		logic	[9:0]	dataIn
												);

	logic	[3:0]	count;
	logic	[9:0]	tmp;

	always @(posedge clk or negedge rstn)
	begin
		if(!rstn)
		begin
			count		<= 	4'b0001;
			dataOut	<= 	1'b0;
			tmp 		<= 	10'b00_0000_0000;
			clk_out	<=	1'b0;
		end

		else if (count==4'b0100)
		begin
			dataOut	<= 	tmp[9];
			tmp 		<= 	dataIn;
//			tmp 		<= 	(tmp << 1);
			count 	<= 	count+4'b0001;
			clk_out <= 	~clk_out;
		end

		else if (count==4'b1001)
		begin
			dataOut	<= 	tmp[9];
			count 	<= 	4'b0000;
//			tmp 		<= 	dataIn;
			tmp 		<= 	(tmp << 1);
			clk_out	<= 	~clk_out;
		end

		else
		begin
			dataOut <=	tmp[9];
			tmp 		<= 	(tmp << 1);
			count 	<= 	count+4'b0001;
		end

	end

endmodule
/*******************************************************************************
***	Name: SMU_PLL
***	Description: Phase-Locked Loop module
***	Type: Module
***	Compatibility: Verilog
***	Date: October 30, 2018
*******************************************************************************/
module	SMU_PLL	(	output 	logic				Clk_1p28GHz,
									output 	logic 			LOCK,
									input 	logic 			CKIN,
									input		logic				rstn
								);

	initial
		LOCK 	=	ZERO;

	always_comb
		Clk_1p28GHz	=	CKIN && rstn;

	always @(rstn)
		if(rstn == ZERO)
			LOCK <= ZERO;
		else
			LOCK <=	ONE;

endmodule
/*******************************************************************************
***	Name: SMU_DRV
***	Description: Serializer module provided by SMU
***	Type: Module
***	Compatibility: Verilog
***	Date: May 1, 2017
*******************************************************************************/
module	SMU_DRV	(	output 	logic				Out_P,
									output 	logic 			Out_N,
									input		logic				In
								);

	always_comb
	begin
		Out_P		=	In;
		Out_N 	=	!In;
	end

endmodule
