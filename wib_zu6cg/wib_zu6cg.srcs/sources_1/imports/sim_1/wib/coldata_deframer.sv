module coldata_deframer
(
    input clk62p5, // system clock
    input [15 :0] rx_data [15:0],
    input [1:0]   rx_k [15:0],
    input mmcm_reset,

    output [13:0] deframed [15:0][31:0],
    output [ 7:0] time8 [15:0],
    output [15:0] time16 [15:0],
    output [15:0] valid14,
    output [15:0] valid12,
    output [1:0]  crc_err [15:0],
    output [7:0]  align8 [15:0],
    input align_en,
    input crc_err_reset,
    
    input  [63:0] dts_time, // original DTS stamp, in 62.5M domain
    output [63:0] dts_time_delayed, // delayed DTS stamp matching data
    input  [7:0]  dts_time_delay, // DTS stamp delay, must me longer than max cable delay
    
    input         rxclk2x // doubled system clock for deframed data
);

    wire ts_valid_del;
    wire [7:0] rx_byte0 [15:0];
    wire [15:0] rx_k0; 
    wire [3:0] df_state_out [15:0];
    genvar gi;
    generate
        for (gi = 0; gi < 16; gi++)
        begin
            coldata_deframer_single #(.NUM(gi)) df_s
            (
                .rxclk2x          (rxclk2x      ),
                .clk62p5          (clk62p5      ),
                .rx_data          (rx_data  [gi]),
                .rx_k             (rx_k     [gi]),
                .rx_byte0         (rx_byte0 [gi]),
                .rx_k0            (rx_k0    [gi]),
                .deframed         (deframed [gi]),
                .time8            (time8    [gi]),
                .time16_a         (time16   [gi]),
                .valid14_a        (valid14  [gi]),
                .valid12_a        (valid12  [gi]),
                
                .dts_time_delayed (dts_time_delayed[14:0]),
                .ts_valid_del     (ts_valid_del),
                .align8           (align8 [gi]     ),
                .align_en         (align_en),
                
                .crc_err_sticky   (crc_err  [gi]),
                .crc_err_reset    (crc_err_reset),
                .df_state_out     (df_state_out[gi])
            );
            
        end
    endgenerate
    
    reg tsb0;
    always @(posedge rxclk2x) tsb0 = dts_time[0];
    
    wire ts_valid = (tsb0 != dts_time[0]);
    
    // DTS time stamp delay shifter
    dyn_shift #(.SELWIDTH(9), .BW (65)) ds  
    (
        .CLK (rxclk2x), 
        .CE  ('b1), 
        .SEL ({dts_time_delay, 1'b1}), // value of 0 gives delay of 1. Delay is doubled because stamp changes every two clocks
        .SI  ({ts_valid    , dts_time}), 
        .DO  ({ts_valid_del, dts_time_delayed})
    );
    
    ila_deframer ila_df 
    (
        .clk     (rxclk2x), // input wire clk
        .probe0  (time16 [0 ]), // input wire [14:0]  probe0  
        .probe1  (time16 [1 ]), // input wire [14:0]  probe1 
        .probe2  (time16 [2 ]), // input wire [14:0]  probe2 
        .probe3  (time16 [3 ]), // input wire [14:0]  probe3 
        .probe4  (time16 [4 ]), // input wire [14:0]  probe4 
        .probe5  (time16 [5 ]), // input wire [14:0]  probe5 
        .probe6  (time16 [6 ]), // input wire [14:0]  probe6 
        .probe7  (time16 [7 ]), // input wire [14:0]  probe7 
        .probe8  (time16 [8 ]), // input wire [14:0]  probe8 
        .probe9  (time16 [9 ]), // input wire [14:0]  probe9 
        .probe10 (time16 [10]), // input wire [14:0]  probe10 
        .probe11 (time16 [11]), // input wire [14:0]  probe11 
        .probe12 (time16 [12]), // input wire [14:0]  probe12 
        .probe13 (time16 [13]), // input wire [14:0]  probe13 
        .probe14 (time16 [14]), // input wire [14:0]  probe14 
        .probe15 (time16 [15]), // input wire [14:0]  probe15 
        .probe16 (valid12), // input wire [15:0]  probe16 
        .probe17 (valid14), // input wire [15:0]  probe17 
        .probe18 (dts_time), // input wire [63:0]  probe18 
        .probe19 (dts_time_delayed), // input wire [63:0]  probe19
        .probe20 (rx_byte0 [0]),
        .probe21 (rx_byte0 [1]),
        .probe22 (rx_byte0 [2]),
        .probe23 (rx_byte0 [3]),
        .probe24 (rx_byte0 [4]),
        .probe25 (rx_byte0 [5]),
        .probe26 (rx_byte0 [6]),
        .probe27 (rx_byte0 [7]),
        .probe28 (rx_byte0 [8]),
        .probe29 (rx_byte0 [9]),
        .probe30 (rx_byte0 [10]),
        .probe31 (rx_byte0 [11]),
        .probe32 (rx_byte0 [12]),
        .probe33 (rx_byte0 [13]),
        .probe34 (rx_byte0 [14]),
        .probe35 (rx_byte0 [15]),
        .probe36 (rx_k0),
        .probe37 ({rx_k [0 ], rx_data [0 ]}),
        .probe38 ({rx_k [1 ], rx_data [1 ]}),
        .probe39 ({rx_k [2 ], rx_data [2 ]}),
        .probe40 ({rx_k [3 ], rx_data [3 ]}),
        .probe41 ({rx_k [4 ], rx_data [4 ]}),
        .probe42 ({rx_k [5 ], rx_data [5 ]}),
        .probe43 ({rx_k [6 ], rx_data [6 ]}),
        .probe44 ({rx_k [7 ], rx_data [7 ]}),
        .probe45 ({rx_k [8 ], rx_data [8 ]}),
        .probe46 ({rx_k [9 ], rx_data [9 ]}),
        .probe47 ({rx_k [10], rx_data [10]}),
        .probe48 ({rx_k [11], rx_data [11]}),
        .probe49 ({rx_k [12], rx_data [12]}),
        .probe50 ({rx_k [13], rx_data [13]}),
        .probe51 ({rx_k [14], rx_data [14]}),
        .probe52 ({rx_k [15], rx_data [15]}),
        .probe53 ({df_state_out[3], df_state_out[2], df_state_out[1], df_state_out[0]})
    );
    
endmodule

