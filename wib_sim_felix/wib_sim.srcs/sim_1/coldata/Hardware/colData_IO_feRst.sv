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
	input		logic						ADC_MASTER_RESET,
	input		logic						LARASIC_MASTER_RESET,
  //Internal Signals
	output 	logic 					ADC_MASTER_RESET_internal,
	input		logic						LARASIC_MASTER_RESET_internal,
);

//***
	CMOS_drv  ADC_MASTER_RESET_0	( .External(	ADC_MASTER_RESET						),
																	.Internal(	ADC_MASTER_RESET_internal 	)
																);
//***
//***
	CMOS_drv  LARASIC_MASTER_RESET_0	( .External(	LARASIC_MASTER_RESET						),
																			.Internal(	LARASIC_MASTER_RESET_internal 	)
																		);
//***

endmodule
