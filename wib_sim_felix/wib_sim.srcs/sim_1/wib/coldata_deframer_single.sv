module coldata_deframer_single #(parameter NUM = 0)
(
    input rxclk2x,
    input rx_usrclk2, // rx data clock
    input [15 :0] rx_data,
    input [1:0]   rx_k,

    output [13:0] deframed [31:0],
    output reg valid14,
    output reg valid12,
    
    output reg [1:0] crc_err
);

    typedef enum bit[3:0]
    {
        IDLE = 4'h0,
        HEAD = 4'h1,
        TI14 = 4'h2,
        TI12 = 4'h3,
        FR14 = 4'h4,
        FR12 = 4'h5,
        CRC0_14 = 4'h6,
        CRC1_14 = 4'h7,
        CRC0_12 = 4'h8,
        CRC1_12 = 4'h9
    } df_state_t;
    
    df_state_t df_state = IDLE;
    reg rx_usrclk_edge = 1'b0; 
    reg rx_usrclk_edge_r, rx_usrclk_edge_rr;
    reg [7:0] rx_byte0, rx_byte1;
    reg rx_k0, rx_k1;
    reg [7:0] time8;
    reg [7:0] byte_cnt;

    localparam FR14_BYTE_COUNT = 8'd56; // 32 samples x 14 bits
    localparam FR12_BYTE_COUNT = 8'd48; // 32 samples x 12 bits
    localparam FR14_BITS = 32*14; // max number of bits in one entire frame
    localparam FR12_BITS = 32*12; // max number of bits in one entire frame
    
    // various K symbols used in format
    localparam SYM_IDLE = 8'hbc;
    localparam SYM_FR12 = 8'h5c;
    localparam SYM_FR14 = 8'h7c;
    localparam SYM_FRDD = 8'h1c;
    
    // how many bytes per ADC in each frame format
    localparam ADC_BYTES_12 = 8'd24;
    localparam ADC_BYTES_14 = 8'd28;

    reg [FR14_BITS-1:0] parallel_frame; // storage for the complete data from one entire frame
    reg [7:0] crc [1:0];
    
    wire [13:0] deframed14 [31:0];
    wire [13:0] deframed12 [31:0];
    
    genvar gi;
    // deframe from parallel storage
    generate
        for (gi = 0; gi < 32; gi++)
        begin
            assign deframed14 [31-gi] =  parallel_frame [gi*14 +: 14]; 
            assign deframed12 [31-gi] = {parallel_frame [gi*12 +: 12], 2'b0}; // pad 12-bit data with zeros
        end
    endgenerate
    // common output bus carrying deframed data
    assign deframed = (valid12) ? deframed12 : deframed14;

    always @(posedge rx_usrclk2)
    begin
        rx_usrclk_edge = ~rx_usrclk_edge;
    end

    always @(posedge rxclk2x)
    begin
        valid14 = 1'b0;
        valid12 = 1'b0;
        case (df_state)
        
            IDLE: 
            begin
                parallel_frame = 0;
                // wait for header
                if (rx_k0 == 1'b1 && rx_byte0 == SYM_IDLE) // header starts
                    df_state = HEAD;        
            end
            
            HEAD: 
            begin
                if (rx_k0 == 1'b1 && rx_byte0 == SYM_FR14) // FRAME 14 marker
                    df_state = TI14;

                if (rx_k0 == 1'b1 && rx_byte0 == SYM_FR12) // FRAME 12 marker
                    df_state = TI12;

                if (rx_k0 == 1'b1 && rx_byte0 == SYM_FRDD) // FRAME DD marker
                    df_state = TI12; // same decoder as Frame 12
            end
            
            TI14:
            begin
                time8 = rx_data; // store time marker
                df_state = FR14;
                byte_cnt = 8'h0;
                crc = '{8'h0, 8'h0};
            end
            
            TI12: 
            begin
                time8 = rx_data; // store time marker
                df_state = FR12;
                byte_cnt = 8'h0;
                crc = '{8'h0, 8'h0};
            end
            
            FR14:
            begin
                parallel_frame = {parallel_frame[FR14_BITS-9:0], rx_byte0}; // shift byte into frame storage
                
                crc [byte_cnt >= ADC_BYTES_14] += rx_byte0; // update CRC for corresponding ADC
                byte_cnt++;

                if (rx_k0 == 1'b1) // K symbol out of place, invalid frame
                    df_state = IDLE;
                if (byte_cnt == FR14_BYTE_COUNT) // done receiving data, go to CRC
                    df_state = CRC0_14;    
            end
            
            FR12: 
            begin
                parallel_frame = {parallel_frame[FR12_BITS-9:0], rx_byte0}; // shift byte into frame storage
                
                crc [byte_cnt >= ADC_BYTES_12] += rx_byte0; // update CRC for corresponding ADC
                byte_cnt++;

                if (rx_k0 == 1'b1) // K symbol out of place, invalid frame
                    df_state = IDLE;
                if (byte_cnt == FR12_BYTE_COUNT) // done receiving data, go to CRC
                    df_state = CRC0_12;    
            end
            
            CRC0_14:
            begin
                crc_err[0] = crc[0] != rx_byte0;
                df_state = CRC1_14;
            end
            
            CRC1_14:
            begin
                crc_err[1] = crc[1] != rx_byte0;
                valid14 = 1'b1; // frame 14 data is ready for pick up
                df_state = IDLE;
            end
            
            CRC0_12:
            begin
                crc_err[0] = crc[0] != rx_byte0;
                df_state = CRC1_12;
            end
            
            CRC1_12:
            begin
                crc_err[1] = crc[1] != rx_byte0;
                valid12 = 1'b1; // frame 12 data is ready for pick up
                df_state = IDLE;
            end
            
        endcase
        
        if (rx_usrclk_edge_r == rx_usrclk_edge_rr)
        begin
            {rx_byte1, rx_byte0} = rx_data; // lock new data word at the 62.5M edge
            {rx_k1, rx_k0} = rx_k;
        end
        else
        begin
            rx_byte0 = rx_byte1; // shift another byte for processing
            rx_k0 = rx_k1;
        end
    end
    
    always @(negedge rxclk2x) // negedge is actually needed for simulation only, could be done on posedge in real fw
    begin
        rx_usrclk_edge_rr = rx_usrclk_edge_r;
        rx_usrclk_edge_r = rx_usrclk_edge;
    end

    generate
        if (NUM == 0)
        begin
            ila_2 ila_deframer 
            (
                .clk    (rxclk2x), // input wire clk
                .probe0 (rx_byte0), // input wire [7:0]  probe0
                .probe1 (rx_byte1), // input wire [7:0]  probe1
                .probe2 (rx_k0), // input wire [0:0]  probe2
                .probe3 (rx_k1), // input wire [0:0]  probe3
                .probe4 (df_state), // input wire [3:0]  probe4
                .probe5 (byte_cnt) // input wire [7:0]  probe5
            );
        end

    endgenerate

endmodule

