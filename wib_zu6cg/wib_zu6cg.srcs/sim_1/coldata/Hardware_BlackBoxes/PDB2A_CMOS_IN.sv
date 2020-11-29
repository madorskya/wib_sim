`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: PDB2A_CMOS_IN
//***	Description: A simple, stupid model of an LVDS Receiver
//***
//*******************************************************************************************
//*******************************************************************************************

module  PDB2A_CMOS_IN ( input   logic   IN_2P25V,
                        output  logic   IN_1P1V  );

always @ ( * )
  case (IN_2P25V)
    ONE     : IN_1P1V = ONE;
    ZERO    : IN_1P1V = ZERO;
    default : IN_1P1V = UNKNOWN;
  endcase

endmodule // PDB2A_CMOS_IN
