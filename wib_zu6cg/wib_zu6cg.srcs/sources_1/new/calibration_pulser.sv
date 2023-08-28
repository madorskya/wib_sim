`timescale 1ns / 1ps
module calibration_pulser
(
    input         clk, 
    input         adc_edge, // ADC EDGE command that resets 2 MHz clock
    input  [20:0] period, // cal pulse period in 2 MHz clock periods
    input  [4:0]  phase, // phase relative to 2 MHz clock, in 62.5M clock periods
    input  [26:0] high_time, // high pulse time, in 62.5M clock periods 
    input  [3:0]  femb_en, // enable pulses on FEMBs
    output reg [3:0] cal_pulse
);

    reg [4:0] adc_clk_phase; // ADC clock follower
    reg [20:0] period_cnt; // pulse period counter
    reg [26:0] high_cnt; // high time counter
    reg pulse;
    

    always @(posedge clk)
    begin
    
        if (adc_edge) adc_clk_phase = 5'b0; // EDGE command, reset ADC clock follower
        else adc_clk_phase++;
        
        if (adc_clk_phase == 5'b0) // ADC 2MHz clock clicked
        begin
            if (period_cnt == period) // clock period expired
            begin
                high_cnt = 27'h0; // reset high time counter
                period_cnt = 21'h0; // reset period counter
            end
            else period_cnt++; // increment period counter
        end
        
        pulse = high_cnt < high_time; // common pulse signal
        cal_pulse = femb_en & {4{pulse}}; // apply enables 
        high_cnt++; 
    end

endmodule
