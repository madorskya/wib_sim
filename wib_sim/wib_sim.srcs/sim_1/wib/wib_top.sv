module wib_top
(
    input  dune_clk_fpga_in_p,
    input  dune_clk_fpga_in_n,
    output [0:0]gpo_0,
    
    // I2C busses to/from FEMBs [femb]
    output [3:0] i2c_lvds_scl_p,
    output [3:0] i2c_lvds_scl_n,
    input  [3:0] i2c_lvds_sda_c2w_p,
    input  [3:0] i2c_lvds_sda_c2w_n,
    output [3:0] i2c_lvds_sda_w2c_p,
    output [3:0] i2c_lvds_sda_w2c_n,
    output [3:0] i2c_lvds_l2_sda_w2c_p,
    output [3:0] i2c_lvds_l2_sda_w2c_n,
    input  [3:0] i2c_lvds_l2_sda_c2w_p,
    input  [3:0] i2c_lvds_l2_sda_c2w_n,
    
    // clocks for COLDATA PLL [femb]
    output [3:0] coldata_clk40_p,
    output [3:0] coldata_clk40_n,

    // fast command output    
    output femb_cmd_fpga_out_p,
    output femb_cmd_fpga_out_n,

    // clock to FEMBs    
    output femb_clk_fpga_out_p, 
    output femb_clk_fpga_out_n, 

    input  [3 : 0] gtrefclk00p_in, // reference clocks; 128M
    input  [3 : 0] gtrefclk00n_in, // reference clocks; 128M
    input [15 : 0] gthrxn_in    , // RX diff lines
    input [15 : 0] gthrxp_in    ,
    input daq_clk
);

    // temporary, to make implementation possible
    OBUFDS clk40_buf[3:0] (.I(1'b0), .O(coldata_clk40_p[3:0]), .OB(coldata_clk40_n[3:0]));
    OBUFDS b1_buf[3:1] (.I(1'b0), .O(i2c_lvds_scl_p[3:1]), .OB(i2c_lvds_scl_n[3:1]));
    OBUFDS b2_buf[3:1] (.I(1'b0), .O(i2c_lvds_sda_w2c_p[3:1]), .OB(i2c_lvds_sda_w2c_n[3:1]));
    OBUFDS b3_buf[3:0] (.I(1'b0), .O(i2c_lvds_l2_sda_w2c_p[3:0]), .OB(i2c_lvds_l2_sda_w2c_n[3:0]));
    
    IBUFDS ib1[3:1] (.I(i2c_lvds_sda_c2w_p[3:1]), .IB(i2c_lvds_sda_c2w_n[3:1]), .O());
    IBUFDS ib2[3:0] (.I(i2c_lvds_l2_sda_c2w_p[3:0]), .IB(i2c_lvds_l2_sda_c2w_n[3:0]), .O());

    wire [7:0] gp_out;
    wire         coldata_rx_reset  = gp_out[0]   ; // common reset for all circiuts
    wire [0 : 0] reset_rx_done_out   ; 
    
    wire [0 : 0] rx_usrclk_out       ;
    wire [0 : 0] rx_usrclk2_out      ; // rx data clock
    wire [0 : 0] rx_active_out       ; // rx active indicator
    wire [15 :0] rx_data [15:0]      ;
    wire [15 :0] rx_data_swizzled [15:0]      ;
    wire [15 :0] rxbyteisaligned_out ;
    wire [15 :0] rxbyterealign_out   ;
    wire [15 :0] rxcommadet_out      ;             
    
    wire [0 : 0] rx_cdr_stable_out   ; 
    wire [15 :0] gtpowergood_out     ;
    wire clk62p5;
    IBUFDS clk_buf_in  (.I(dune_clk_fpga_in_p), .IB(dune_clk_fpga_in_n), .O(clk62p5));
    OBUFDS clk_buf_out (.I(clk62p5), .O(femb_clk_fpga_out_p), .OB(femb_clk_fpga_out_n));

    genvar gi;
    // swizzle bytes in rx_data for easier viewing in the simulation traces
    generate
        for (gi = 0; gi < 16; gi++)
            assign rx_data_swizzled[gi] = {rx_data[gi][7:0], rx_data[gi][15:8]};
    endgenerate

    bd_tux wrp
    (
        .clk62p5       (clk62p5       ),
        .gpo_0         (gpo_0         ),
        .i2c0_sclp     (i2c_lvds_scl_p     [0]),
        .i2c0_scln     (i2c_lvds_scl_n     [0]),
        .i2c0_sda_inp  (i2c_lvds_sda_c2w_p [0]),
        .i2c0_sda_inn  (i2c_lvds_sda_c2w_n [0]),
        .i2c0_sda_outp (i2c_lvds_sda_w2c_p [0]),
        .i2c0_sda_outn (i2c_lvds_sda_w2c_n [0]),
        
        .gp_out        (gp_out),

        .fastcommand_out_n (femb_cmd_fpga_out_n),
        .fastcommand_out_p (femb_cmd_fpga_out_p)
    );

    wire [1:0]   rx_k [15:0];
    wire [1:0]   rx_comma [15:0];
    wire [1:0]   rx_notvalid [15:0];
    wire [1:0]   rx_disp [15:0];

    wire [13:0] deframed [15:0][31:0]; // [link][sample]
    wire [15:0] valid14;
    wire [15:0] valid12;
    wire [1:0]  crc_err [15:0];
    wire rxclk2x;
    
    coldata_rx_tux coldata_rx
    (
        .gtrefclk00p_in      (gtrefclk00p_in     ), // reference clocks(), 128M
        .gtrefclk00n_in      (gtrefclk00n_in     ), // reference clocks(), 128M
        .gthrxn_in           (gthrxn_in          ), // RX diff lines
        .gthrxp_in           (gthrxp_in          ),    
        .reset_clk_64M_in    (clk62p5            ), // clock for reset circuits
        .reset_all_in        (coldata_rx_reset   ), // common reset for all circiuts
        .reset_rx_done_out   (reset_rx_done_out  ), 
    
        .rx_usrclk_out       (rx_usrclk_out      ),
        .rx_usrclk2_out      (rx_usrclk2_out     ), // rx data clock
        .rx_active_out       (rx_active_out      ), // rx active indicator
        .rx_data             (rx_data            ),
        .rxbyteisaligned_out (rxbyteisaligned_out),
        .rxbyterealign_out   (rxbyterealign_out  ),
        .rxcommadet_out      (rxcommadet_out     ),             
        .rx_k                (rx_k       ),
        .rx_comma            (rx_comma   ),
        .rx_notvalid         (rx_notvalid),
        .rx_disp             (rx_disp    ),

        .rx_cdr_stable_out   (rx_cdr_stable_out  ), 
        .gtpowergood_out     (gtpowergood_out    )
    );
    
    coldata_deframer coldata_df
    (
        .rx_usrclk2 (rx_usrclk2_out    ), // rx data clock
        .rx_data    (rx_data           ),
        .rx_k       (rx_k              ),
        .mmcm_reset (!reset_rx_done_out),
        .deframed   (deframed),
        .valid14    (valid14 ),
        .valid12    (valid12 ),
        .crc_err    (crc_err ),
        .rxclk2x    (rxclk2x)
    );
    
    wire [15:0] link_mask = 16'h0; // this input allows to disable some links in case the are broken
    (* mark_debug *) wire [31:0] daq_stream [1:0]; // data to felix
    (* mark_debug *) wire [3:0]  daq_stream_k [1:0]; // K symbol flags to felix
    
    
    frame_builder fbld
    (
        .deframed     (deframed),
        .valid14      (valid14 ),
        .valid12      (valid12 ),
        .rxclk2x      (rxclk2x),
        .link_mask    (link_mask   ), // this input allows to disable some links in case the are broken
        .daq_stream   (daq_stream  ), // data to felix
        .daq_stream_k (daq_stream_k), // K symbol flags to felix
        .daq_clk      (daq_clk)
    );
    
endmodule
