`timescale 1ns / 1ps

module ts_reclock
(
    input [3:0] stat_in,
    input rst_in,
    input rdy_in,
    input [7:0] sync_in,
    input sync_stb_in,
    input [63:0] tstamp_in,
    
    output [3:0] stat_out,
    output rst_out,
    output rdy_out,
    output [7:0] sync_out,
    output sync_stb_out,
    output reg [63:0] tstamp_out,
    output reg ts_valid,
    input clk62p5,
    
    input [7:0] cmd_code_idle     ,
    input [7:0] cmd_code_edge     ,
    input [7:0] cmd_code_sync     ,
    input [7:0] cmd_code_act      ,
    input [7:0] cmd_code_reset    ,
    input [7:0] cmd_code_adc_reset,
    input [7:0] cmd_code_trigger  ,

    input cmd_en_idle     ,
    input cmd_en_edge     ,
    input cmd_en_sync     ,
    input cmd_en_act      ,
    input cmd_en_reset    ,
    input cmd_en_adc_reset,
    input cmd_en_trigger  ,
    input [5:0] edge_delay,

    output reg cmd_bit_idle     ,
    output     cmd_bit_edge     ,
    output reg cmd_bit_sync     ,
    output reg cmd_bit_act      ,
    output reg cmd_bit_reset    ,
    output reg cmd_bit_adc_reset,
    output reg cmd_bit_trigger  ,
    
    input fake_time_stamp_en, // enable fake time stamp
    input [63:0] fake_time_stamp_init, // initial value for fake time stamp
    
    input [14:0] cmd_stamp_sync, // lower TLU bits to match in order to issue sync command
    input cmd_stamp_sync_en // enable issuing SYNC command on matching lower TLU stamp bits
);

    wire [78:0] din = 
    {
        stat_in,
        rst_in,
        rdy_in,
        sync_in,
        sync_stb_in,
        tstamp_in
    };

    reg [78:0] dout;
    wire [63:0] tstamp_int;
    assign 
    {
        stat_out,
        rst_out,
        rdy_out,
        sync_out,
        sync_stb_out,
        tstamp_int
    } = dout;

//    assign dout = din; // FIFO is removed for 62.5M migration
    
`define CMD_DECODE(c,e,b) if (e == 1'h1 && c == sync_out) b = 1'b1
    
    reg [63:0] tstamp_fake = 64'h12340000_00000000;
    
    reg [2:0] fts_en;
    reg cmd_bit_edge_t; // edge command bit before delay
    
    always @(posedge clk62p5)
    begin
    
        // decode commands
        cmd_bit_idle      = 1'b0;
        cmd_bit_edge_t    = 1'b0;
        cmd_bit_sync      = 1'b0;
        cmd_bit_act       = 1'b0;
        cmd_bit_reset     = 1'b0;
        cmd_bit_adc_reset = 1'b0;
        cmd_bit_trigger   = 1'b0;

        if (sync_stb_out == 1'b1) 
        begin
            // decode and flag
            `CMD_DECODE(cmd_code_idle     , cmd_en_idle     , cmd_bit_idle     );
            `CMD_DECODE(cmd_code_edge     , cmd_en_edge     , cmd_bit_edge_t   );
            `CMD_DECODE(cmd_code_sync     , cmd_en_sync     , cmd_bit_sync     );
            `CMD_DECODE(cmd_code_act      , cmd_en_act      , cmd_bit_act      );
            `CMD_DECODE(cmd_code_reset    , cmd_en_reset    , cmd_bit_reset    );
            `CMD_DECODE(cmd_code_adc_reset, cmd_en_adc_reset, cmd_bit_adc_reset);
            `CMD_DECODE(cmd_code_trigger  , cmd_en_trigger  , cmd_bit_trigger  );
        end

        //decode time stamp valid
        ts_valid = sync_stb_out && (sync_out == 8'b0);
        tstamp_out = (fts_en[2] == 1'b1) ? tstamp_fake : tstamp_int; // to match valid signal latency
        tstamp_fake = tstamp_fake + 64'h1;
        
        // SYNC command logic
        if (tstamp_out[14:0] == cmd_stamp_sync && cmd_stamp_sync_en && !cmd_bit_edge) // EDGE command has priority
            cmd_bit_sync = 1'b1;
        
        if (fts_en[2:1] == 2'b01) // enable just went up
            tstamp_fake = fake_time_stamp_init; // update time stamp from init register
        
        // fake time stamp enable reset pipeline
        fts_en = {fts_en[1:0], fake_time_stamp_en};

        dout = din; // trying to clock in din cleanly, debugging missing cmd_bit_trigger in timing master mode

  end

    dyn_shift #(.SELWIDTH(6), .BW (1)) edge_ds  
    (
        .CLK (clk62p5), 
        .CE  ('b1), 
        .SEL (edge_delay), // value of 0 gives delay of 1
        .SI  (cmd_bit_edge_t), 
        .DO  (cmd_bit_edge)
    );
    

endmodule
