`timescale 1ns / 1ps
module calibration_pulser
(
    input         clk, 
    input         adc_edge, // ADC EDGE command that resets 2 MHz clock
    input  [20:0] period, // cal pulse period in 2 MHz clock periods
    input  [4:0]  phase, // phase relative to 2 MHz clock, in 62.5M clock periods
    input  [26:0] high_time, // high pulse time, in 62.5M clock periods 
    input  [3:0]  femb_en, // enable pulses on FEMBs
    output reg [3:0] cal_pulse,
    output reg [3:0] cal_pulse_mon
);

    reg [4:0] adc_clk_phase; // ADC clock follower
    reg [20:0] period_cnt; // pulse period counter
    reg [26:0] high_cnt; // high time counter
    reg pulse;
    reg [3:0] cp;

    always @(posedge clk)
    begin
    
        if (adc_edge) adc_clk_phase = 5'b0; // EDGE command, reset ADC clock follower
        else adc_clk_phase++;
        
        if (adc_clk_phase == phase) // ADC 2MHz clock clicked
        begin
            if (period_cnt == period) // clock period expired
            begin
                high_cnt = 27'h0; // reset high time counter
                period_cnt = 21'h0; // reset period counter
            end
            else period_cnt++; // increment period counter
        end
        
        pulse = high_cnt < high_time; // common pulse signal
        cal_pulse     = cp;
        cal_pulse_mon = cp;
        cp = femb_en & {4{pulse}}; // apply enables 
        high_cnt++; 
    end

    ila_cal_pulse ila_cp
    (
        .clk    (clk), // input wire clk
        .probe0 (adc_clk_phase), // input wire [4:0]  probe0  
        .probe1 (period_cnt), // input wire [20:0]  probe1 
        .probe2 (high_cnt), // input wire [26:0]  probe2 
        .probe3 (pulse), // input wire [0:0]  probe3 
        .probe4 (cp) // input wire [3:0]  probe4
    );
endmodule
