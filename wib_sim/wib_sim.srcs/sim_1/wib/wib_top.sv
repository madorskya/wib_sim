module wib_top
(
    output clk62p5,
    output [0:0]gpo_0,
    output i2c0_scln,
    output i2c0_sclp,
    input  i2c0_sda_inn,
    input  i2c0_sda_inp,
    output i2c0_sda_outn,
    output i2c0_sda_outp,
    
    input  [3 : 0] gtrefclk00_in, // reference clocks; 128M
    input [15 : 0] gthrxn_in    , // RX diff lines
    input [15 : 0] gthrxp_in    
);

    wire [7:0] gp_out;
    wire [0 : 0] reset_clk_64M_in    ; // 64 M clock for reset circuits
    wire         coldata_rx_reset  = gp_out[0]   ; // common reset for all circiuts
    wire [0 : 0] reset_rx_done_out   ; 
    
    wire [0 : 0] rx_usrclk2_out      ; // rx data clock
    wire [0 : 0] rx_active_out       ; // rx active indicator
    wire [15 :0] rx_data [15:0]      ;
    wire [15 :0] rxbyteisaligned_out ;
    wire [15 :0] rxbyterealign_out   ;
    wire [15 :0] rxcommadet_out      ;             
    
    wire [0 : 0] rx_cdr_stable_out   ; 
    wire [15 :0] gtpowergood_out     ;

    bd_tux wrp
    (
        .clk62p5       (clk62p5      ),
        .gpo_0         (gpo_0        ),
        .i2c0_scln     (i2c0_scln    ),
        .i2c0_sclp     (i2c0_sclp    ),
        .i2c0_sda_inn  (i2c0_sda_inn ),
        .i2c0_sda_inp  (i2c0_sda_inp ),
        .i2c0_sda_outn (i2c0_sda_outn),
        .i2c0_sda_outp (i2c0_sda_outp),
        
        .gp_out        (gp_out),
        .clk64         (reset_clk_64M_in) 
    );

    
    coldata_rx_tux coldata_rx
    (
        .gtrefclk00_in       (gtrefclk00_in      ), // reference clocks(), 128M
        .gthrxn_in           (gthrxn_in          ), // RX diff lines
        .gthrxp_in           (gthrxp_in          ),    
        .reset_clk_64M_in    (reset_clk_64M_in   ), // 64 M clock for reset circuits
        .reset_all_in        (coldata_rx_reset   ), // common reset for all circiuts
        .reset_rx_done_out   (reset_rx_done_out  ), 
    
        .rx_usrclk2_out      (rx_usrclk2_out     ), // rx data clock
        .rx_active_out       (rx_active_out      ), // rx active indicator
        .rx_data             (rx_data            ),
        .rxbyteisaligned_out (rxbyteisaligned_out),
        .rxbyterealign_out   (rxbyterealign_out  ),
        .rxcommadet_out      (rxcommadet_out     ),             
    
        .rx_cdr_stable_out   (rx_cdr_stable_out  ), 
        .gtpowergood_out     (gtpowergood_out    )
    );
    
    
endmodule
