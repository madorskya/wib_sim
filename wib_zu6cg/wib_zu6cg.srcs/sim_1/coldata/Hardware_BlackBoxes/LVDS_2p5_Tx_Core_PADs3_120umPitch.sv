`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: LVDS_2p5_Tx_Core_PADs3_120umPitch
//***	Description: A simple, stupid model of an LVDS Driver
//***
//*******************************************************************************************
//*******************************************************************************************

module  LVDS_2p5_Tx_Core_PADs3_120umPitch ( output   logic   txp,
                                            output   logic   txn,
                                            input    logic   I,
                                            input    logic   b1,
                                            input    logic   b1B,
                                            input    logic   b2,
                                            input    logic   b2B,
                                            input    logic   b3,
                                            input    logic   b3B     );

  assign  txp = I;
  assign  txn = !I;

endmodule // LVDS_2p5_Tx_Core_PADs3_120umPitch
