`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
///////////////////////////////////////////////////////////////////
// File Name: uart.sv
// Engineer:  Carl Grace (crgrace@lbl.gov)
// Description:
//          Custom UART_ADC that interfaces with the regflile
//          Includes FSM and RX/TX blocks
//          UART_ADC packet definition:
//  bit:      21      20:13        12:5      4:1      0 
//                |            |          |       |
//          parity     addr        data    chip_id  wrb  
//
//  Output format: packet is sent LSB-first, preceded by a start bit = 0
//  and ended by a stop bit = 1          
///////////////////////////////////////////////////////////////////

module uart 
   (output logic miso,                      // output from current chip
    output logic [7:0] write_addr_external, // write address from RAM to UART_ADC
    output logic [7:0] write_data_external, // RAM data from UART_ADC_RX
    output logic [7:0] read_addr_external,  // read address from RAM to UART_ADC
    output logic external_mode,             // high during UART_ADC transaction
    output logic write_external,            // high to write to RAM
    output logic read_external,             // high to read from RAM
    input logic mosi,                       // input to current chip
    input logic [7:0] regfile_data,         // data read from regfile
    input logic [3:0] chip_id,              // unique ID for each chip
    input logic clk,                        // master clk
    input logic reset_n);        // asynchronous digital reset (active low)   

// local signals

enum logic [2:0] {IDLE                  = 3'h0,
                DATA_IN_RX              = 3'h1,
                ULD_RX_DATA             = 3'h2,
                DETERMINE_TRANSACTION   = 3'h3,
                WRITE                   = 3'h4,
                READ                    = 3'h5,
                PASS_ALONG              = 3'h6} State, Next;

logic [21:0] finished_packet; // packet to send off chip (includes parity)
logic [3:0] txclk_counter;  // tx clk is 1/16 rx clk speed 
logic [20:0] output_packet; // packet without parity bit 
logic ld_tx_data; // high to transfer data to tx uart
logic tx_busy;    // high if tx uart sending data
logic uld_rx_data;  // clear (unload) rx uart data
logic [21:0] rx_data;  // data from rx_uart
logic rx_empty;  // high if no data waiting in rx uart

// fsm signals
logic this_chip; // high if chip_id same as for this chip
logic [1:0] write_counter;        // 2 clks to write
logic [4:0] pass_counter;   // need to load ld_tx_data 16 clk cycles
logic [4:0] read_counter;   // need to hold ld_tx_data 16 clk cycles

always_comb begin // is this our chip?
    if (rx_data[4:1] == chip_id)
        this_chip = 1'b1;
    else
        this_chip = 1'b0;
end // always comb

// calculate parity
always_comb begin
    finished_packet = {~^output_packet,output_packet};
end // always_comb

// generate tx uart clock (double period of clk)
always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        txclk_counter <= 4'b0;
    end
    else begin
        txclk_counter <= txclk_counter + 1'b1;;
    end
end // always_ff

always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) State <= IDLE;
    else State <= Next;
end // always

always_comb begin: set_next_state
    unique case (State)
        IDLE:   begin
                    if (!rx_empty)              Next = DATA_IN_RX;
                    else                        Next = IDLE;
                end
        DATA_IN_RX:                             Next = ULD_RX_DATA;
        ULD_RX_DATA:                            Next = DETERMINE_TRANSACTION;
        DETERMINE_TRANSACTION: begin
                    if (rx_data[0] && this_chip)        Next = WRITE;
                    else if (!rx_data[0] && this_chip)  Next = READ;
                    else                                Next = PASS_ALONG;
                end
        WRITE:  begin
                    if (write_counter == 2'd2)     Next = IDLE;
                    else                        Next = WRITE;
                end
        READ:   begin
                    if (read_counter == 5'd20)      Next = IDLE;
                    else                        Next = READ;
                end
        PASS_ALONG: begin
                        if (pass_counter == 5'd20)  Next = IDLE;
                        else                    Next = PASS_ALONG;
                    end
        default:                    Next = IDLE;         
    endcase
end :set_next_state


// registered outputs
always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        output_packet <= 21'b0;
        external_mode <= 1'b0;
        ld_tx_data <= 1'b0;
        write_addr_external <= 8'b0;
        write_data_external <= 8'b0;
        read_addr_external <= 8'b0;
        uld_rx_data <= 1'b0;
        write_counter <= 2'b0;
        pass_counter <= 5'b0;
        read_counter <= 5'b0;
    end 
    else begin
        uld_rx_data <= 1'b0;
        ld_tx_data <= 1'b0;
        external_mode <= 1'b0;
        read_external <= 1'b0;
        write_external <= 1'b0;

        unique case (Next)
            IDLE:                   begin
                                        write_counter <= 2'b0;
                                        pass_counter <= 5'b0;
                                        read_counter <= 5'b0;
                                    end
            DATA_IN_RX:             begin
                                        uld_rx_data <= 1'b1;
                                    end
            ULD_RX_DATA:            ;
            DETERMINE_TRANSACTION:  begin
                                        output_packet <= rx_data[22-2:0];
                                    end 
            WRITE:                  begin
                                        external_mode <= 1'b1;
                                        write_addr_external <= rx_data[20:13];
                                        write_data_external <= rx_data[12:5];
                                        write_external <= 1'b1;
                                        write_counter <= write_counter + 1'b1;
                                    end
            READ:                   begin
                                        if (read_counter < 5'b00011) begin
                                            ld_tx_data <= 1'b0;
                                        end
                                        else begin
                                            ld_tx_data <= 1'b1;
                                        end
                                        external_mode <= 1'b1;
                                        read_addr_external <= rx_data[20:13];
                                        output_packet[12:5] <= regfile_data;
                                        read_external <= 1'b1;
                                        read_counter <= read_counter + 1'b1;
                                    end
            PASS_ALONG:             begin
                                        if (pass_counter < 5'b00011) begin
                                            ld_tx_data <= 1'b0;
                                        end
                                        else begin
                                            ld_tx_data <= 1'b1;
                                        end
                                        pass_counter <= pass_counter + 1'b1;
                                    end
            default:                begin
                                        write_counter <= 2'b00;
                                        pass_counter <= 5'b0;
                                        read_counter <= 5'b0;
                                    end
         endcase
    end
end // case
        
// block instantiations
uart_rx
    uart_rx_inst (
    .rx_in(mosi),
    .rxclk(clk),
    .*);

uart_tx
    uart_tx_inst (
    .tx_out(miso),
    .tx_data(finished_packet),
    .txclk(txclk_counter[3]),
    .*);

endmodule
