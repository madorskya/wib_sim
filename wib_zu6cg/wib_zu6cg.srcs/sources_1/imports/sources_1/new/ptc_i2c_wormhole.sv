`timescale 1ns / 1ps
module ptc_i2c_wormhole
(
    inout ptc_scl_io,
    inout ptc_sda_io,
    inout bus0_scl_io,
    inout bus0_sda_io,
    inout bus1_scl_io,
    inout bus1_sda_io,
    
    input [2:0] slot,
    input [9:0] crate_id,
    
    output ptc_busy,
    
    input axi_clk,
    input clk_10M

);
    wire ptc_sda_t_sel, sda_inh;
    wire bus0_sda_i, bus1_sda_i;
    wire bus_select, activate;
    wire ptc_sda_t = (ptc_sda_t_sel & bus0_sda_i & bus1_sda_i) | (~sda_inh);
    
                
    // PTC buffers            
    IOBUF ptc_scl_iobuf
    (
        .I  (1'b0),
        .IO (ptc_scl_io),
        .O  (ptc_scl_i),
        .T  (1'b1) 
    );
    IOBUF ptc_sda_iobuf
    (
        .I  (1'b0),
        .IO (ptc_sda_io),
        .O  (ptc_sda_i),
        .T  (ptc_sda_t)
    );

    // bus[0] buffers
    IOBUF bus0_scl_iobuf
    (
        .I  (1'b0),
        .IO (bus0_scl_io),
        .O  (),
        // clock directly driven by master buffer
        .T  (ptc_scl_i | bus_select | (~activate))
    );
    IOBUF bus0_sda_iobuf
    (
        .I  (1'b0),
        .IO (bus0_sda_io),
        .O  (bus0_sda_i),
        .T  (ptc_sda_i | sda_inh | bus_select | (~activate))
    );
    
    // bus[1] buffers
    IOBUF bus1_scl_iobuf
    (
        .I  (1'b0),
        .IO (bus1_scl_io),
        .O  (),
        .T  (ptc_scl_i | (~bus_select) | (~activate))
    );
    IOBUF bus1_sda_iobuf
    (
        .I  (1'b0),
        .IO (bus1_sda_io),
        .O  (bus1_sda_i),
        .T  (ptc_sda_i | sda_inh | (~bus_select) | (~activate))
    );
      
    // configuration and activation slave  
    wib_i2cSlaveTop wib_i2c_slave
    (
        .clk      (axi_clk),
        .rst      (1'b0),
        .scl      (ptc_scl_i),
        .sda_i    (ptc_sda_i),
        .sda_t    (ptc_sda_t_sel),
        .reg_0    ({bus_select, activate}),
        .slot     (slot), // for address
        .slot_rb  (slot), // for readback
        .crate_id (crate_id)
    );            
    
    // PTC master state follower
    i2c_follower flw
    (
        .scl     (ptc_scl_i),
        .sda     (ptc_sda_i),
        .sda_inh (sda_inh), // 0 = master->sensor 1 = sensor->master
        .busy    (ptc_busy),
        .clk     (clk_10M)
    );    
endmodule
