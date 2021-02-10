`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
//////////////////////////////////////////////////////////////////////////
// File Name: sso.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description: interface for sending ADC data or decision bits off chip
//              for evaluation, bypasses frame builder
//              System clock should be used for sso_data_clk
//              SSO stands for Slow Serial Output
//////////////////////////////////////////////////////////////////////////

module sso
    (output logic sso_data_out [1:0],     // output bits (ADC1 and ADC0)
    output logic sso_frame_clk,     // frame clock (div16)  
    input logic [15:0] adc0_calibrated,         // processed ADC0 outputs
    input logic [15:0] adc0_uncalibrated,       // raw ADC0 outputs
    input logic [14:0] msb0,                    //  msb decisions (ADC0)
    input logic [14:0] lsb0,                    //  lsb decisions (ADC0)
    input logic [15:0] adc1_calibrated,         // processed ADC1 outputs
    input logic [15:0] adc1_uncalibrated,       // raw ADC1 outputs
    input logic [14:0] msb1,                    //  msb decisions (ADC1)
    input logic [14:0] lsb1,                    //  lsb decisions (ADC1)
    input logic [15:0] sso_testword,   // test word to send out
    input logic [2:0] op_mode,          // 000 - calibrated ADC outputs
                                        // 001 - uncalibrated ADC outputs
                                        // 010 - decision mode (ADC0)
                                        //          lsb0 -> 0, msb0 -> 1
                                        // 011 - decision mode (ADC1)
                                        //          lsb1 -> 0, msb1 -> 1
                                        // 100 - test mode
                                        //          counter16 -> 0
                                        //          sso_testword -> 1      
    input logic sso_enable,             // enable serial port   
    input logic clk,                    // calibration engine clock
    input logic reset_n);               // digital reset (active low)

logic delay_reg;
logic counter_enable;
logic [15:0] counter_16b;
logic [15:0] selected_data[1:0]; // data to send out
logic load_shift_reg;
logic [3:0] load_counter;
logic sso_frame_clk_internal;

always_comb begin
    sso_frame_clk = (sso_enable) ? sso_frame_clk_internal : 1'b0;
end // always_comb

always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin 
        sso_frame_clk_internal <= 1'b0;
        delay_reg <= 1'b0;
    end 
    else begin 
        sso_frame_clk_internal <= delay_reg;
        delay_reg <= load_shift_reg;
    end // if
end // always_ff

always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        load_counter <= 4'b0000;
        load_shift_reg <= 1'b0;
    end 
    else begin
        if (load_counter == 4'b1111) 
            load_shift_reg <= 1'b1;
        else load_shift_reg <= 1'b0;
        load_counter <= load_counter + 1'b1;
    end
end // always_ff

always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        counter_16b <= 16'b0;
    end 
    else if (load_shift_reg && counter_enable) begin
        counter_16b <= counter_16b + 1'b1;   
    end 
end // always_ff     

always_comb begin
    counter_enable = 1'b0;
    unique case (op_mode)
        3'b000 :    begin
                        selected_data[0] = adc0_calibrated;
                        selected_data[1] = adc1_calibrated;
                    end
        3'b001 :    begin
                        selected_data[0] = adc0_uncalibrated;
                        selected_data[1] = adc1_uncalibrated;
                    end     
        3'b010 :    begin
                        selected_data[0] = {1'b0,lsb0};
                        selected_data[1] = {1'b0,msb0};
                    end
        3'b011 :    begin
                        selected_data[0] = {1'b0,lsb1};
                        selected_data[1] = {1'b0,msb1};
                    end
        3'b100 :    begin
                        counter_enable = 1'b1;
                        selected_data[0] = counter_16b;
                        selected_data[1] = sso_testword;
                    end
        default:    begin
                        selected_data[0] = adc0_calibrated;
                        selected_data[1] = adc1_calibrated;
                    end
    endcase

end // always_comb


shift_reg  
    shiftreg_inst0 (
    .shift_out      (sso_data_out[0]),
    .data_in        (selected_data[0]),
    .enable         (sso_enable),
    .load           (load_shift_reg),
    .clock          (clk),
    .reset_n        (reset_n)
    );

shift_reg  
    shiftreg_inst1 (
    .shift_out      (sso_data_out[1]),
    .data_in        (selected_data[1]),
    .enable         (sso_enable),
    .load           (load_shift_reg),
    .clock          (clk),
    .reset_n        (reset_n)
    );

endmodule
