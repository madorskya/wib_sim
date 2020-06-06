`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: colData_IO_Misc
//***	Description: The CMOS IO block for system signals
//***
//*******************************************************************************************
//*******************************************************************************************

module	colData_IO_Misc  (  output  logic   ADC_MASTER_RESET,
                            output  logic   LARASIC_MASTER_RESET,
                            input   logic   ADC_MASTER_RESET_internal,
                            input   logic   LARASIC_MASTER_RESET_internal
                          );

//***
	CMOS_drv  ADC_RESET_0	( .External(	ADC_MASTER_RESET						),
													.Internal(	ADC_MASTER_RESET_internal 	)
												);
//***
//***
	CMOS_drv  LAR_RESET_0	( .External(	LARASIC_MASTER_RESET						),
													.Internal(	LARASIC_MASTER_RESET_internal 	)
												);
//***

endmodule
