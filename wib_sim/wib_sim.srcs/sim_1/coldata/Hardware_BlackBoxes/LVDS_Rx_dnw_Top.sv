`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: LVDS_Rx_dnw_Top
//***	Description: A simple, stupid model of an LVDS Receiver
//***
//*******************************************************************************************
//*******************************************************************************************

module  LVDS_Rx_dnw_Top ( input   logic   PAD_VinP,
                          input   logic   PAD_VinN,
                          output  logic   OC_Out  );

  always @ ( * )
    case (  {PAD_VinP, PAD_VinN}  )
      2'b00   :  OC_Out  = 1'bX;
      2'b01   :  OC_Out  = 1'b0;
      2'b10   :  OC_Out  = 1'b1;
      2'b11   :  OC_Out  = 1'bX;
      default :  OC_Out  = 1'bX;
    endcase
    
endmodule // LVDS_Rx_dnw_Top
