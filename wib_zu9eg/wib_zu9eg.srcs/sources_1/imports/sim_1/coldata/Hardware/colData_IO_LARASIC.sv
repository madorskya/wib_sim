`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: colData_IO_LARASIC
//***	Description: The LVDS and CMOS IO block for system signals
//***
//*******************************************************************************************
//*******************************************************************************************

module	colData_IO_LARASIC	(
                          //LARASIC Control
                          output	logic						LARASIC_SCK,
                        	output	logic						LARASIC_SDO,
                        	output	logic						LARASIC_CS,
                        	input		logic						LARASIC_SDI,
                          //Internal Signals
                          input  logic						LARASIC_SCK_internal,
                        	input  logic						LARASIC_SDO_internal,
                        	input  logic						LARASIC_CS_internal,
                        	output logic						LARASIC_SDI_internal,
                          inout  logic            VDD_LARASIC
                      );

//***
	PDB2A_CMOS_OUT  LARASIC_SCK_0	( .OUT_2P25V(	LARASIC_SCK						),
														.OUT_1P1V(	LARASIC_SCK_internal 	)
													);
//***
//***
	PDB2A_CMOS_OUT  LARASIC_SDO_0	( .OUT_2P25V(	LARASIC_SDO						),
														.OUT_1P1V(	LARASIC_SDO_internal 	)
													);
//***
//***
	PDB2A_CMOS_OUT  LARASIC_CS_0	( .OUT_2P25V(	LARASIC_CS						),
														.OUT_1P1V(	LARASIC_CS_internal 	)
													);
//***
//***
	PDB2A_CMOS_IN  LARASIC_SDI_0	(  .IN_2P25V(	LARASIC_SDI					  ),
													         .IN_1P1V(	LARASIC_SDI_internal 	)
												        );
//***
endmodule
