`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//***************************
//***
//***	Module Name: colData_FErst
//***	Description:	Controls the reset pad of both the LARASIC and COLDADC
//***
//***************************
module	colData_ADCclks	(	output	logic				ADC1_CLK_2MHZ,
													output	logic				ADC1_CLK_64MHZ,
													output	logic				ADC2_CLK_2MHZ,
													output	logic				ADC2_CLK_64MHZ,
													output	logic				ADC3_CLK_2MHZ,
													output	logic				ADC3_CLK_64MHZ,
													output	logic				ADC4_CLK_2MHZ,
													output	logic				ADC4_CLK_64MHZ,
													input		logic				CLK_2MHZ_SYS_generated,
													input		logic				Clk_64MHz_Sys,
													input 	logic [7:0]	ADC_Clock_Control,
													input 	logic 			CORE_Run
												);

always_comb
	begin
		ADC1_CLK_64MHZ	=	Clk_64MHz_Sys						&&	ADC_Clock_Control[0]	&&	CORE_Run;
		ADC1_CLK_2MHZ		=	CLK_2MHZ_SYS_generated	&&	ADC_Clock_Control[1]	&&	CORE_Run;

		ADC2_CLK_64MHZ	=	Clk_64MHz_Sys						&&	ADC_Clock_Control[2]	&&	CORE_Run;
		ADC2_CLK_2MHZ		=	CLK_2MHZ_SYS_generated	&&	ADC_Clock_Control[3]	&&	CORE_Run;

		ADC3_CLK_64MHZ	=	Clk_64MHz_Sys						&&	ADC_Clock_Control[4]	&&	CORE_Run;
		ADC3_CLK_2MHZ		=	CLK_2MHZ_SYS_generated	&&	ADC_Clock_Control[5]	&&	CORE_Run;

		ADC4_CLK_64MHZ	=	Clk_64MHz_Sys						&&	ADC_Clock_Control[6]	&&	CORE_Run;
		ADC4_CLK_2MHZ		=	CLK_2MHZ_SYS_generated	&&	ADC_Clock_Control[7]	&&	CORE_Run;
	end

endmodule
