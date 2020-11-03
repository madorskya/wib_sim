
`timescale 1ns / 1ps

module wib_tf;

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
   reg  CHIP_ID_0 = 4'b0010; //I2C ChipID. Must be 4'b0010 (COLDATA0 (bottom)) or4'b0011 (COLDATA1 (top))
   //System Clock (2 pads)
   wire  CLK_64MHZ_SYS_P;
   wire  CLK_64MHZ_SYS_N;
   //FastCommand Input (2 pads)
   reg  FASTCOMMAND_IN_P;
   reg  FASTCOMMAND_IN_N;
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
	 
   
    COLDATAP2 coldata
    (	
			//I2C related pins (from the Warm) (18 pads)
			.I2C_LVDS_SCL_P (I2C_LVDS_SCL_P), //I2C Clock from Warm via LVDS
			.I2C_LVDS_SCL_N (I2C_LVDS_SCL_N), //I2C Clock from Warm via LVDS
			.I2C_LVDS_SDA_W2C_P (I2C_LVDS_SDA_W2C_P), //I2C Data Input from Warm via LVDS
			.I2C_LVDS_SDA_W2C_N (I2C_LVDS_SDA_W2C_N), //I2C Data Input from Warm via LVDS
			.I2C_LVDS_SDA_C2W_P (I2C_LVDS_SDA_C2W_P), //I2C Data Output to Warm via LVDS
			.I2C_LVDS_SDA_C2W_N (I2C_LVDS_SDA_C2W_N), //I2C Data Output to Warm via LVDS
			.I2C_CMOS_SCL (I2C_CMOS_SCL), //I2C Clock from Warm via relay from other colData
			.I2C_CMOS_SDA_W2C (I2C_CMOS_SDA_W2C), //I2C Data Input from Warm via relay from other colData
			.I2C_CMOS_SDA_C2W (I2C_CMOS_SDA_C2W), //I2C Data Output to Warm via relay by other colData
			.I2C_LVDS1_CMOS0_MODE (I2C_LVDS1_CMOS0_MODE), //Control Signal: Select I2C via LVDS or relay
			
			.I2C_COLDATA_SCL (I2C_COLDATA_SCL), //I2C Clock relayed to other colData and subordinate ADCs ***
			.I2C_COLDATA_SDA_W2C (I2C_COLDATA_SDA_W2C), //I2C Data Input relayed to other colData and subordinate ADCs ***
			
			.I2C_COLDATA_SDA_C2W (I2C_COLDATA_SDA_C2W), //I2C Data Output being relayed from other colData
			
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
			.CKIN (CKIN),
			.CKOUTN (CKOUTN),
			.CKOUTP (CKOUTP),
			.VCEXT (),
			.ATO (),
			.LOCK (LOCK),
			.PLL_EXTERNAL_RESETN (PLL_EXTERNAL_RESETN),
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
			begin
	 
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
					.MASTER_RESET (MASTER_RESET),
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

   reg  clk_64 = 1'b0;
   
   //diff_tx diff_clk (.I(clk_64), .O(CLK_64MHZ_SYS_P), .OB(CLK_64MHZ_SYS_N));
   assign CLK_64MHZ_SYS_P = clk_64;
   assign CLK_64MHZ_SYS_N = ~clk_64;

	 integer i;
	 reg 		 clk2M_r = 0;
	 
   
   initial
     begin
				for (i = 0; i < 32'hffffffff; i++)
					begin
						 if (ADC_CLK_2MHZ_P[3] != clk2M_r)
							 $write ("i = %d clk2M = %b\n", i, ADC_CLK_2MHZ_P[3]);
						 

						 clk2M_r = ADC_CLK_2MHZ_P[3];
						 
						 
						 #8 clk_64 = ~clk_64;
	     
					end
     end
   
endmodule // wib_tf

