`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//Verilog HDL for "COLDATAP2_IOs", "POR_v4" "functional"

`timescale 1ns / 1ps

module POR_v4 ( output  logic   POR_gated,
                input   logic   Vcap,
                input   logic   POR_NAND
              );

  initial
  begin
        POR_gated = ZERO;
    #20 POR_gated = ONE;
  end

endmodule
