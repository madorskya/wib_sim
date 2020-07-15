module coldata_deframer_single
(
    input rxclk2x,
    input rx_usrclk2, // rx data clock
    input [15 :0] rx_data,
    input [1:0]   rx_k,

    output [13:0] deframed14 [31:0],
    output reg valid14,

    output [13:0] deframed12 [31:0],
    output reg valid12
);

    typedef enum
    {
        IDLE = 3'h0,
        HEAD = 3'h1,
        TI14 = 3'h2,
        TI12 = 3'h3,
        FR14 = 3'h4,
        FR12 = 3'h5,
        CRC  = 3'h6
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

    reg [FR14_BITS-1:0] parallel_frame; // storage for the complete data from one entire frame
    reg [7:0] crc;
    
    
    genvar gi;
    // deframe from parallel storage
    generate
        for (gi = 0; gi < 32; gi++)
        begin
            assign deframed14 [31-gi] =  parallel_frame [gi*14 +: 14]; 
            assign deframed12 [31-gi] = {parallel_frame [gi*12 +: 12], 2'b0}; // pad 12-bit data with zeros
        end
    endgenerate

    always @(posedge rx_usrclk2)
    begin
        rx_usrclk_edge = ~rx_usrclk_edge;
    end

    always @(posedge rxclk2x)
    begin
        case (df_state)
        
            IDLE: 
            begin
                parallel_frame = 0;
                // wait for header
                if (rx_k0 == 1'b1 && rx_byte0 == 8'hbc) // header starts
                    df_state = HEAD;        
            end
            
            HEAD: 
            begin
                if (rx_k0 == 1'b1 && rx_byte0 == 8'h7c) // FRAME 14 marker
                    df_state = TI14;

                if (rx_k0 == 1'b1 && rx_byte0 == 8'h5c) // FRAME 12 marker
                    df_state = TI12;
            end
            
            TI14:
            begin
                time8 = rx_data; // store time marker
                df_state = FR14;
                byte_cnt = 8'h0;
                crc = 8'h0;
            end
            
            TI12: 
            begin
                time8 = rx_data; // store time marker
                df_state = FR12;
                byte_cnt = 8'h0;
                crc = 8'h0;
            end
            
            FR14:
            begin
                if (rx_k0 == 1'b1)
                    df_state = IDLE;
                if (byte_cnt == FR14_BYTE_COUNT)
                    df_state = CRC;    
                    
                parallel_frame = {parallel_frame[FR14_BITS-9:0], rx_byte0}; // shift byte into frame storage
                byte_cnt++;
                crc += rx_byte0;
            end
            
            FR12: 
            begin
                if (rx_k0 == 1'b1)
                    df_state = IDLE;
                if (byte_cnt == FR12_BYTE_COUNT)
                    df_state = CRC;    

                parallel_frame = {parallel_frame[FR12_BITS-9:0], rx_byte0}; // shift byte into frame storage
                byte_cnt++;
                crc += rx_byte0;
            end
            
            CRC:
            begin
                if (rx_k0 == 1'b1) // just ignoring CRC so far
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

endmodule

