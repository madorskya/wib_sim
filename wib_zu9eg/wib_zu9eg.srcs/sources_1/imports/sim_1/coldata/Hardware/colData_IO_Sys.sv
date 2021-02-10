`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: colData_IO_Sys
//***	Description: The LVDS and CMOS IO block for system signals
//***
//*******************************************************************************************
//*******************************************************************************************

module	colData_IO_Sys	(
                          //System Clock
                          input		logic						CLK_64MHZ_SYS_P,
                        	input		logic						CLK_64MHZ_SYS_N,
                        	//FastCommand Input
                        	input 	logic 					FASTCOMMAND_IN_P,
                        	input 	logic 					FASTCOMMAND_IN_N,
                          //Asynchronous Reset
                          input 	logic 					PAD_RESET,
                          //Internal Signals
                          output	logic						CLK_64MHZ_SYS_internal,
                        	output 	logic 					FASTCOMMAND_IN_internal,
                          output 	logic 					PAD_RESET_internal,
                          inout   logic           VDD_IO
                      );

//***
	LVDS_Rx_dnw_Top CLK_64MHZ_SYS_0	(  .PAD_VinP(	CLK_64MHZ_SYS_P				  ),
                  					         .PAD_VinN(	CLK_64MHZ_SYS_N 				),
                  					         .OC_Out(		  CLK_64MHZ_SYS_internal	)
                					        );
//***
//***
	LVDS_Rx_dnw_Top FASTCOMMAND_IN_0	(  .PAD_VinP(	FASTCOMMAND_IN_P				),
                  					           .PAD_VinN(	FASTCOMMAND_IN_N 				),
                  					           .OC_Out(		  FASTCOMMAND_IN_internal	)
                					           );
//***
//***
	PDB2A_CMOS_IN  PAD_RESET_0	( .IN_2P25V(	PAD_RESET						),
													      .IN_1P1V(	PAD_RESET_internal 	)
												      );
//***

endmodule
