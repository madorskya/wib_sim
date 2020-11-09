`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
//////////////////////////////////////////////////////////////////////////
// File Name: shift_reg.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description: Shift register with parallel load and serial out.
//              Asynchronous reset and synchronous clear.
//              priority: reset_n -> enable -> parallel_load 
//              used in slow serial interface
//////////////////////////////////////////////////////////////////////////

module shift_reg
    (output logic shift_out,          // output bit
    input logic [15:0] data_in,      // input data for load
    input logic enable,                   // enable shift register    
    input logic load,                     // synchronous parallel load
    input logic clock,                    // calibration engine clock
    input logic reset_n);                 // digital reset (active low)

reg [15:0] temp;

always_ff @ (posedge clock or negedge reset_n)
    if (!reset_n) begin
        shift_out <= 1'b0; 
        temp <= 16'b0;
    end 
    else begin
        if (enable) begin
            if (load) 
                temp <= data_in;
            else
                temp <= {temp[14:0],1'b0}; 
        end
        shift_out <= (enable)? temp[15] : 1'b0;
    end

endmodule
