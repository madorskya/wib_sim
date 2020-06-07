
`timescale 1 ps / 1 ps

module bd_tux
(
    output clk62p5,
    output [0:0]gpo_0,
    output i2c0_scln,
    output i2c0_sclp,
    input  i2c0_sda_inn,
    input  i2c0_sda_inp,
    output i2c0_sda_outn,
    output i2c0_sda_outp,
    
    output [7:0] gp_out,
    output clk64
);
    
  wire clk62p5;
  
    design_1 design_1_i
    (
        .clk62p5      (clk62p5      ),
        .scl_n_0      (i2c0_scln    ),
        .scl_p_0      (i2c0_sclp    ),
        .sda_in_n_0   (i2c0_sda_inn ),
        .sda_in_p_0   (i2c0_sda_inp ),
        .sda_out_n_0  (i2c0_sda_outn),
        .sda_out_p_0  (i2c0_sda_outp),
        .gp_out_tri_o (gp_out),
        .clk64        (clk64)
    );
endmodule
