module wib_top
(
    output clk62p5,
    output [0:0]gpo_0,
    output i2c0_scln,
    output i2c0_sclp,
    input  i2c0_sda_inn,
    input  i2c0_sda_inp,
    output i2c0_sda_outn,
    output i2c0_sda_outp
);

    bd_tux wrp
    (
        .clk62p5       (clk62p5      ),
        .gpo_0         (gpo_0        ),
        .i2c0_scln     (i2c0_scln    ),
        .i2c0_sclp     (i2c0_sclp    ),
        .i2c0_sda_inn  (i2c0_sda_inn ),
        .i2c0_sda_inp  (i2c0_sda_inp ),
        .i2c0_sda_outn (i2c0_sda_outn),
        .i2c0_sda_outp (i2c0_sda_outp) 
    );
    
endmodule
