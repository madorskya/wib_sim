`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2021 03:50:17 PM
// Design Name: 
// Module Name: ept_auto_rst
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This module interfaces to Bristol timing system
//              After endpoint is released from reset, this module counts
//              until a user selectable timeout is reached, then continually 
//              checks that the endpoint is locked.
//              If not, this module will assert an endpoint reset, and will
//              for a user-selectable number of times re-enter the count
//              loop and check endpoint status again. After the re-tries are
//              exceeded, the module will output an error.
//              The error can be cleared by asserting a ept_auto_rst_in.
//              This module can be disabled by asserting pass_thru.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ept_auto_rst(
    input [3:0] stat_in,    // endpoint status bits to monitor
    input clk_in,           // AXI clock (100MHz) for input side of endpoint
    input srst_in,          // endpoint register reset in
    input [31:0] timeout,   // selectable wait timeout
    input [3:0] retry_in,   // selectable number of retries to reset
    input pass_thru,        // don't use this module
    input ept_auto_rst_in,  // reset this block itself
    output rst_out,         // master reset out to endpoint
    // need a "trying to reset" bit? TS are zero when reset ...
    output err_out          // master error signal to framebuilder - endpoint cannot lock
    );
    
    reg [2:0] curr_state = 3'b000;
    reg [2:0] next_state = 3'b000;
    localparam  START = 0,
                COUNT = 1,    
                MONITOR = 2, 
                DO_RESET = 3,
                ERROR = 4,
                NA5 = 5,
                NA6 = 6,
                NA7 = 7;
              
    reg [31:0] counter = 32'h00000000;
    reg [3:0] retry_count = 4'b0000;
    reg tmo_clear = 1'b1;

    reg ept_auto_rst_out = 1'b0;
    
    reg err_out_reg = 1'b0;
    assign err_out = err_out_reg;
    
    // Allow disabling of this block
    assign rst_out = pass_thru ? srst_in : (srst_in | ept_auto_rst_out);
    
    // timeout counter
    always @ (posedge clk_in)
    begin
        if (tmo_clear)
            counter = 32'h00000000;
        else
            counter <= counter + 1;
    end
    
    // FSM
    always @ (posedge clk_in)
    begin
        if (srst_in)
            curr_state <= START;
        else
            curr_state <= next_state;
    end
    
    always @ (*)
    begin
        next_state = curr_state;
        case (curr_state)
            START:
            begin
                ept_auto_rst_out = 0;
                err_out_reg = 0;
                tmo_clear = 1;
                retry_count = retry_count + 1;
                if (!srst_in)
                    next_state = COUNT;
            end
            
            COUNT:
            begin
                ept_auto_rst_out = 0;
                err_out_reg = 0;
                tmo_clear = 0;
                if (counter >= timeout)
                begin
                    tmo_clear = 1'b1;
                    next_state = MONITOR;
                end
            end
            
            MONITOR:
            begin
                ept_auto_rst_out = 0;
                err_out_reg = 0;
                tmo_clear = 1; // reset counter
                if (stat_in !== 4'b1000)
                    next_state = DO_RESET;
            end
            
            DO_RESET:
            begin
                ept_auto_rst_out = 1; // reset endpoint
                err_out_reg = 0;
                tmo_clear = 1;
                if (retry_count > retry_in)
                    next_state = ERROR;
                else 
                    next_state = START;
            end
            
            ERROR:
            begin
                tmo_clear = 1;
                if (ept_auto_rst_in)
                begin
                    retry_count = 4'b0000;
                    next_state = START;
                end
                else
                begin
                    ept_auto_rst_out = 1;
                    err_out_reg = 1; // output error
                end
            end
        endcase
    end
endmodule
