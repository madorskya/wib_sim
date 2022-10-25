module pdts_endpoint_wrapper
(
    input sclk,
    input srst,
    input [15:0] addr,
    input ts_clk_sel,
    input rec_clk,
    input rec_d,
    output [3:0] stat,
    output clk,
    output clk2x,
    output rst,
    output rdy,
    output [7:0] sync,
    output sync_stb,
    output [63:0] tstamp,
    output txd,
    output tx_dis
);

    wire clk_from_endpoint;
    // MUX between endpoint output (default) and PLL-based clocks (reg sel when no timing system)
    BUFGMUX ts_clk_mux (.I0(clk_from_endpoint), .I1(rec_clk), .S(ts_clk_sel), .O(clk));
    // need to mux 2x clock here as well

    pdts_endpoint #( 
        .SCLK_FREQ(100.0),
        .USE_EXT_PLL(1'b0),
        .EXT_PLL_DIV(2),
        .FORCE_TX(1'b0),
        .SKIP_FREQ(1'b0),
        .EXT_ADDR(1'b1),
        .SKIP_DESKEW(1'b1),
        .SKIP_TSTAMP(1'b0)
    )
    ts_ep (
        .sys_clk(sclk),
        .sys_rst(srst),
        .sys_addr(addr),
        .sys_stat(stat),
        .rxd(rec_d),
        .txd(txd),
        .txenb(tx_dis),
        .clk(clk_from_endpoint),
        .clk2x(clk2x),
        .rst(rst),
        .ready(rdy),
        .sync(sync),
        .sync_stb(sync_stb),
        .tstamp(tstamp)
    );

endmodule
