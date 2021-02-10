`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: PDB2A_CMOS_OUT
//***	Description: A simple, stupid model of an LVDS Receiver
//***
//*******************************************************************************************
//*******************************************************************************************

module  PDB2A_CMOS_OUT ( 	input   logic   OUT_1P1V,
                        	output  logic   OUT_2P25V  );

always @ ( * )
  case (OUT_1P1V)
    ONE     : OUT_2P25V = ONE;
    ZERO    : OUT_2P25V = ZERO;
    default : OUT_2P25V = UNKNOWN;
  endcase

endmodule // PDB2A_CMOS_OUT
