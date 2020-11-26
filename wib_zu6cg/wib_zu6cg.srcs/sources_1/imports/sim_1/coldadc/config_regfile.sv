`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
///////////////////////////////////////////////////////////////////
// File Name: config_regfile.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description: Dual-port register file for configuration bits 
//              Regfile has 58 distinct 8-bit registers
//
///////////////////////////////////////////////////////////////////

module config_regfile
    (output logic [7:0] config_bits [0:55], // output bits
    output logic [7:0] read_data,           // RAM data out (for readback)
    input logic [6:0] write_addr,           // RAM write address 
    input logic [7:0] write_data,           // RAM data in
    input logic [6:0] read_addr,            // RAM read address 
    input logic write,                      // high for write op
    input logic read,                       // high for read op
    input logic load_config_defaults,       // load config default values
    input logic clk,                        // system clock
    input logic reset_n                     // digital reset (active low)
);

// configuration word definitions
localparam BUFFER = 0;
localparam SHA_0 = 1;
localparam SHA_1 = 2;
localparam SHA_2 = 3;
localparam SHA_3 = 4;
localparam SHA_4 = 5;
localparam SHA_5 = 6;
localparam SHA_6 = 7;
localparam ADC_0 = 8;
localparam ADC_1 = 9;
localparam REF_0 = 10;
localparam REF_1 = 11;
localparam REF_2 = 12;
localparam REF_3 = 13;
localparam REF_4 = 14;
localparam REF_5 = 15;
localparam REF_6 = 16;
localparam REF_7 = 17;
localparam REF_8 = 18;
localparam REF_9 = 19;
localparam REF_10 = 20;
localparam REF_11 = 21;
localparam REF_12 = 22;
localparam REF_13 = 23;
localparam CMOS_REF_0 = 24;
localparam CMOS_REF_1 = 25;
localparam CMOS_REF_2 = 26;
localparam CMOS_REF_3 = 27;
localparam CMOS_REF_4 = 28;
localparam CMOS_REF_5 = 29;
localparam CMOS_REF_6 = 30;
localparam CAL_0 = 31;
localparam CAL_1 = 32;
localparam CAL_2 = 33;
localparam CAL_3 = 34;
localparam CAL_4 = 35;
localparam CAL_5 = 36;
localparam CAL_6 = 37;
localparam CAL_7 = 38;
localparam CAL_8 = 39;
localparam CAL_9 = 40;
localparam SSO_0 = 41;
localparam SSO_1 = 42;
localparam SSO_2 = 43;
localparam FORCE_0 = 44;
localparam FORCE_1 = 45;
localparam FORCE_2 = 46;
localparam MONITOR = 47;
localparam BACKEND_0 = 48;
localparam BACKEND_1 = 49;
localparam BACKEND_2 = 50;
localparam BACKEND_3 = 51;
localparam BACKEND_4 = 52;
localparam BACKEND_5 = 53;
localparam BACKEND_6 = 54;
localparam SPARE = 55;



always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        read_data <= 8'b0;
        // SET DEFAULTS
        config_bits[BUFFER] <= 8'h52;
        config_bits[SHA_0] <= 8'h00;
        config_bits[SHA_1] <= 8'h00;
        config_bits[SHA_2] <= 8'h00;
        config_bits[SHA_3] <= 8'h33;
        config_bits[SHA_4] <= 8'h33;
        config_bits[SHA_5] <= 8'h33;
        config_bits[SHA_6] <= 8'h33;
        config_bits[ADC_0] <= 8'h0A;
        config_bits[ADC_1] <= 8'h00;
        config_bits[REF_0] <= 8'hFA;
        config_bits[REF_1] <= 8'h3A;
        config_bits[REF_2] <= 8'h9A;
        config_bits[REF_3] <= 8'h73;
        config_bits[REF_4] <= 8'hFF;
        config_bits[REF_5] <= 8'h99;
        config_bits[REF_6] <= 8'h99;
        config_bits[REF_7] <= 8'h99;
        config_bits[REF_8] <= 8'h99;
        config_bits[REF_9] <= 8'h00;
        config_bits[REF_10] <= 8'h00;
        config_bits[REF_11] <= 8'h00;
        config_bits[REF_12] <= 8'h00;
        config_bits[REF_13] <= 8'h30;
        config_bits[CMOS_REF_0] <= 8'h00;
        config_bits[CMOS_REF_1] <= 8'h00;
        config_bits[CMOS_REF_2] <= 8'h00;
        config_bits[CMOS_REF_3] <= 8'h00;
        config_bits[CMOS_REF_4] <= 8'h0C;
        config_bits[CMOS_REF_5] <= 8'h27;
        config_bits[CMOS_REF_6] <= 8'h27;
        config_bits[CAL_0] <= 8'h00;
        config_bits[CAL_1] <= 8'h7F;
        config_bits[CAL_2] <= 8'h00;
        config_bits[CAL_3] <= 8'h00;
        config_bits[CAL_4] <= 8'h00;
        config_bits[CAL_5] <= 8'h00;
        config_bits[CAL_6] <= 8'h00;
        config_bits[CAL_7] <= 8'h00;
        config_bits[CAL_8] <= 8'h00;
        config_bits[CAL_9] <= 8'h00;
        config_bits[SSO_0] <= 8'h00;
        config_bits[SSO_1] <= 8'hA5;
        config_bits[SSO_2] <= 8'hCA;
        config_bits[FORCE_0] <= 8'h00;
        config_bits[FORCE_1] <= 8'h00;
        config_bits[FORCE_2] <= 8'h00;
        config_bits[MONITOR] <= 8'h00;
        config_bits[BACKEND_0] <= 8'h07;
        config_bits[BACKEND_1] <= 8'h00;
        config_bits[BACKEND_2] <= 8'h00;
        config_bits[BACKEND_3] <= 8'hcd;
        config_bits[BACKEND_4] <= 8'hab;
        config_bits[BACKEND_5] <= 8'h34;
        config_bits[BACKEND_6] <= 8'h12;
        config_bits[SPARE] <= 8'h00;
    end 
    else begin
        if (load_config_defaults) begin
                    // SET DEFAULTS
        config_bits[BUFFER] <= 8'h52;
        config_bits[SHA_0] <= 8'h00;
        config_bits[SHA_1] <= 8'h00;
        config_bits[SHA_2] <= 8'h00;
        config_bits[SHA_3] <= 8'h33;
        config_bits[SHA_4] <= 8'h33;
        config_bits[SHA_5] <= 8'h33;
        config_bits[SHA_6] <= 8'h33;
        config_bits[ADC_0] <= 8'h0A;
        config_bits[ADC_1] <= 8'h00;
        config_bits[REF_0] <= 8'hFA;
        config_bits[REF_1] <= 8'h3A;
        config_bits[REF_2] <= 8'h9A;
        config_bits[REF_3] <= 8'h73;
        config_bits[REF_4] <= 8'hFF;
        config_bits[REF_5] <= 8'h99;
        config_bits[REF_6] <= 8'h99;
        config_bits[REF_7] <= 8'h99;
        config_bits[REF_8] <= 8'h99;
        config_bits[REF_9] <= 8'h00;
        config_bits[REF_10] <= 8'h00;
        config_bits[REF_11] <= 8'h00;
        config_bits[REF_12] <= 8'h00;
        config_bits[REF_13] <= 8'h30;
        config_bits[CMOS_REF_0] <= 8'h00;
        config_bits[CMOS_REF_1] <= 8'h00;
        config_bits[CMOS_REF_2] <= 8'h00;
        config_bits[CMOS_REF_3] <= 8'h00;
        config_bits[CMOS_REF_4] <= 8'h0C;
        config_bits[CMOS_REF_5] <= 8'h27;
        config_bits[CMOS_REF_6] <= 8'h27;
        config_bits[CAL_0] <= 8'h00;
        config_bits[CAL_1] <= 8'h7F;
        config_bits[CAL_2] <= 8'h00;
        config_bits[CAL_3] <= 8'h00;
        config_bits[CAL_4] <= 8'h00;
        config_bits[CAL_5] <= 8'h00;
        config_bits[CAL_6] <= 8'h00;
        config_bits[CAL_7] <= 8'h00;
        config_bits[CAL_8] <= 8'h00;
        config_bits[CAL_9] <= 8'h00;
        config_bits[SSO_0] <= 8'h00;
        config_bits[SSO_1] <= 8'hA5;
        config_bits[SSO_2] <= 8'hCA;
        config_bits[FORCE_0] <= 8'h00;
        config_bits[FORCE_1] <= 8'h00;
        config_bits[FORCE_2] <= 8'h00;
        config_bits[MONITOR] <= 8'h00;
        config_bits[BACKEND_0] <= 8'h07;
        config_bits[BACKEND_1] <= 8'h00;
        config_bits[BACKEND_2] <= 8'h00;
        config_bits[BACKEND_3] <= 8'hcd;
        config_bits[BACKEND_4] <= 8'hab;
        config_bits[BACKEND_5] <= 8'h34;
        config_bits[BACKEND_6] <= 8'h12;
        config_bits[SPARE] <= 8'h00;
        end
        if (write) begin       
            config_bits[write_addr] <= write_data;
        end // write            
        if (read) begin
            read_data <= config_bits[read_addr];
        end   // read         
     end // else
end // always_ff

endmodule
                
        

