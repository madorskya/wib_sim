`timescale 1ps / 1ps
`define ZYNQ_VIP_0 test_bench_coldata.mpsoc_sys.wrp.design_1_i.zynq_ultra_ps_e_0.inst

module test_bench_coldata;
reg tb_ACLK;
reg tb_ARESETn;

wire temp_clk;
wire temp_rstn; 

//reg [31:0] read_data;
reg [127:0] read_data128;
reg resp;
reg [7:0]  irq_status;
reg [31:0] src_data;
reg [31:0] dst_data;
wire clk62p5;
reg [31:0] clk62_cnt;
reg clk_1p28g;

reg  [3 : 0] gtrefclk00p_in = 4'b0000; // reference clocks; 128M
reg  [3 : 0] gtrefclk00n_in = 4'b1111; // reference clocks; 128M
wire [15 : 0] gthrxn_in    ; // RX diff lines
wire [15 : 0] gthrxp_in    ;

int cdma_tb_pass = 1;
  
initial 
begin       
    tb_ACLK = 1'b0;
    clk62_cnt = 0;
    clk_1p28g = 1'b0;
end
   // instantiate coldata chip

   reg  I2C_LVDS_SCL_P; //I2C Clock from Warm via LVDS
   reg  I2C_LVDS_SCL_N; //I2C Clock from Warm via LVDS
   reg  I2C_LVDS_SDA_W2C_P; //I2C Data Input from Warm via LVDS
   reg  I2C_LVDS_SDA_W2C_N; //I2C Data Input from Warm via LVDS
   wire I2C_LVDS_SDA_C2W_P; //I2C Data Output to Warm via LVDS
   wire I2C_LVDS_SDA_C2W_N; //I2C Data Output to Warm via LVDS
   reg  I2C_CMOS_SCL; //I2C Clock from Warm via relay from other colData
   reg  I2C_CMOS_SDA_W2C; //I2C Data Input from Warm via relay from other colData
   wire I2C_CMOS_SDA_C2W; //I2C Data Output to Warm via relay by other colData
   reg  I2C_LVDS1_CMOS0_MODE; //Control Signal: Select I2C via LVDS or relay
   wire I2C_COLDATA_SCL; //I2C Clock relayed to other colData and subordinate ADCs
   wire I2C_COLDATA_SDA_W2C; //I2C Data Input relayed to other colData and subordinate ADCs
   reg  I2C_COLDATA_SDA_C2W; //I2C Data Output being relayed from other colData
   reg  I2C_ADC_1_SDA_C2W; //I2C Data Output being relayed from subordinate ADC_1
   reg  I2C_ADC_2_SDA_C2W; //I2C Data Output being relayed from subordinate ADC_2
   reg  I2C_ADC_3_SDA_C2W; //I2C Data Output being relayed from subordinate ADC_3
   reg  I2C_ADC_4_SDA_C2W; //I2C Data Output being relayed from subordinate ADC_4
   // this is lower bit of chip id, full chip id is {4'b001, CHIP_ID_0}
   reg  CHIP_ID_0; //I2C ChipID. Must be 4'b0010 (COLDATA0 (bottom)) or4'b0011 (COLDATA1 (top))
   //System Clock (2 pads)
   reg  CLK_64MHZ_SYS_P;
   reg  CLK_64MHZ_SYS_N;
   //FastCommand Input (2 pads)
   reg fast_command = 1;
   wire  FASTCOMMAND_IN_P; // = fast_command;
   wire  FASTCOMMAND_IN_N; // = !fast_command;
   //SPI-like Interface for LARASIC
   // All 4 (1 pad)
   wire LARASIC_RESET ;
   //LARASIC1 (4 pads)
   wire LARASIC1_SCK;
   wire LARASIC1_SDO;
   wire LARASIC1_CS;
   reg  LARASIC1_SDI;
   //LARASIC2 (4 pads)
   wire LARASIC2_SCK;
   wire LARASIC2_SDO;
   wire LARASIC2_CS;
   reg  LARASIC2_SDI;
   //LARASIC3 (4 pads)
   wire LARASIC3_SCK;
   wire LARASIC3_SDO;
   wire LARASIC3_CS;
   reg  LARASIC3_SDI;
   //LARASIC4 (4 pads)
   wire LARASIC4_SCK;
   wire LARASIC4_SDO;
   wire LARASIC4_CS;
   reg  LARASIC4_SDI;
   //ADC Interface
   // All 4 (1 pad)
   wire ADC_MASTER_RESET;
   //ADCs (24 pads)
   reg  [3:0] ADC_DIG_OUTA_P;
   reg  [3:0] ADC_DIG_OUTA_N;
   reg  [3:0] ADC_DIG_OUTB_P;
   reg  [3:0] ADC_DIG_OUTB_N;
   reg  [3:0] ADC_DIG_OUTC_P;
   reg  [3:0] ADC_DIG_OUTC_N;
   reg  [3:0] ADC_DIG_OUTD_P;
   reg  [3:0] ADC_DIG_OUTD_N;
   reg  [3:0] ADC_DIG_OUTE_P;
   reg  [3:0] ADC_DIG_OUTE_N;
   reg  [3:0] ADC_DIG_OUTF_P;
   reg  [3:0] ADC_DIG_OUTF_N;
   reg  [3:0] ADC_DIG_OUTG_P;
   reg  [3:0] ADC_DIG_OUTG_N;
   reg  [3:0] ADC_DIG_OUTH_P;
   reg  [3:0] ADC_DIG_OUTH_N;
   reg  [3:0] ADC_DIG_FRAME_P;
   reg  [3:0] ADC_DIG_FRAME_N;
   reg  [3:0] ADC_DIG_CLKOUT_P;
   reg  [3:0] ADC_DIG_CLKOUT_N;
   wire [3:0] ADC_CLK_2MHZ_P;
   wire [3:0] ADC_CLK_2MHZ_N;
   wire [3:0] ADC_CLK_64MHZ_P;
   wire [3:0] ADC_CLK_64MHZ_N;
   // Pads for the Frontend Mother Board (2 pads)
   wire FMB_CONTROL_0;
   wire FMB_CONTROL_1;
   //wire FMB_CONTROL_2;
   // Pad-facing signals of the SMU Trinity (13 pads)
   reg  CKIN;
   wire CKOUTN;
   wire CKOUTP;
   logic VCEXT;
   logic ATO;
   wire  LOCK;
   reg 	 PLL_EXTERNAL_RESETN;
   logic IBIAS_CML;
   logic IBIAS_CS;
   wire  SEROUTN1;
   wire  SEROUTP1;
   wire  SEROUTN2;
   wire  SEROUTP2;
   // EFUSE (6 pads)
   reg 	 EFUSE_CSB;
   reg 	 EFUSE_DIN;
   reg 	 EFUSE_PGM;
   reg 	 EFUSE_SCLK;
   wire  EFUSE_DOUT;
   reg 	 EFUSE_VDDQ;
   //Power-on Rst (1 pad)
   //reg  Rst_PowerOn; // REMOVED because we now have the POR Active Low Power-On Reset NOT FROM A PAD
   reg 	 PAD_RESET; // Active Low CMOS Reset from a PAD
   //Power
   logic VDD_IO;
   logic VDD_CORE;
   logic VDD_LARASIC;
   logic VSS;
   
	 logic [3:0] I2C_SDA_C2W;
	 
	// Zynq signals
    wire [0:0]gpo_0;
    wire i2c0_scln;
    wire i2c0_sclp;
    wire i2c0_sda_outn;
    wire i2c0_sda_outp;
    wire i2c0_sda_inn; // temporary connection for tests only
    wire i2c0_sda_inp;
    

    COLDATAP2 coldata
    (	
			//I2C related pins (from the Warm) (18 pads)
			.I2C_LVDS_SCL_P (i2c0_sclp), //I2C Clock from Warm via LVDS
			.I2C_LVDS_SCL_N (i2c0_scln), //I2C Clock from Warm via LVDS
			.I2C_LVDS_SDA_W2C_P (i2c0_sda_outp), //I2C Data Input from Warm via LVDS
			.I2C_LVDS_SDA_W2C_N (i2c0_sda_outn), //I2C Data Input from Warm via LVDS
			.I2C_LVDS_SDA_C2W_P (i2c0_sda_inp), //I2C Data Output to Warm via LVDS
			.I2C_LVDS_SDA_C2W_N (i2c0_sda_inn), //I2C Data Output to Warm via LVDS
			.I2C_CMOS_SCL (1'b1), //I2C Clock from Warm via relay from other colData
			.I2C_CMOS_SDA_W2C (1'b1), //I2C Data Input from Warm via relay from other colData
			.I2C_CMOS_SDA_C2W (I2C_CMOS_SDA_C2W), //I2C Data Output to Warm via relay by other colData
			.I2C_LVDS1_CMOS0_MODE (1'b1), //Control Signal: Select I2C via LVDS(=1) or relay (=0)
			
			.I2C_COLDATA_SCL (I2C_COLDATA_SCL), //I2C Clock relayed to other colData and subordinate ADCs ***
			.I2C_COLDATA_SDA_W2C (I2C_COLDATA_SDA_W2C), //I2C Data Input relayed to other colData and subordinate ADCs ***
			
			.I2C_COLDATA_SDA_C2W (1'b1), //I2C Data Output being relayed from other colData
			
			.I2C_ADC_1_SDA_C2W (I2C_SDA_C2W[0]), //I2C Data Output being relayed from subordinate ADC_1 ***
			.I2C_ADC_2_SDA_C2W (I2C_SDA_C2W[1]), //I2C Data Output being relayed from subordinate ADC_2 ***
			.I2C_ADC_3_SDA_C2W (I2C_SDA_C2W[2]), //I2C Data Output being relayed from subordinate ADC_3 ***
			.I2C_ADC_4_SDA_C2W (I2C_SDA_C2W[3]), //I2C Data Output being relayed from subordinate ADC_4 ***
			
			.CHIP_ID_0 (CHIP_ID_0), //I2C ChipID. Must be 4'b0010 (COLDATA0 (bottom)) or4'b0011 (COLDATA1 (top))
			//System Clock (2 pads)
			.CLK_64MHZ_SYS_P (CLK_64MHZ_SYS_P),
			.CLK_64MHZ_SYS_N (CLK_64MHZ_SYS_N),
			//FastCommand Input (2 pads)
			.FASTCOMMAND_IN_P (FASTCOMMAND_IN_P),
			.FASTCOMMAND_IN_N (FASTCOMMAND_IN_N),
			//SPI-like Interface for LARASIC
			// All 4 (1 pad)
			.LARASIC_RESET (LARASIC_RESET),
			//LARASIC1 (4 pads)
			.LARASIC1_SCK (LARASIC1_SCK),
			.LARASIC1_SDO (LARASIC1_SDO),
			.LARASIC1_CS (LARASIC1_CS),
			.LARASIC1_SDI (LARASIC1_SDI),
			//LARASIC2 (4 pads)
			.LARASIC2_SCK (LARASIC2_SCK),
			.LARASIC2_SDO (LARASIC2_SDO),
			.LARASIC2_CS (LARASIC2_CS),
			.LARASIC2_SDI (LARASIC2_SDI),
			//LARASIC3 (4 pads)
			.LARASIC3_SCK (LARASIC3_SCK),
			.LARASIC3_SDO (LARASIC3_SDO),
			.LARASIC3_CS (LARASIC3_CS),
			.LARASIC3_SDI (LARASIC3_SDI),
			//LARASIC4 (4 pads)
			.LARASIC4_SCK (LARASIC4_SCK),
			.LARASIC4_SDO (LARASIC4_SDO),
			.LARASIC4_CS (LARASIC4_CS),
			.LARASIC4_SDI (LARASIC4_SDI),
			//ADC Interface
			// All 4 (1 pad)
			.ADC_MASTER_RESET (ADC_MASTER_RESET),
			//ADC1 (24 pads)
			.ADC1_DIG_OUTA_P (ADC_DIG_OUTA_P [0]),
			.ADC1_DIG_OUTA_N (ADC_DIG_OUTA_N [0]),
			.ADC1_DIG_OUTB_P (ADC_DIG_OUTB_P [0]),
			.ADC1_DIG_OUTB_N (ADC_DIG_OUTB_N [0]),
			.ADC1_DIG_OUTC_P (ADC_DIG_OUTC_P [0]),
			.ADC1_DIG_OUTC_N (ADC_DIG_OUTC_N [0]),
			.ADC1_DIG_OUTD_P (ADC_DIG_OUTD_P [0]),
			.ADC1_DIG_OUTD_N (ADC_DIG_OUTD_N [0]),
			.ADC1_DIG_OUTE_P (ADC_DIG_OUTE_P [0]),
			.ADC1_DIG_OUTE_N (ADC_DIG_OUTE_N [0]),
			.ADC1_DIG_OUTF_P (ADC_DIG_OUTF_P [0]),
			.ADC1_DIG_OUTF_N (ADC_DIG_OUTF_N [0]),
			.ADC1_DIG_OUTG_P (ADC_DIG_OUTG_P [0]),
			.ADC1_DIG_OUTG_N (ADC_DIG_OUTG_N [0]),
			.ADC1_DIG_OUTH_P (ADC_DIG_OUTH_P [0]),
			.ADC1_DIG_OUTH_N (ADC_DIG_OUTH_N [0]),
			.ADC1_DIG_FRAME_P (ADC_DIG_FRAME_P [0]),
			.ADC1_DIG_FRAME_N (ADC_DIG_FRAME_N [0]),
			.ADC1_DIG_CLKOUT_P (ADC_DIG_CLKOUT_P [0]),
			.ADC1_DIG_CLKOUT_N (ADC_DIG_CLKOUT_N [0]),
			.ADC1_CLK_2MHZ_P (ADC_CLK_2MHZ_P [0]),
			.ADC1_CLK_2MHZ_N (ADC_CLK_2MHZ_N [0]),
			.ADC1_CLK_64MHZ_P (ADC_CLK_64MHZ_P [0]),
			.ADC1_CLK_64MHZ_N (ADC_CLK_64MHZ_N [0]),
			//ADC2 (24 pads)
			.ADC2_DIG_OUTA_P (ADC_DIG_OUTA_P [1]),
			.ADC2_DIG_OUTA_N (ADC_DIG_OUTA_N [1]),
			.ADC2_DIG_OUTB_P (ADC_DIG_OUTB_P [1]),
			.ADC2_DIG_OUTB_N (ADC_DIG_OUTB_N [1]),
			.ADC2_DIG_OUTC_P (ADC_DIG_OUTC_P [1]),
			.ADC2_DIG_OUTC_N (ADC_DIG_OUTC_N [1]),
			.ADC2_DIG_OUTD_P (ADC_DIG_OUTD_P [1]),
			.ADC2_DIG_OUTD_N (ADC_DIG_OUTD_N [1]),
			.ADC2_DIG_OUTE_P (ADC_DIG_OUTE_P [1]),
			.ADC2_DIG_OUTE_N (ADC_DIG_OUTE_N [1]),
			.ADC2_DIG_OUTF_P (ADC_DIG_OUTF_P [1]),
			.ADC2_DIG_OUTF_N (ADC_DIG_OUTF_N [1]),
			.ADC2_DIG_OUTG_P (ADC_DIG_OUTG_P [1]),
			.ADC2_DIG_OUTG_N (ADC_DIG_OUTG_N [1]),
			.ADC2_DIG_OUTH_P (ADC_DIG_OUTH_P [1]),
			.ADC2_DIG_OUTH_N (ADC_DIG_OUTH_N [1]),
			.ADC2_DIG_FRAME_P (ADC_DIG_FRAME_P [1]),
			.ADC2_DIG_FRAME_N (ADC_DIG_FRAME_N [1]),
			.ADC2_DIG_CLKOUT_P (ADC_DIG_CLKOUT_P [1]),
			.ADC2_DIG_CLKOUT_N (ADC_DIG_CLKOUT_N [1]),
			.ADC2_CLK_2MHZ_P (ADC_CLK_2MHZ_P [1]),
			.ADC2_CLK_2MHZ_N (ADC_CLK_2MHZ_N [1]),
			.ADC2_CLK_64MHZ_P (ADC_CLK_64MHZ_P [1]),
			.ADC2_CLK_64MHZ_N (ADC_CLK_64MHZ_N [1]),
			//ADC3 (24 pads)
			.ADC3_DIG_OUTA_P (ADC_DIG_OUTA_P [2]),
			.ADC3_DIG_OUTA_N (ADC_DIG_OUTA_N [2]),
			.ADC3_DIG_OUTB_P (ADC_DIG_OUTB_P [2]),
			.ADC3_DIG_OUTB_N (ADC_DIG_OUTB_N [2]),
			.ADC3_DIG_OUTC_P (ADC_DIG_OUTC_P [2]),
			.ADC3_DIG_OUTC_N (ADC_DIG_OUTC_N [2]),
			.ADC3_DIG_OUTD_P (ADC_DIG_OUTD_P [2]),
			.ADC3_DIG_OUTD_N (ADC_DIG_OUTD_N [2]),
			.ADC3_DIG_OUTE_P (ADC_DIG_OUTE_P [2]),
			.ADC3_DIG_OUTE_N (ADC_DIG_OUTE_N [2]),
			.ADC3_DIG_OUTF_P (ADC_DIG_OUTF_P [2]),
			.ADC3_DIG_OUTF_N (ADC_DIG_OUTF_N [2]),
			.ADC3_DIG_OUTG_P (ADC_DIG_OUTG_P [2]),
			.ADC3_DIG_OUTG_N (ADC_DIG_OUTG_N [2]),
			.ADC3_DIG_OUTH_P (ADC_DIG_OUTH_P [2]),
			.ADC3_DIG_OUTH_N (ADC_DIG_OUTH_N [2]),
			.ADC3_DIG_FRAME_P (ADC_DIG_FRAME_P [2]),
			.ADC3_DIG_FRAME_N (ADC_DIG_FRAME_N [2]),
			.ADC3_DIG_CLKOUT_P (ADC_DIG_CLKOUT_P [2]),
			.ADC3_DIG_CLKOUT_N (ADC_DIG_CLKOUT_N [2]),
			.ADC3_CLK_2MHZ_P (ADC_CLK_2MHZ_P [2]),
			.ADC3_CLK_2MHZ_N (ADC_CLK_2MHZ_N [2]),
			.ADC3_CLK_64MHZ_P (ADC_CLK_64MHZ_P [2]),
			.ADC3_CLK_64MHZ_N (ADC_CLK_64MHZ_N [2]),
			//ADC4 (24 pads)
			.ADC4_DIG_OUTA_P (ADC_DIG_OUTA_P [3]),
			.ADC4_DIG_OUTA_N (ADC_DIG_OUTA_N [3]),
			.ADC4_DIG_OUTB_P (ADC_DIG_OUTB_P [3]),
			.ADC4_DIG_OUTB_N (ADC_DIG_OUTB_N [3]),
			.ADC4_DIG_OUTC_P (ADC_DIG_OUTC_P [3]),
			.ADC4_DIG_OUTC_N (ADC_DIG_OUTC_N [3]),
			.ADC4_DIG_OUTD_P (ADC_DIG_OUTD_P [3]),
			.ADC4_DIG_OUTD_N (ADC_DIG_OUTD_N [3]),
			.ADC4_DIG_OUTE_P (ADC_DIG_OUTE_P [3]),
			.ADC4_DIG_OUTE_N (ADC_DIG_OUTE_N [3]),
			.ADC4_DIG_OUTF_P (ADC_DIG_OUTF_P [3]),
			.ADC4_DIG_OUTF_N (ADC_DIG_OUTF_N [3]),
			.ADC4_DIG_OUTG_P (ADC_DIG_OUTG_P [3]),
			.ADC4_DIG_OUTG_N (ADC_DIG_OUTG_N [3]),
			.ADC4_DIG_OUTH_P (ADC_DIG_OUTH_P [3]),
			.ADC4_DIG_OUTH_N (ADC_DIG_OUTH_N [3]),
			.ADC4_DIG_FRAME_P (ADC_DIG_FRAME_P [3]),
			.ADC4_DIG_FRAME_N (ADC_DIG_FRAME_N [3]),
			.ADC4_DIG_CLKOUT_P (ADC_DIG_CLKOUT_P [3]),
			.ADC4_DIG_CLKOUT_N (ADC_DIG_CLKOUT_N [3]),
			.ADC4_CLK_2MHZ_P (ADC_CLK_2MHZ_P [3]),
			.ADC4_CLK_2MHZ_N (ADC_CLK_2MHZ_N [3]),
			.ADC4_CLK_64MHZ_P (ADC_CLK_64MHZ_P [3]),
			.ADC4_CLK_64MHZ_N (ADC_CLK_64MHZ_N [3]),
			// Pads for the Frontend Mother Board (2 pads)
			.FMB_CONTROL_0 (FMB_CONTROL_0),
			.FMB_CONTROL_1 (FMB_CONTROL_1),
			//	.FMB_CONTROL_2 (FMB_CONTROL_2),
			// Pad-facing signals of the SMU Trinity (13 pads)
			.CKIN (clk_1p28g),
			.CKOUTN (CKOUTN),
			.CKOUTP (CKOUTP),
			.VCEXT (),
			.ATO (),
			.LOCK (LOCK),
			.PLL_EXTERNAL_RESETN (1'b1),
			.IBIAS_CML (),
			.IBIAS_CS (),
			.SEROUTN1 (SEROUTN1),
			.SEROUTP1 (SEROUTP1),
			.SEROUTN2 (SEROUTN2),
			.SEROUTP2 (SEROUTP2),
			// EFUSE (6 pads)
			.EFUSE_CSB (EFUSE_CSB),
			.EFUSE_DIN (EFUSE_DIN),
			.EFUSE_PGM (EFUSE_PGM),
			.EFUSE_SCLK (EFUSE_SCLK),
			.EFUSE_DOUT (EFUSE_DOUT),
			.EFUSE_VDDQ (EFUSE_VDDQ),
			//Power-on Rst (1 pad)
			//.Rst_PowerOn, // REMOVED because we now have the POR Active Low Power-On Reset NOT FROM A PAD
			.PAD_RESET (PAD_RESET), // Active Low CMOS Reset from a PAD
			//Power
			.VDD_IO (),
			.VDD_CORE (),
			.VDD_LARASIC (),
			.VSS ()
    );

	wire [3:0] MOSI = 4'b0;

	 generate
			for (genvar gi = 0; gi < 4; gi++)
			begin:adc_loop
	 
				 COLDADCP1 coldadc
				 (
					.I2C_SDA_C2W (I2C_SDA_C2W[gi]),
					.I2C_SDA_W2C (I2C_COLDATA_SDA_W2C), // 
					.I2C_SCL (I2C_COLDATA_SCL), // 
					.I2C_ADD_0 (gi[0]), //
					.I2C_ADD_1 (gi[1]), //
					.I2C_ADD_2 (gi[2]), //
					.I2C_ADD_3 (gi[3]), //
					
					.I2C_UART_SEL (I2C), // 
					.CLK_2MHZ_N (ADC_CLK_2MHZ_N [gi]), //
					.CLK_2MHZ_P (ADC_CLK_2MHZ_P [gi]), //
					.CLK_64MHZ_N (ADC_CLK_64MHZ_N [gi]), //
					.CLK_64MHZ_P (ADC_CLK_64MHZ_P [gi]), //
					.DIG_FRAME_N (ADC_DIG_FRAME_N [gi]), //
					.DIG_FRAME_P (ADC_DIG_FRAME_P [gi]), //
					.DIG_CLKOUT_N (ADC_DIG_CLKOUT_N [gi]), //
					.DIG_CLKOUT_P (ADC_DIG_CLKOUT_P [gi]), //
					.DIG_OUTA_P (ADC_DIG_OUTA_P [gi]), //
					.DIG_OUTA_N (ADC_DIG_OUTA_N [gi]), //
					.DIG_OUTB_P (ADC_DIG_OUTB_P [gi]), //
					.DIG_OUTB_N (ADC_DIG_OUTB_N [gi]), //
					.DIG_OUTC_P (ADC_DIG_OUTC_P [gi]), //
					.DIG_OUTC_N (ADC_DIG_OUTC_N [gi]), //
					.DIG_OUTD_P (ADC_DIG_OUTD_P [gi]), //
					.DIG_OUTD_N (ADC_DIG_OUTD_N [gi]), //
					.DIG_OUTE_P (ADC_DIG_OUTE_P [gi]), //
					.DIG_OUTE_N (ADC_DIG_OUTE_N [gi]), //
					.DIG_OUTF_P (ADC_DIG_OUTF_P [gi]), //
					.DIG_OUTF_N (ADC_DIG_OUTF_N [gi]), //
					.DIG_OUTG_P (ADC_DIG_OUTG_P [gi]), //
					.DIG_OUTG_N (ADC_DIG_OUTG_N [gi]), //
					.DIG_OUTH_P (ADC_DIG_OUTH_P [gi]), //
					.DIG_OUTH_N (ADC_DIG_OUTH_N [gi]), //
					.MASTER_RESET (ADC_MASTER_RESET),
					.MOSI (MOSI [gi]),
					.MISO (),
					.DIGITAL_MUX_OUT_N (),
					.DIGITAL_MUX_OUT_P (),
					.SSO_DATA_OUT_0 (),
					.SSO_DATA_OUT_1 (),
					.SSO_FRAME_CLOCK (),
					.SSO_OUT_CLOCK (),
					.VREFP (),
					.VREFN (),
					.VREF_EXT (),
					.VOLTAGE_MONITOR (),
					.VCMO (),
					.VCMI (),
					.RBIAS_CMOS (),
					.INP (),
					.INN (),
					.CURRENT_MONITOR (),
					.AUX_ISOURCE (),
					.AUX_ISINK (),
					.AUX_VOLTAGE (),
					.ADC_TEST_INP (),
					.ADC_TEST_INN (),
					.VREF_DECOUPLE (),
					.TAVDDA2P5 (),
					.TAVDDD2P5_2 (),
					.VSSD2P5 (),
					.TAVDDA2P5_2 (),
					.TACVDDD1P2_2 (),
					.VSSIO (),
					.TAVDD_IO (),
					.VSSD1P2 (),
					.TACVDDD1P2 (),
					.TAVDDD2P5 ()
				);
			end
	 endgenerate


//------------------------------------------------------------------------
// Simple Clock Generator
//------------------------------------------------------------------------

always #10000 tb_ACLK = !tb_ACLK;
reg [3:0] refclk_cnt = 4'b0;
always
begin 
    // disable for faster simulation
    #390.6 clk_1p28g = !clk_1p28g; // simulated PLL output, 1.28G 
    if (refclk_cnt == 4'd9)
    begin
        gtrefclk00p_in = ~gtrefclk00p_in; // 128 M ref clk
        gtrefclk00n_in = ~gtrefclk00p_in;
        refclk_cnt = 4'd0;
    end
    else
        refclk_cnt++;
end

always @(posedge clk62p5) 
begin
	clk62_cnt++;
end

assign CLK_64MHZ_SYS_P =  clk62p5;
assign CLK_64MHZ_SYS_N = !clk62p5;

reg [31:0] counter_2M = 0;
always @(posedge ADC_CLK_2MHZ_P[3])
begin
	counter_2M++;
end
 
reg [31:0] counter_tbclk = 0;
reg i2c0_scl_r;
reg [31:0] rd_data;
always @(posedge tb_ACLK)
begin
	counter_tbclk++;
	
	i2c0_scl_r = i2c0_sclp; // I2C clk history
end

reg [31:0] rd_addr;

reg [3:0] adc_frame_cnt = 0;
// feeding test data to ADC inputs 
always @(posedge test_bench_coldata.adc_loop[0].coldadc.coldADC_Top_0.Digital_1.Clk_16MHz_cu0)
begin
    // assign fixed test data inputs for ADCs
    // {adc_num, output_num, frame_num, 4'b0} last 4 zeros are cut off by Frame-12 format
    test_bench_coldata.adc_loop[0].coldadc.coldADC_Top_0.Analog_2.synced_adc_cal_1p2_0_r = {8'h11 , adc_frame_cnt, 4'b0};
    test_bench_coldata.adc_loop[0].coldadc.coldADC_Top_0.Analog_2.synced_adc_cal_1p2_1_r = {8'h12 , adc_frame_cnt, 4'b0};
    test_bench_coldata.adc_loop[1].coldadc.coldADC_Top_0.Analog_2.synced_adc_cal_1p2_0_r = {8'h21 , adc_frame_cnt, 4'b0};
    test_bench_coldata.adc_loop[1].coldadc.coldADC_Top_0.Analog_2.synced_adc_cal_1p2_1_r = {8'h22 , adc_frame_cnt, 4'b0};
    test_bench_coldata.adc_loop[2].coldadc.coldADC_Top_0.Analog_2.synced_adc_cal_1p2_0_r = {8'h31 , adc_frame_cnt, 4'b0};
    test_bench_coldata.adc_loop[2].coldadc.coldADC_Top_0.Analog_2.synced_adc_cal_1p2_1_r = {8'h32 , adc_frame_cnt, 4'b0};
    test_bench_coldata.adc_loop[3].coldadc.coldADC_Top_0.Analog_2.synced_adc_cal_1p2_0_r = {8'h41 , adc_frame_cnt, 4'b0};
    test_bench_coldata.adc_loop[3].coldadc.coldADC_Top_0.Analog_2.synced_adc_cal_1p2_1_r = {8'h42 , adc_frame_cnt, 4'b0};
    
    if (test_bench_coldata.adc_loop[0].coldadc.coldADC_Top_0.Digital_1.frontEndSample == 1'b1)
        adc_frame_cnt = 0;
    else
        adc_frame_cnt++;
    
end

initial
begin

    $display ("running the tb");
    
    CHIP_ID_0 = 1'b1; // this is lower bit of chip id, full chip id is {4'b001, CHIP_ID_0}
    
    tb_ARESETn = 1'b0;
    PAD_RESET = 1'b0; // COLDATA reset
    repeat(200)@(posedge tb_ACLK);        
    tb_ARESETn = 1'b1;
    repeat(200)@(posedge tb_ACLK);        
    PAD_RESET = 1'b1; 
    repeat(1100)@(posedge clk62p5); // COLDATA initialization time       
    @(posedge tb_ACLK);
    
    repeat(5) @(posedge tb_ACLK);
      
    //Reset the PL zynq_ultra_ps_e_0   Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0
    `ZYNQ_VIP_0.por_srstb_reset(1'b0);
    `ZYNQ_VIP_0.fpga_soft_reset(32'h1);   
    #200000;  // This delay depends on your clock frequency. It should be at least 16 clock cycles. 
    `ZYNQ_VIP_0.por_srstb_reset(1'b1);
    `ZYNQ_VIP_0.fpga_soft_reset(32'h0);
    
    // Set debug level info to off. For more info, set to 1.
    `ZYNQ_VIP_0.set_debug_level_info(0);
    `ZYNQ_VIP_0.set_stop_on_error(1);
    // Set minimum port verbosity. Change to 32'd400 for maximum.
    `ZYNQ_VIP_0.M_AXI_HPM0_FPD.set_verbosity(32'd0);
    `ZYNQ_VIP_0.S_AXI_HP0_FPD.set_verbosity(32'd0);


    // reset coldata_rx module
    // configure gpio as outputs
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0020004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000000, 1, 16'h000F, 4, resp);

    // reset
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0020000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000001, 1, 16'h000F, 4, resp);
    // remove reset
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0020000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000000, 1, 16'h000F, 4, resp);
    

    // trying to work with I2C
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b010000001_001000000_000001010, 1, 16'h000F, 4, resp); // read COLDATA from address 20, which should fail

    // start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000001, 1, 16'h000F, 4, resp);
    // remove start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000000, 1, 16'h000F, 4, resp);

    #40000000; // give I2C time 


    // data, all 3 bytes + ack bits placeholders
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b001100001_101000000_000001010, 1, 16'h000F, 4, resp); // read from address A0, which should actually address ADC

    // start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000001, 1, 16'h000F, 4, resp);
    // remove start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000000, 1, 16'h000F, 4, resp);

    #40000000; // give I2C time 

    // data, all 3 bytes + ack bits placeholders
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b010000000_001000000_000001010, 1, 16'h000F, 4, resp); // write FASTACT command = 00000101 = ADC RESET, wrong chip

    // start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000001, 1, 16'h000F, 4, resp);
    // remove start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000000, 1, 16'h000F, 4, resp);

    #40000000; // give I2C time 


    // data, all 3 bytes + ack bits placeholders
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b001100000_001000000_000001010, 1, 16'h000F, 4, resp); // write FASTACT command = 00000101 = ADC RESET

    // start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000001, 1, 16'h000F, 4, resp);
    // remove start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000000, 1, 16'h000F, 4, resp);

    #40000000; // give I2C time 

    // FAST command FSM reset and align
//    fast_command = 1;
//    repeat(4)@(posedge clk62p5);     
//    fast_command = 0;
//    repeat(4)@(posedge clk62p5);      

//    // issue FASTACT = ADC RESET
//    // FAST command sequence: 11100100 
//    fast_command = 1;
//    repeat(3)@(posedge clk62p5);     
//    fast_command = 0;
//    repeat(2)@(posedge clk62p5);      
//    fast_command = 1;
//    repeat(1)@(posedge clk62p5);      
//    fast_command = 0;
//    repeat(2)@(posedge clk62p5);    
//    fast_command = 1;
    
    // generate FAST command using the fast command module
//    `ZYNQ_VIP_0.write_burst_strb(40'h00A0030000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
//            128'b100000, 1, 16'h000F, 4, resp); // tell FAST command module to send ACT command
    

    // write delay between EDGE and ACT command for correct ADC reset    
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0030004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'd19, 1, 16'h000F, 4, resp); // value of 19 is found experimentally


    // generate FAST command using the fast command module
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0030000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b100000, 1, 16'h000F, 4, resp); // tell FAST command module to send EDGE+ACT command to reset ADC with correct timing
    
    #1000000; // fast command + ADC reset pulse

    `ZYNQ_VIP_0.read_burst(40'h00A0010004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, read_data128, resp);
    $display ("read data: %h", read_data128[31:0]);

    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b001100000_000000110_001111000, 1, 16'h000F, 4, resp); // write reg 0x3 = 0b00111100 (data from COLDADC)

    // start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000001, 1, 16'h000F, 4, resp);
    // remove start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000000, 1, 16'h000F, 4, resp);

    #40000000; // tive I2C time

    // backdoor settings to coldadc, to output test pattern  (1) or ADC data (0) config_test_data_mode
    test_bench_coldata.adc_loop[0].coldadc.coldADC_Top_0.Digital_1.cal_core_1.external_interface_inst.regfile_inst.config_regfile_inst.config_bits[50][5] = 0;
    test_bench_coldata.adc_loop[1].coldadc.coldADC_Top_0.Digital_1.cal_core_1.external_interface_inst.regfile_inst.config_regfile_inst.config_bits[50][5] = 0;
    test_bench_coldata.adc_loop[2].coldadc.coldADC_Top_0.Digital_1.cal_core_1.external_interface_inst.regfile_inst.config_regfile_inst.config_bits[50][5] = 0;
    test_bench_coldata.adc_loop[3].coldadc.coldADC_Top_0.Digital_1.cal_core_1.external_interface_inst.regfile_inst.config_regfile_inst.config_bits[50][5] = 0;

    // backdoor frame marker delay, register config_start_number[4:0], according to slide sent by David on 2020-06-17
    test_bench_coldata.adc_loop[0].coldadc.coldADC_Top_0.Digital_1.coldADC_DigitalBlock_0.BEND_STARTNUMREG_ADC_1.storedData = 8'h0c;
    test_bench_coldata.adc_loop[1].coldadc.coldADC_Top_0.Digital_1.coldADC_DigitalBlock_0.BEND_STARTNUMREG_ADC_1.storedData = 8'h0c;
    test_bench_coldata.adc_loop[2].coldadc.coldADC_Top_0.Digital_1.coldADC_DigitalBlock_0.BEND_STARTNUMREG_ADC_1.storedData = 8'h0c;
    test_bench_coldata.adc_loop[3].coldadc.coldADC_Top_0.Digital_1.coldADC_DigitalBlock_0.BEND_STARTNUMREG_ADC_1.storedData = 8'h0c;

    // backdoor COLDATA to output ADC data in FRAME12 format, register: FRAMECONFIGREG
    test_bench_coldata.coldata.ADC_Configure_Reg_0.storedData = 8'b0; 

    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b001100010_000000110_000000000, 1, 16'h000F, 4, resp); // read reg 3 back

    // start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000001, 1, 16'h000F, 4, resp);
    // remove start command
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0010000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 
            128'b000000000_000000000_000000000, 1, 16'h000F, 4, resp);

    #40000000;

    // backdoor settings to coldADC, output ADC data
//    test_bench_coldata.adc_loop[0].coldadc.coldADC_Top_0.Digital_1.cal_core_1.external_interface_inst.regfile_inst.config_regfile_inst.config_bits[50][5] = 0;
//    test_bench_coldata.adc_loop[1].coldadc.coldADC_Top_0.Digital_1.cal_core_1.external_interface_inst.regfile_inst.config_regfile_inst.config_bits[50][5] = 0;
//    test_bench_coldata.adc_loop[2].coldadc.coldADC_Top_0.Digital_1.cal_core_1.external_interface_inst.regfile_inst.config_regfile_inst.config_bits[50][5] = 0;
//    test_bench_coldata.adc_loop[3].coldadc.coldADC_Top_0.Digital_1.cal_core_1.external_interface_inst.regfile_inst.config_regfile_inst.config_bits[50][5] = 0;

    `ZYNQ_VIP_0.read_burst(40'h00A0010004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, read_data128, resp);
    $display ("read data: %h", read_data128[31:0]);
    
    #10000000;
    
    $display ("clk62_cnt: %d", clk62_cnt);
    $display ("clock 2M count: %d", counter_2M);
    $display ("clock tb count: %d", counter_tbclk);
    $display ("test changes");
    $display ("Testbench finished %t", $time);   
    
    $finish;

end

   assign temp_clk = tb_ACLK;
   assign temp_rstn = tb_ARESETn;
  
// duplicate single COLDATA outputs to occupy all WIB inputs  
assign gthrxn_in[7:0]  = {8{SEROUTN1}};
assign gthrxp_in[7:0]  = {8{SEROUTP1}};
assign gthrxn_in[15:8] = {8{SEROUTN2}};
assign gthrxp_in[15:8] = {8{SEROUTP2}};

    wib_top mpsoc_sys
    (
        .clk62p5       (clk62p5      ),
        .gpo_0         (gpo_0        ),
        .i2c0_scln     (i2c0_scln    ),
        .i2c0_sclp     (i2c0_sclp    ),
        .i2c0_sda_inn  (i2c0_sda_inn ),
        .i2c0_sda_inp  (i2c0_sda_inp ),
        .i2c0_sda_outn (i2c0_sda_outn),
        .i2c0_sda_outp (i2c0_sda_outp),

        .fastcommand_out_n (FASTCOMMAND_IN_N),
        .fastcommand_out_p (FASTCOMMAND_IN_P),

        .gtrefclk00p_in (gtrefclk00p_in), // reference clocks(), 128M
        .gtrefclk00n_in (gtrefclk00n_in), // reference clocks(), 128M
        .gthrxn_in      (gthrxn_in    ), // RX diff lines
        .gthrxp_in      (gthrxp_in    )    
    );


endmodule

/*
    // CDMA transfer from example design, keeping here for reference
      
    //Fill the source data area
    `ZYNQ_VIP_0.pre_load_mem(2'b00, 32'h00010000, 4096); // Write Random
    
    //Configure CDMA transfer        
    //The M_AXI_HPM0_FPD interface is configured for 128 bits.
    //Use the write_burst_strb command to control which bytes on the interface to enable for the CDMA register writes.
    //Use the read_burst command to control which bytes on the interface to return for the CDMA register reads.
   
    // Read status
    // read_burst(address, len, size, burst type, lock, cache, prot, data, response)
    `ZYNQ_VIP_0.read_burst(40'h00A0000004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, read_data128, resp);
    $display ("%t, running testbench COLDATA, CDMA status after reset 32'h%x",$time, read_data128[31:0]);

    // Set the source address
    // write_burst_strb(addr, len, size, burst, lock, cache, prot, data, strb_en, strb, datasize, resp);
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0000018, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 128'h00000000000000000000000000010000, 1, 16'h000F, 4, resp);
    // Set the destination address
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0000020, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 128'h00000000000000000000000000020000, 1, 16'h000F, 4, resp);
    // Enable Interrupt on Complete
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0000000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 128'h00000000000000000000000000017000, 1, 16'h000F, 4, resp);
    // Read the control register
    `ZYNQ_VIP_0.read_burst(40'h00A0000000, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, read_data128, resp);
    $display ("%t, running testbench COLDATA, CDMA control 32'h%x",$time, read_data128[31:0]);
    $display ("clk62_cnt: %h", clk62_cnt);

    // Set bytes to transfer to 0x100 and start transfer.
    `ZYNQ_VIP_0.write_burst_strb(40'h00A0000028, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, 128'h00000000000000000000000000000100, 1, 16'h000F, 4, resp);
    // Read control register/verify CDMA is running
    `ZYNQ_VIP_0.read_burst(40'h00A0000004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, read_data128, resp);
    $display ("%t, running testbench COLDATA, CDMA status after transfer started 32'h%x",$time, read_data128[31:0]);
    $display ("clk62_cnt: %h", clk62_cnt);


    // Wait for interrupt
    `ZYNQ_VIP_0.wait_interrupt(4'h0,irq_status);
    
    if(irq_status & 8'h01) begin
        $display("SUCCESS: CDMA interrupt received");
    end
    else begin
        $display("FAILURE: CDMA interrupt not received");
        cdma_tb_pass = 0;
    end 
    $display ("clk62_cnt: %h", clk62_cnt);
    
    // Read the status register
    `ZYNQ_VIP_0.read_burst(40'h00A0000004, 4'h0, 3'b010, 2'b01, 2'b00, 4'h0, 3'b000, read_data128, resp);
    $display ("%t, running testbench COLDATA, CDMA status after interrupt 32'h%x",$time, read_data128[31:0]);
    $display ("clk62_cnt: %h resp: %b", clk62_cnt, resp);
    // Check for IRQ error
    if(read_data128[31:0] & 32'h00004000) begin
      $display("FAILURE: Error IRQ received");
      cdma_tb_pass = 0;
    end
    $display ("clk62_cnt: %h", clk62_cnt);
    
    // Do backdoor data compare to verify transfer
    for(int addr = 40'h0000010000;addr < 40'h0000010100;addr = addr + 4) begin
      `ZYNQ_VIP_0.read_mem(addr, 4, src_data);
      `ZYNQ_VIP_0.read_mem(addr + 40'h0000010000, 4, dst_data); 
      //$display("Data compare addr: 0x%04X, src data: 0x%08X dst data: 0x%08X",addr,src_data,dst_data);
      if(src_data != dst_data) begin
        $display("FAILURE: Data compare addr: 0x%08X, src data: 0x%08X dst data: 0x%08X",addr,src_data,dst_data);
        cdma_tb_pass = 0;
      end
    end
   
    if(cdma_tb_pass) $display("SUCCESS: Data compare passed");
//	repeat(6000) @(posedge tb_ACLK); // wait for 2MHz clk to start
*/