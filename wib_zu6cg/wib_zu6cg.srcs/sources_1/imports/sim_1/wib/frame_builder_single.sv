module frame_builder_single #
(
    parameter NUM = 0, // number of this frame builder 
    parameter NLINKS = 2 // number of links processed
)
(
    input [13:0] deframed [NLINKS-1:0][31:0], // [link][sample]
    input [7:0]  time8 [NLINKS-1:0], //[link]
    input [15:0] time16 [NLINKS-1:0], //[link]
    input [NLINKS-1:0]  valid14,
    input [NLINKS-1:0]  valid12,
    input [NLINKS-1:0]  link_mask, // this input allows to disable some links in case they are broken
    input [1:0]  crc_err [NLINKS-1:0],
    input        rxclk2x, // deframed data clock

    output reg [63:0] ddi_d,
    output reg        ddi_d_last,
    output reg        ddi_d_valid,

    input [63:0] ts_tstamp, // time stamp is in deframed data domain
    input ts_clk, // time stamp clock, 62.5M
    input reset,
    input fake_daq_stream,
    input [3:0] bp_crate_addr,
    input [3:0] bp_slot_addr,
    input       si5344_lol, 
    // new header parameters, see Josh's message from 2021-12-06
    input [5:0]  link,
    input [9:0]  crate_id,
    input [5:0]  det_id,
    input [7:0]  femb_pulser_in_frame,
    input [7:0]  context_fld, 
    input        ready, 
    input        psr_cal, 
    input        ws, 
    input [15:0] flex,
    input raw_channel_map
);

    localparam NADCS = NLINKS * 2; // 2 ADCs per link

    reg [13:0] deframed_aligned [NLINKS-1:0][31:0]; // [link][sample]
    reg [NLINKS-1:0] valid_aligned;
    
    reg [13:0] fake_data [NLINKS-1:0][31:0]; // [link][sample]
    integer i, j, k, l;
    always @(*)
    begin
        for (i = 0; i < NLINKS; i++) // link loop
        begin
            for (j = 0; j < 32; j++) // sample loop
            begin
                fake_data[i][j] = {i[3:0], j[7:0]}; // link and sample indexes
            end
        end
    end

// within each link: 
// samples [15:0] = ADC0, samples [31:16] = ADC1

    reg [13:0] deframed_mapped [NADCS-1:0][15:0]; // [adc][sample]
    always @(*)
    begin
        for (k = 0; k < NADCS; k++) // adc loop, two ADCs per link
        begin
            for (l = 0; l < 16; l++) // sample loop
            begin
                // first index: 4 links per FEMB, 2 links per COLDATA, 1/2 link per ADC
                // second index: (ADC0 or 1) *16 + sample
                deframed_mapped[k][l] = deframed_aligned[k/2][{k[0], l[3:0]}];
            end
        end
    end

    wire                [63:0] tx_words_w [(NADCS*16*14/64)-1:0];
    (* async_reg *) reg [63:0] tx_words   [(NADCS*16*14/64)-1:0];

    frame_builder_femb #(.NADCS (NADCS)) fbf0
    (
        .deframed_mapped (deframed_mapped),
        .tx_words        (tx_words_w)
    );

    reg [7:0]  time8_reclocked [NLINKS-1:0]; //[link]
    reg [15:0] time16_reclocked [NLINKS-1:0]; //[link]

    // states of the DAQ streaming FSM
    typedef enum bit[3:0]
    {
        IDLE = 4'h0,
        HEAD0,
        HEAD1,
        HEAD2,
        DATA
    } fb_state_t;

    fb_state_t fb_state = IDLE;

    // states of the DAQ TX request FSM
    typedef enum bit [1:0]
    {
        DAQ_WAIT = 2'h0,
        DAQ_RQ
    } rq_state_t;
    
    rq_state_t rq_state = DAQ_WAIT;

    wire [63:0] header [2:0];
    reg [6:0] data_cnt;

    // various fields assigned temporarily
    wire [3:0] fr_ver = 4'h2; 
    wire [1:0] femb_val = 0; 
    wire       fnum = NUM; // FELIX fiber number
    (* ASYNC_REG = "TRUE" *) reg  [63:0] timestamp_reclocked;
    (* async_reg *) reg [3:0] data_ready;
    (* async_reg *) reg [3:0] rq_served;
    reg [7:0] time8_mismatch;
    reg [7:0] time16_mismatch;
    wire [5:0] version; 

    assign version = 6'h5; // DAQ readout version with mapping for mono FEMB and DEIMOS

    assign header[0] = timestamp_reclocked;

    assign header[1][15:0]  = time16_reclocked[0]       ; // COLDATA Link 0 time stamp
    assign header[1][31:16] = time16_reclocked[1]       ; // COLDATA Link 1 time stamp
    assign header[1][34:33] = {|crc_err[1], |crc_err[0]}; // CRC error                
    assign header[1][36:35] = ~link_mask                ; // Link valid               
    assign header[1][37]    = si5344_lol                ; // Loss of Lock             
    assign header[1][38]    = ws                        ; // WIB sync    ### TBD ###              
    assign header[1][40:39] = 2'b11                     ; // FEMB sync   ### TBD ###              
    assign header[1][41]    = 1'b0                      ; // Pulser      ### TBD ###              
    assign header[1][42]    = psr_cal                   ; // Calibration              
    assign header[1][43]    = ready                     ; // Ready                    
    assign header[1][51:44] = context_fld               ; // Context                  
    assign header[1][55:52] = version                   ; // Version                  
    assign header[1][63:56] = NUM[2:0]                  ; // Channel ID               
    assign header[1][32]    = 1'b0;                     ; // Reserved                 

    assign header[2] = 64'h0; // reserved


    // DAQ request FSM
    always @(posedge rxclk2x)
    begin
        if (reset)
        begin
            rq_state = DAQ_WAIT;
            valid_aligned = 8'h0;
            data_ready[0] = 1'b0;
        end
    
        case (rq_state)
            DAQ_WAIT:
            begin
                // here we wait until data arrive from all links so we can start frame forming
                data_ready[0] = 1'b0;
                if (valid_aligned == {NLINKS{1'b1}}) // all valid bits arrived
                begin
                    rq_state = DAQ_RQ;
                    data_ready[0] = 1'b1; // set the request bit
                    timestamp_reclocked = ts_tstamp; // store time stamp so it can be used in FELIX domain

                    // time stamp sync error logic
                    // compare each time stamp with system stamp
                    for (i = 0; i < NLINKS; i++)
                    begin
                        time16_mismatch[i] = (time16_reclocked[i][14:0] == timestamp_reclocked [14:0]) ? 1'b0 : 1'b1;
                    end
                    time16_mismatch |= link_mask; // masked links always mismatch
                end
                
                // update aligned valid flags    
                // masked links always considered aligned
                valid_aligned |= (valid12 | valid14 | link_mask);
                
                if (fake_daq_stream == 1'b1) valid_aligned = {NLINKS{1'b1}}; // set all valid flags to fake the DAQ stream
                else
                if (link_mask == {NLINKS{1'b1}}) valid_aligned = {NLINKS{1'b0}}; // if all links are masked, disable the requests, nothing is working
                
                for (i = 0; i < NLINKS; i++) // link loop
                begin
                    if (fake_daq_stream == 1'b1)
                    begin
                        deframed_aligned[i] = fake_data[i];
                        time8_reclocked[i] = 8'hab;
                        time16_reclocked[i] = 16'hbabe;
                    end
                    else if (valid12[i] || valid14[i]) // valid bit came from that link 
                    begin
                        deframed_aligned[i] = deframed[i]; // store data
                        time8_reclocked[i] = time8[i]; // store the COLDATA time stamp for this link
                        time16_reclocked[i] = time16[i]; // store the COLDATA time stamp for this link
                    end
                end
                
            end
            
            DAQ_RQ:
            begin
                if (rq_served[2] == 1'b1) // response came
                begin
                    valid_aligned = 8'h0; // reset valid bits
                    data_ready[0] = 1'b0; // remove request
                    rq_state = DAQ_WAIT; // go wait for next request
                end
            end
            
            default:
            begin
                rq_state = DAQ_WAIT;
            end
        endcase
        // demetastab the response
        rq_served[3:1] = rq_served[2:0];
    end
    
    reg [5:0] tick; // clock tick counter
    // formatting FSM
    always @(posedge ts_clk)
    begin
        if (reset)
        begin
            fb_state = IDLE;
            tick = 6'h0;
        end
    
        rq_served[0] = 1'b0; 
        case (fb_state)
            IDLE:
            begin
            
                // tick counter reset when lower timestamp bits == 0
                // bits [4:0] may not be zeros 
                if (timestamp_reclocked[20:5] == 16'b0) 
                begin
                    // don't reset second time in a row since timestamp is changing every two data blocks
                    if (tick > 6'b1) 
                        tick = 6'b0; // reset tick counter
                end
            
                if (data_ready[2] == 1'b1) // request on
                begin
                    data_cnt = 7'h0;
                    // store prepared tx words in register for shifting out
                    tx_words = tx_words_w;
                    if (tick == 6'h0)
                        fb_state = HEAD0; // start new frame if all ticks were sent 
                    else
                        fb_state = DATA; // continue previous frame
                        
                    rq_served[0] = 1'b1; // tell request FSM that it's been served 
                end
                ddi_d = 64'h0;
                ddi_d_valid = 1'b0;
                ddi_d_last  = 1'b0;
            end
            
            HEAD0: // start of frame
            begin
                ddi_d = header[0];
                ddi_d_valid = 1'b1;
                ddi_d_last  = 1'b0;
                fb_state = HEAD1;
            end
            
            HEAD1:
            begin
                ddi_d = header[1];
                ddi_d_valid = 1'b1;
                ddi_d_last  = 1'b0;
                fb_state = HEAD2;
            end
            
            HEAD2:
            begin
                ddi_d = header[2];
                ddi_d_valid = 1'b1;
                ddi_d_last  = 1'b0;
                fb_state = DATA;
            end
            
            DATA:
            begin
                ddi_d_last  = 1'b0;
                if (data_cnt == ((NADCS*16*14/64)-1)) // last data word in time tick
                begin
                    fb_state = IDLE;
                    if (tick == 6'b111111) // this is last data word in the whole frame
                        ddi_d_last  = 1'b1;
                    tick++; 
                end
                ddi_d = tx_words[0];
                ddi_d_valid = 1'b1;
                // shift tx_words to prepare next word
                for (i = 0; i <= (NADCS*16*14/64)-2; i++)
                begin
                    tx_words[i] = tx_words[i+1];
                end
                data_cnt++;    
            end
            
            default:
            begin
                fb_state = IDLE;
                ddi_d = 64'h0;
                ddi_d_valid = 1'b0;
                ddi_d_last  = 1'b0;
            end
        endcase

        // demetastab the request
        data_ready[3:1] = data_ready[2:0];
        
    end

    ila_3 ila_daq_rq 
    (
        .clk     (rxclk2x), // input wire clk
        .probe0  (rq_state), // input wire [2:0]  probe0
        .probe1  (data_ready[0]), // input wire [0:0]  probe1
        .probe2  (rq_served[3:1]), // input wire [3:0]  probe2
        .probe3  (valid_aligned), // input wire [7:0]  probe3
        .probe4  (link_mask), // input wire [7:0]  probe4
        .probe5  (valid12), // input wire [7:0]  probe5
        .probe6  (valid14),
        .probe7  (valid_aligned),
        .probe8  (time16_reclocked[0]),
        .probe9  (time16_reclocked[1]),
        .probe10 (fb_state),
        .probe11 (data_cnt),
        .probe12 (data_ready[3:1]),
        .probe13 (rq_served[0]),
        .probe14 (timestamp_reclocked),
        .probe15 (tick),
        .probe16 (ddi_d),
        .probe17 (ddi_d_valid),
        .probe18 (ddi_d_last)
    );

endmodule

