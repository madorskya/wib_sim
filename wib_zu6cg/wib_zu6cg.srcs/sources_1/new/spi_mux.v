`timescale 1ns / 1ps
module spi_mux
(
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SS_T" *)  input  ss_t, // Slave Select Tri-State Control (required)
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SCK_I" *) output sck_i, // SPI Clock Input (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SCK_O" *) input  sck_o, // SPI Clock Output (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SCK_T" *) input  sck_t, // SPI Clock Tri-State Control (required)
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO0_I" *) output io0_i, // IO0 Input Port (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO0_O" *) input  io0_o, // IO0 Output Port (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO0_T" *) input  io0_t, // IO0 Tri-State Control (required)
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO1_I" *) output io1_i, // IO1 Input Port (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO1_O" *) input  io1_o, // IO1 Output Port (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi IO1_T" *) input  io1_t, // IO1 Tri-State Control (required)
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SS_O" *)  input  ss_o, // Slave Select Output (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 adc_spi SS1_O" *) input  ss1_o, // Slave Select 1 Output (optional)
    
    inout adc_sck,
    inout [3:0] adc_sdo,
    output adc_cs
    
);

    wire [1:0] sel = {ss1_o, ss_o}; // combined selector bits
    wire [3:0] adc_io0;
    
    assign io0_i = adc_io0[sel]; // select adc output indicated by selector bits
    assign adc_cs = ss_t; // slave select tri-state is same as CS for ADCs

    genvar i;
    generate
        for (i = 0; i < 4; i=i+1)
        begin: iobuf_loop
            IOBUF io0_iobuf
            (
                .I  (io0_o),
                .IO (adc_sdo[i]),
                .O  (adc_io0[i]),
                .T  (io0_t)
            );
        end
    endgenerate
        
    IOBUF sck_iobuf
    (
        .I  (sck_o),
        .IO (adc_sck),
        .O  (sck_i),
        .T  (sck_t)
    );
    
endmodule
