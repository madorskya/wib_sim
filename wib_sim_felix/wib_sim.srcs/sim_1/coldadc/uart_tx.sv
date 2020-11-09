`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
///////////////////////////////////////////////////////////////////
// File Name: uart_tx.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description: Simple UART_ADC transmitter.
//              Adapted from orignal design by Deepak Tala
//              RX should use 16X oversampled clock relative to TX
//              UART_ADC word width is 22 bits.
///////////////////////////////////////////////////////////////////

module uart_tx

    (output logic tx_out,           // tx bit
    output logic tx_busy,           // high when transmitter sending data
    input logic [21:0] tx_data,     // data to be sent by uart
    input logic ld_tx_data,         // high to transfer data word to uart tx
    input logic txclk,              // baud-rate clock for tx
    input logic reset_n);           // digital reset (active low) 

// Internal Variables 
logic [21:0] tx_reg;
logic [7:0] tx_cnt;

// UART_ADC TX Logic
always_ff @ (posedge txclk or negedge reset_n) begin
    if (!reset_n) begin
        tx_reg <= 22'b0;
        tx_busy <= 1'b0;
        tx_out <= 1'b1;
        tx_cnt <= 8'b0;
  
    end else begin
        if (ld_tx_data) begin
            tx_reg   <= tx_data;
            tx_busy <= 1'b1;
        end
        if (tx_busy) begin
            tx_cnt <= tx_cnt + 1'b1;
            if (tx_cnt == 8'b0) begin
                tx_out <= 1'b0;
            end
            if (tx_cnt > 8'b0 && tx_cnt <= 8'd22) begin
                tx_out <= tx_reg[tx_cnt - 1'b1];
            end
            if (tx_cnt > 8'd22) begin
                tx_out <= 1'b1;
                tx_cnt <= 8'b0;
                tx_busy <= 1'b0;
            end
        end

    end 
end // always_ff
endmodule

