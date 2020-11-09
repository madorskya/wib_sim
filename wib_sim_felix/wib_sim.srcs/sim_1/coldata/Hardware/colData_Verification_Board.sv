`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: colData_Verification_Board
//***	Description:  2 colData chips - coldData_Top and coldData_Bot
//***               8 coldADC chips - ADC_TOP_1, ADC_TOP_2, ADC_TOP_3, and ADC_TOP_4
//***                                 ADC_BOT_1, ADC_BOT_2, ADC_BOT_3, and ADC_BOT_4
//***
//*******************************************************************************************
//*******************************************************************************************

module colData_Verification_Board (
                                //*** UVM_I2C_LVDS Interface
                                    input   logic     I2C_LVDS_SCL_P,
                                    input   logic     I2C_LVDS_SCL_N,
                                    input   logic     I2C_LVDS_SDA_W2C_P,
                                    input   logic     I2C_LVDS_SDA_W2C_N,
                                    output  logic     I2C_LVDS_SDA_C2W_P,
                                    output  logic     I2C_LVDS_SDA_C2W_N,
                                    input   logic     COLDATA_TOP_CHIP_ID_0,
                                    input   logic     COLDATA_TOP_CHIP_ID_1,
                                    input   logic     COLDATA_TOP_CHIP_ID_2,
                                    input   logic     COLDATA_TOP_CHIP_ID_3,
                                    input   logic     ADC_TOP_1_I2C_ADD_0,
                                    input   logic     ADC_TOP_1_I2C_ADD_1,
                                    input   logic     ADC_TOP_1_I2C_ADD_2,
                                    input   logic     ADC_TOP_1_I2C_ADD_3,
                                    input   logic     ADC_TOP_2_I2C_ADD_0,
                                    input   logic     ADC_TOP_2_I2C_ADD_1,
                                    input   logic     ADC_TOP_2_I2C_ADD_2,
                                    input   logic     ADC_TOP_2_I2C_ADD_3,
                                    input   logic     ADC_TOP_3_I2C_ADD_0,
                                    input   logic     ADC_TOP_3_I2C_ADD_1,
                                    input   logic     ADC_TOP_3_I2C_ADD_2,
                                    input   logic     ADC_TOP_3_I2C_ADD_3,
                                    input   logic     ADC_TOP_4_I2C_ADD_0,
                                    input   logic     ADC_TOP_4_I2C_ADD_1,
                                    input   logic     ADC_TOP_4_I2C_ADD_2,
                                    input   logic     ADC_TOP_4_I2C_ADD_3,
                                    input   logic     COLDATA_BOT_CHIP_ID_0,
                                    input   logic     COLDATA_BOT_CHIP_ID_1,
                                    input   logic     COLDATA_BOT_CHIP_ID_2,
                                    input   logic     COLDATA_BOT_CHIP_ID_3,
                                    input   logic     ADC_BOT_1_I2C_ADD_0,
                                    input   logic     ADC_BOT_1_I2C_ADD_1,
                                    input   logic     ADC_BOT_1_I2C_ADD_2,
                                    input   logic     ADC_BOT_1_I2C_ADD_3,
                                    input   logic     ADC_BOT_2_I2C_ADD_0,
                                    input   logic     ADC_BOT_2_I2C_ADD_1,
                                    input   logic     ADC_BOT_2_I2C_ADD_2,
                                    input   logic     ADC_BOT_2_I2C_ADD_3,
                                    input   logic     ADC_BOT_3_I2C_ADD_0,
                                    input   logic     ADC_BOT_3_I2C_ADD_1,
                                    input   logic     ADC_BOT_3_I2C_ADD_2,
                                    input   logic     ADC_BOT_3_I2C_ADD_3,
                                    input   logic     ADC_BOT_4_I2C_ADD_0,
                                    input   logic     ADC_BOT_4_I2C_ADD_1,
                                    input   logic     ADC_BOT_4_I2C_ADD_2,
                                    input   logic     ADC_BOT_4_I2C_ADD_3,
                                //*** UVM_ClkAndFastCmd Interface
                                    input   logic     CLK_64MHZ_SYS_P,
                                    input   logic     CLK_64MHZ_SYS_N,
                                    input   logic     FASTCOMMAND_IN_P,
                                    input   logic     FASTCOMMAND_IN_N,
                                    output  logic     ADC_TOP_1_CLK_2MHZ_P,
                                    output  logic     ADC_TOP_1_CLK_2MHZ_N,
                                    output  logic     ADC_TOP_2_CLK_2MHZ_P,
                                    output  logic     ADC_TOP_2_CLK_2MHZ_N,
                                    output  logic     ADC_TOP_3_CLK_2MHZ_P,
                                    output  logic     ADC_TOP_3_CLK_2MHZ_N,
                                    output  logic     ADC_TOP_4_CLK_2MHZ_P,
                                    output  logic     ADC_TOP_4_CLK_2MHZ_N,
                                    output  logic     ADC_BOT_1_CLK_2MHZ_P,
                                    output  logic     ADC_BOT_1_CLK_2MHZ_N,
                                    output  logic     ADC_BOT_2_CLK_2MHZ_P,
                                    output  logic     ADC_BOT_2_CLK_2MHZ_N,
                                    output  logic     ADC_BOT_3_CLK_2MHZ_P,
                                    output  logic     ADC_BOT_3_CLK_2MHZ_N,
                                    output  logic     ADC_BOT_4_CLK_2MHZ_P,
                                    output  logic     ADC_BOT_4_CLK_2MHZ_N,
                                    output  logic     ADC_TOP_1_CLK_64MHZ_P,
                                    output  logic     ADC_TOP_1_CLK_64MHZ_N,
                                    output  logic     ADC_TOP_2_CLK_64MHZ_P,
                                    output  logic     ADC_TOP_2_CLK_64MHZ_N,
                                    output  logic     ADC_TOP_3_CLK_64MHZ_P,
                                    output  logic     ADC_TOP_3_CLK_64MHZ_N,
                                    output  logic     ADC_TOP_4_CLK_64MHZ_P,
                                    output  logic     ADC_TOP_4_CLK_64MHZ_N,
                                    output  logic     ADC_BOT_1_CLK_64MHZ_P,
                                    output  logic     ADC_BOT_1_CLK_64MHZ_N,
                                    output  logic     ADC_BOT_2_CLK_64MHZ_P,
                                    output  logic     ADC_BOT_2_CLK_64MHZ_N,
                                    output  logic     ADC_BOT_3_CLK_64MHZ_P,
                                    output  logic     ADC_BOT_3_CLK_64MHZ_N,
                                    output  logic     ADC_BOT_4_CLK_64MHZ_P,
                                    output  logic     ADC_BOT_4_CLK_64MHZ_N,
                                //*** UVM_SMU Interface
                                    output  logic     TOP_ClkOutput_N,
                                    output  logic     TOP_ClkOutput_P,
                                    output  logic     TOP_SerialOutput1_N,
                                    output  logic     TOP_SerialOutput1_P,
                                    output  logic     TOP_SerialOutput2_N,
                                    output  logic     TOP_SerialOutput2_P,
                                    output  logic     BOT_ClkOutput_N,
                                    output  logic     BOT_ClkOutput_P,
                                    output  logic     BOT_SerialOutput1_N,
                                    output  logic     BOT_SerialOutput1_P,
                                    output  logic     BOT_SerialOutput2_N,
                                    output  logic     BOT_SerialOutput2_P,
                                  );
  supply0   TIELOW;
  supply1   TIEHIGH;

  wire  logic   TOP_I2C_SCL;
  wire  logic   TOP_I2C_SDA_W2C;
  wire  logic   BOT2TOP_I2C_SDA_C2W;
  wire  logic   ADC_TOP_1_SDA_C2W;
  wire  logic   ADC_TOP_2_SDA_C2W;
  wire  logic   ADC_TOP_3_SDA_C2W;
  wire  logic   ADC_TOP_4_SDA_C2W;

//******************************************************************************
//******************************************************************************
//***
//*** TOP TOP TOP TOP TOP TOP TOP TOP TOP TOP TOP TOP TOP TOP TOP TOP TOP TOP
//***
//******************************************************************************
//******************************************************************************

  //******************************************************************************
  //******************************************************************************
  //***
  //*** Module Instantiation: Top-side COLDATA chip
  //***
  //******************************************************************************
  //******************************************************************************

  coldData  coldData_Top (
    .I2C_LVDS_SCL_P( 	      I2C_LVDS_SCL_P            ),    //I2C Interface
    .I2C_LVDS_SCL_N( 	      I2C_LVDS_SCL_N            ),    //I2C Interface
    .I2C_LVDS_SDA_W2C_P( 	  I2C_LVDS_SDA_W2C_P        ),    //I2C Interface
    .I2C_LVDS_SDA_W2C_N( 	  I2C_LVDS_SDA_W2C_N        ),    //I2C Interface
    .I2C_LVDS_SDA_C2W_P( 	  I2C_LVDS_SDA_C2W_P        ),    //I2C Interface
    .I2C_LVDS_SDA_C2W_N( 	  I2C_LVDS_SDA_C2W_N        ),    //I2C Interface
    .I2C_CMOS_SCL( 	        TIELOW 	                  ),    //*** Not connected on colData Top
    .I2C_CMOS_SDA_W2C( 	    TIELOW 	                  ),    //*** Not connected on colData Top
    .I2C_CMOS_SDA_C2W( 	    UNCONNECTED_COLDATA_TOP_1 ),    //*** Not connected on colData Top
    .I2C_LVDS1_CMOS0_MODE(  TIEHIGH              	    ),    //Fixed to LVDS
    .I2C_COLDATA_SCL(       TOP_I2C_SCL               ),    //Top-side I2C Relay
    .I2C_COLDATA_SDA_W2C(   TOP_I2C_SDA_W2C           ),    //Top-side I2C Relay
    .I2C_OTHER_SDA_C2W(     BOT2TOP_I2C_SDA_C2W       ),    //Top-side I2C Relay
    .I2C_ADC_1_SDA_C2W(     ADC_TOP_1_SDA_C2W         ),    //Top-side I2C Relay
    .I2C_ADC_2_SDA_C2W(     ADC_TOP_2_SDA_C2W         ),    //Top-side I2C Relay
    .I2C_ADC_3_SDA_C2W(     ADC_TOP_3_SDA_C2W         ),    //Top-side I2C Relay
    .I2C_ADC_4_SDA_C2W(     ADC_TOP_4_SDA_C2W         ),    //Top-side I2C Relay
    .CHIP_ID_0(             COLDATA_TOP_CHIP_ID_0     ),    //I2C Interface
    .CHIP_ID_1(             COLDATA_TOP_CHIP_ID_1     ),    //I2C Interface
    .CHIP_ID_2(             COLDATA_TOP_CHIP_ID_2     ),    //I2C Interface
    .CHIP_ID_3(             COLDATA_TOP_CHIP_ID_3     ),    //I2C Interface
    .CLK_64MHZ_SYS_P(       CLK_64MHZ_SYS_P           ),    //System Interface
    .CLK_64MHZ_SYS_N(       CLK_64MHZ_SYS_N           ),    //System Interface
    .FASTCOMMAND_IN_P(      FASTCOMMAND_IN_P          ),    //System Interface
    .FASTCOMMAND_IN_N(      FASTCOMMAND_IN_N          ),    //System Interface
    .LARASIC1_SCK(          TOP_LARASIC1_SCK          ),    //LARASIC Whitebox Interface
    .LARASIC1_SDO(          TOP_LARASIC1_SDO          ),    //LARASIC Whitebox Interface
    .LARASIC1_CD(           TOP_LARASIC1_CD           ),    //LARASIC Whitebox Interface
    .LARASIC1_SDI(          TOP_LARASIC1_SDI          ),    //LARASIC Whitebox Interface
    .LARASIC2_SCK(          TOP_LARASIC2_SCK          ),    //LARASIC Whitebox Interface
    .LARASIC2_SDO(          TOP_LARASIC2_SDO          ),    //LARASIC Whitebox Interface
    .LARASIC2_CD(           TOP_LARASIC2_CD           ),    //LARASIC Whitebox Interface
    .LARASIC2_SDI(          TOP_LARASIC2_SDI          ),    //LARASIC Whitebox Interface
    .LARASIC3_SCK(          TOP_LARASIC3_SCK          ),    //LARASIC Whitebox Interface
    .LARASIC3_SDO(          TOP_LARASIC3_SDO          ),    //LARASIC Whitebox Interface
    .LARASIC3_CD(           TOP_LARASIC3_CD           ),    //LARASIC Whitebox Interface
    .LARASIC3_SDI(          TOP_LARASIC3_SDI          ),    //LARASIC Whitebox Interface
    .LARASIC4_SCK(          TOP_LARASIC4_SCK          ),    //LARASIC Whitebox Interface
    .LARASIC4_SDO(          TOP_LARASIC4_SDO          ),    //LARASIC Whitebox Interface
    .LARASIC4_CD(           TOP_LARASIC4_CD           ),    //LARASIC Whitebox Interface
    .LARASIC4_SDI(          TOP_LARASIC4_SDI          ),    //LARASIC Whitebox Interface
    .LARASIC1_CALIB_STROBE( TOP_LARASIC1_CALIB_STROBE ),    //LARASIC Whitebox Interface
    .LARASIC2_CALIB_STROBE( TOP_LARASIC2_CALIB_STROBE ),    //LARASIC Whitebox Interface
    .LARASIC3_CALIB_STROBE( TOP_LARASIC3_CALIB_STROBE ),    //LARASIC Whitebox Interface
    .LARASIC4_CALIB_STROBE( TOP_LARASIC4_CALIB_STROBE ),    //LARASIC Whitebox Interface
    .ADC1_DIG_OUTA_P(       ADC_TOP_1_DIG_OUTA_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTA_N(       ADC_TOP_1_DIG_OUTA_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTB_P(       ADC_TOP_1_DIG_OUTB_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTB_N(       ADC_TOP_1_DIG_OUTB_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTC_P(       ADC_TOP_1_DIG_OUTC_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTC_N(       ADC_TOP_1_DIG_OUTC_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTD_P(       ADC_TOP_1_DIG_OUTD_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTD_N(       ADC_TOP_1_DIG_OUTD_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTE_P(       ADC_TOP_1_DIG_OUTE_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTE_N(       ADC_TOP_1_DIG_OUTE_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTF_P(       ADC_TOP_1_DIG_OUTF_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTF_N(       ADC_TOP_1_DIG_OUTF_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTG_P(       ADC_TOP_1_DIG_OUTG_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTG_N(       ADC_TOP_1_DIG_OUTG_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTH_P(       ADC_TOP_1_DIG_OUTH_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTH_N(       ADC_TOP_1_DIG_OUTH_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_FRAME_P(      ADC_TOP_1_DIG_FRAME_P     ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_FRAME_N(      ADC_TOP_1_DIG_FRAME_N     ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_CLKOUT_P(     ADC_TOP_1_DIG_CLKOUT_P    ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_CLKOUT_N(     ADC_TOP_1_DIG_CLKOUT_N    ),    //ADC Readout Whitebox Interface
    .ADC1_CLK_2MHZ_P(       ADC_TOP_1_CLK_2MHZ_P      ),    //ADC System Whitebox Interface
    .ADC1_CLK_2MHZ_N(       ADC_TOP_1_CLK_2MHZ_N      ),    //ADC System Whitebox Interface
    .ADC1_CLK_64MHZ_P(      ADC_TOP_1_CLK_64MHZ_P     ),    //ADC System Whitebox Interface
    .ADC1_CLK_64MHZ_N(      ADC_TOP_1_CLK_64MHZ_N     ),    //ADC System Whitebox Interface
    .ADC1_MASTER_RESET(     ADC_TOP_1_MASTER_RESET    ),    //ADC System Whitebox Interface
    .ADC2_DIG_OUTA_P(       ADC_TOP_2_DIG_OUTA_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTA_N(       ADC_TOP_2_DIG_OUTA_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTB_P(       ADC_TOP_2_DIG_OUTB_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTB_N(       ADC_TOP_2_DIG_OUTB_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTC_P(       ADC_TOP_2_DIG_OUTC_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTC_N(       ADC_TOP_2_DIG_OUTC_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTD_P(       ADC_TOP_2_DIG_OUTD_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTD_N(       ADC_TOP_2_DIG_OUTD_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTE_P(       ADC_TOP_2_DIG_OUTE_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTE_N(       ADC_TOP_2_DIG_OUTE_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTF_P(       ADC_TOP_2_DIG_OUTF_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTF_N(       ADC_TOP_2_DIG_OUTF_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTG_P(       ADC_TOP_2_DIG_OUTG_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTG_N(       ADC_TOP_2_DIG_OUTG_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTH_P(       ADC_TOP_2_DIG_OUTH_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTH_N(       ADC_TOP_2_DIG_OUTH_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_FRAME_P(      ADC_TOP_2_DIG_FRAME_P     ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_FRAME_N(      ADC_TOP_2_DIG_FRAME_N     ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_CLKOUT_P(     ADC_TOP_2_DIG_CLKOUT_P    ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_CLKOUT_N(     ADC_TOP_2_DIG_CLKOUT_N    ),    //ADC Readout Whitebox Interface
    .ADC2_CLK_2MHZ_P(       ADC_TOP_2_CLK_2MHZ_P      ),    //ADC System Whitebox Interface
    .ADC2_CLK_2MHZ_N(       ADC_TOP_2_CLK_2MHZ_N      ),    //ADC System Whitebox Interface
    .ADC2_CLK_64MHZ_P(      ADC_TOP_2_CLK_64MHZ_P     ),    //ADC System Whitebox Interface
    .ADC2_CLK_64MHZ_N(      ADC_TOP_2_CLK_64MHZ_N     ),    //ADC System Whitebox Interface
    .ADC2_MASTER_RESET(     ADC_TOP_2_MASTER_RESET    ),    //ADC System Whitebox Interface
    .ADC3_DIG_OUTA_P(       ADC_TOP_3_DIG_OUTA_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTA_N(       ADC_TOP_3_DIG_OUTA_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTB_P(       ADC_TOP_3_DIG_OUTB_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTB_N(       ADC_TOP_3_DIG_OUTB_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTC_P(       ADC_TOP_3_DIG_OUTC_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTC_N(       ADC_TOP_3_DIG_OUTC_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTD_P(       ADC_TOP_3_DIG_OUTD_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTD_N(       ADC_TOP_3_DIG_OUTD_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTE_P(       ADC_TOP_3_DIG_OUTE_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTE_N(       ADC_TOP_3_DIG_OUTE_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTF_P(       ADC_TOP_3_DIG_OUTF_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTF_N(       ADC_TOP_3_DIG_OUTF_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTG_P(       ADC_TOP_3_DIG_OUTG_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTG_N(       ADC_TOP_3_DIG_OUTG_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTH_P(       ADC_TOP_3_DIG_OUTH_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTH_N(       ADC_TOP_3_DIG_OUTH_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_FRAME_P(      ADC_TOP_3_DIG_FRAME_P     ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_FRAME_N(      ADC_TOP_3_DIG_FRAME_N     ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_CLKOUT_P(     ADC_TOP_3_DIG_CLKOUT_P    ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_CLKOUT_N(     ADC_TOP_3_DIG_CLKOUT_N    ),    //ADC Readout Whitebox Interface
    .ADC3_CLK_2MHZ_P(       ADC_TOP_3_CLK_2MHZ_P      ),    //ADC System Whitebox Interface
    .ADC3_CLK_2MHZ_N(       ADC_TOP_3_CLK_2MHZ_N      ),    //ADC System Whitebox Interface
    .ADC3_CLK_64MHZ_P(      ADC_TOP_3_CLK_64MHZ_P     ),    //ADC System Whitebox Interface
    .ADC3_CLK_64MHZ_N(      ADC_TOP_3_CLK_64MHZ_N     ),    //ADC System Whitebox Interface
    .ADC3_MASTER_RESET(     ADC_TOP_3_MASTER_RESET    ),    //ADC System Whitebox Interface
    .ADC4_DIG_OUTA_P(       ADC_TOP_4_DIG_OUTA_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTA_N(       ADC_TOP_4_DIG_OUTA_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTB_P(       ADC_TOP_4_DIG_OUTB_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTB_N(       ADC_TOP_4_DIG_OUTB_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTC_P(       ADC_TOP_4_DIG_OUTC_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTC_N(       ADC_TOP_4_DIG_OUTC_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTD_P(       ADC_TOP_4_DIG_OUTD_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTD_N(       ADC_TOP_4_DIG_OUTD_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTE_P(       ADC_TOP_4_DIG_OUTE_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTE_N(       ADC_TOP_4_DIG_OUTE_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTF_P(       ADC_TOP_4_DIG_OUTF_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTF_N(       ADC_TOP_4_DIG_OUTF_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTG_P(       ADC_TOP_4_DIG_OUTG_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTG_N(       ADC_TOP_4_DIG_OUTG_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTH_P(       ADC_TOP_4_DIG_OUTH_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTH_N(       ADC_TOP_4_DIG_OUTH_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_FRAME_P(      ADC_TOP_4_DIG_FRAME_P     ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_FRAME_N(      ADC_TOP_4_DIG_FRAME_N     ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_CLKOUT_P(     ADC_TOP_4_DIG_CLKOUT_P    ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_CLKOUT_N(     ADC_TOP_4_DIG_CLKOUT_N    ),    //ADC Readout Whitebox Interface
    .ADC4_CLK_2MHZ_P(       ADC_TOP_4_CLK_2MHZ_P      ),    //ADC System Whitebox Interface
    .ADC4_CLK_2MHZ_N(       ADC_TOP_4_CLK_2MHZ_N      ),    //ADC System Whitebox Interface
    .ADC4_CLK_64MHZ_P(      ADC_TOP_4_CLK_64MHZ_P     ),    //ADC System Whitebox Interface
    .ADC4_CLK_64MHZ_N(      ADC_TOP_4_CLK_64MHZ_N     ),    //ADC System Whitebox Interface
    .ADC4_MASTER_RESET(     ADC_TOP_4_MASTER_RESET    ),    //ADC System Whitebox Interface
    .CKIN(                  UNCONNECTED_COLDATA_TOP_2 ),
    .CKOUTN(                TOP_ClkOutput_N           ),
    .CKOUTP(                TOP_ClkOutput_P           ),
    .VCEXT(                 UNCONNECTED_COLDATA_TOP_3 ),
    .LOCK( 	                UNCONNECTED_COLDATA_TOP_4 ),
    .SMU_PLL_RESET(         TIEHIGH                   ),
    .IBIAS_CML(             UNCONNECTED_COLDATA_TOP_5 ),
    .IBIAS_CS(              UNCONNECTED_COLDATA_TOP_6 ),
    .SEROUTN1(              TOP_SerialOutput1_N       ),
    .SEROUTP1(              TOP_SerialOutput1_P       ),
    .SEROUTN2(              TOP_SerialOutput2_N       ),
    .SEROUTP2(              TOP_SerialOutput2_P       ),
    .Rst_PowerOn(           MISC_RST_POWERON          ),    //Misc Whitebox Interface
    .PAD_RESET(             TIEHIGH                   )
    );

    //******************************************************************************
    //******************************************************************************
    //***
    //*** Module Instantiation: Top-side ADC_1 (ADC_TOP_1)
    //***
    //******************************************************************************
    //******************************************************************************
    wire  logic   [0:15]  UNCONNECTED_ADC_TOP_1_O;      //***Dummy connection for INP
    wire  logic   [0:15]  UNCONNECTED_ADC_TOP_1_O;      //***Dummy connection for INP

COLDADCP1  ADC_TOP_1 (
    .I2C_SDA_C2W( 	        ADC_TOP_1_SDA_C2W 	      ),
    .I2C_SDA_W2C(           TOP_I2C_SDA_W2C           ),
    .I2C_SCL(               TOP_I2C_SCL               ),
    .I2C_ADD_0(             ADC_TOP_1_I2C_ADD_0       ),
    .I2C_ADD_1(             ADC_TOP_1_I2C_ADD_1       ),
    .I2C_ADD_2(             ADC_TOP_1_I2C_ADD_2       ),
    .I2C_ADD_3(             ADC_TOP_1_I2C_ADD_3       ),
    .I2C_UART_SEL(          I2C                       ),
    .CLK_2MHZ_N(            ADC_TOP_1_CLK_2MHZ_N      ),
    .CLK_2MHZ_P(            ADC_TOP_1_CLK_2MHZ_P      ),
    .CLK_64MHZ_N(           ADC_TOP_1_CLK_64MHZ_N     ),
    .CLK_64MHZ_P(           ADC_TOP_1_CLK_64MHZ_P     ),
    .DIG_FRAME_N(           ADC_TOP_1_DIG_CLKOUT_N    ),
    .DIG_FRAME_P(           ADC_TOP_1_DIG_CLKOUT_P    ),
    .DIG_CLKOUT_N(          ADC_TOP_1_DIG_CLKOUT_N    ),
    .DIG_CLKOUT_P(          ADC_TOP_1_DIG_CLKOUT_P    ),
    .DIG_OUTA_N(            ADC_TOP_1_DIG_OUTA_N      ),
    .DIG_OUTA_P(            ADC_TOP_1_DIG_OUTA_N      ),
    .DIG_OUTB_N(            ADC_TOP_1_DIG_OUTB_N      ),
    .DIG_OUTB_P(            ADC_TOP_1_DIG_OUTB_N      ),
    .DIG_OUTC_N(            ADC_TOP_1_DIG_OUTC_N      ),
    .DIG_OUTC_P(            ADC_TOP_1_DIG_OUTC_N      ),
    .DIG_OUTD_N(            ADC_TOP_1_DIG_OUTD_N      ),
    .DIG_OUTD_P(            ADC_TOP_1_DIG_OUTD_N      ),
    .DIG_OUTE_N(            ADC_TOP_1_DIG_OUTE_N      ),
    .DIG_OUTE_P(            ADC_TOP_1_DIG_OUTE_N      ),
    .DIG_OUTF_N(            ADC_TOP_1_DIG_OUTF_N      ),
    .DIG_OUTF_P(            ADC_TOP_1_DIG_OUTF_N      ),
    .DIG_OUTG_N(            ADC_TOP_1_DIG_OUTG_N      ),
    .DIG_OUTG_P(            ADC_TOP_1_DIG_OUTG_N      ),
    .DIG_OUTH_N(            ADC_TOP_1_DIG_OUTH_N      ),
    .DIG_OUTH_P(            ADC_TOP_1_DIG_OUTH_N      ),
    .MASTER_RESET(          ADC_TOP_1_MASTER_RESET    ),
    .MOSI(                  TIELOW                    ),
    .MISO(                  UNCONNECTED_ADC_TOP_1_A   ),
    .DIGITAL_MUX_OUT_N(     UNCONNECTED_ADC_TOP_1_B   ),
    .DIGITAL_MUX_OUT_P(     UNCONNECTED_ADC_TOP_1_C   ),
    .SSO_DATA_OUT_0(        UNCONNECTED_ADC_TOP_1_D   ),
    .SSO_DATA_OUT_1(        UNCONNECTED_ADC_TOP_1_E   ),
    .SSO_FRAME_CLOCK(       UNCONNECTED_ADC_TOP_1_F   ),
    .SSO_OUT_CLOCK(         UNCONNECTED_ADC_TOP_1_G   ),
    .VREFP(                 UNCONNECTED_ADC_TOP_1_H   ),
    .VREFN(                 UNCONNECTED_ADC_TOP_1_I   ),
    .VREF_EXT(              UNCONNECTED_ADC_TOP_1_J   ),
    .VOLTAGE_MONITOR(       UNCONNECTED_ADC_TOP_1_K   ),
    .VCMO(                  UNCONNECTED_ADC_TOP_1_L   ),
    .VCMI(                  UNCONNECTED_ADC_TOP_1_M   ),
    .RBIAS_CMOS(            UNCONNECTED_ADC_TOP_1_N   ),
    .INP(                   UNCONNECTED_ADC_TOP_1_O   ),
    .INN(                   UNCONNECTED_ADC_TOP_1_P   ),
    .CURRENT_MONITOR(       UNCONNECTED_ADC_TOP_1_Q   ),
    .AUX_ISOURCE(           UNCONNECTED_ADC_TOP_1_R   ),
    .AUX_ISINK(             UNCONNECTED_ADC_TOP_1_S   ),
    .AUX_VOLTAGE(           UNCONNECTED_ADC_TOP_1_T   ),
    .ADC_TEST_INP(          UNCONNECTED_ADC_TOP_1_U   ),
    .ADC_TEST_INN(          UNCONNECTED_ADC_TOP_1_V   ),
    .VREF_DECOUPLE(         UNCONNECTED_ADC_TOP_1_W   ),
    .TAVDDA2P5(             UNCONNECTED_ADC_TOP_1_X   ),
    .TAVDDD2P5_2(           UNCONNECTED_ADC_TOP_1_Y   ),
    .VSSD2P5(               UNCONNECTED_ADC_TOP_1_Z   ),
    .TAVDDA2P5_2(           UNCONNECTED_ADC_TOP_1_AA  ),
    .TACVDDD1P2_2(          UNCONNECTED_ADC_TOP_1_BB  ),
    .VSSIO(                 UNCONNECTED_ADC_TOP_1_CC  ),
    .TAVDD_IO(              UNCONNECTED_ADC_TOP_1_DD  ),
    .VSSD1P2(               UNCONNECTED_ADC_TOP_1_EE  ),
    .TACVDDD1P2(            UNCONNECTED_ADC_TOP_1_FF  ),
    .TAVDDD2P5(             UNCONNECTED_ADC_TOP_1_GG  )
  );

    //******************************************************************************
    //******************************************************************************
    //***
    //*** Module Instantiation: Top-side ADC_1 (ADC_TOP_2)
    //***
    //******************************************************************************
    //******************************************************************************
    wire  logic   [0:15]  UNCONNECTED_ADC_TOP_2_O;      //***Dummy connection for INP
    wire  logic   [0:15]  UNCONNECTED_ADC_TOP_2_O;      //***Dummy connection for INP

COLDADCP1  ADC_TOP_2 (
    .I2C_SDA_C2W( 	        ADC_TOP_2_SDA_C2W 	      ),
    .I2C_SDA_W2C(           TOP_I2C_SDA_W2C           ),
    .I2C_SCL(               TOP_I2C_SCL               ),
    .I2C_ADD_0(             ADC_TOP_2_I2C_ADD_0       ),
    .I2C_ADD_1(             ADC_TOP_2_I2C_ADD_1       ),
    .I2C_ADD_2(             ADC_TOP_2_I2C_ADD_2       ),
    .I2C_ADD_3(             ADC_TOP_2_I2C_ADD_3       ),
    .I2C_UART_SEL(          I2C                       ),
    .CLK_2MHZ_N(            ADC_TOP_2_CLK_2MHZ_N      ),
    .CLK_2MHZ_P(            ADC_TOP_2_CLK_2MHZ_P      ),
    .CLK_64MHZ_N(           ADC_TOP_2_CLK_64MHZ_N     ),
    .CLK_64MHZ_P(           ADC_TOP_2_CLK_64MHZ_P     ),
    .DIG_FRAME_N(           ADC_TOP_2_DIG_CLKOUT_N    ),
    .DIG_FRAME_P(           ADC_TOP_2_DIG_CLKOUT_P    ),
    .DIG_CLKOUT_N(          ADC_TOP_2_DIG_CLKOUT_N    ),
    .DIG_CLKOUT_P(          ADC_TOP_2_DIG_CLKOUT_P    ),
    .DIG_OUTA_N(            ADC_TOP_2_DIG_OUTA_N      ),
    .DIG_OUTA_P(            ADC_TOP_2_DIG_OUTA_N      ),
    .DIG_OUTB_N(            ADC_TOP_2_DIG_OUTB_N      ),
    .DIG_OUTB_P(            ADC_TOP_2_DIG_OUTB_N      ),
    .DIG_OUTC_N(            ADC_TOP_2_DIG_OUTC_N      ),
    .DIG_OUTC_P(            ADC_TOP_2_DIG_OUTC_N      ),
    .DIG_OUTD_N(            ADC_TOP_2_DIG_OUTD_N      ),
    .DIG_OUTD_P(            ADC_TOP_2_DIG_OUTD_N      ),
    .DIG_OUTE_N(            ADC_TOP_2_DIG_OUTE_N      ),
    .DIG_OUTE_P(            ADC_TOP_2_DIG_OUTE_N      ),
    .DIG_OUTF_N(            ADC_TOP_2_DIG_OUTF_N      ),
    .DIG_OUTF_P(            ADC_TOP_2_DIG_OUTF_N      ),
    .DIG_OUTG_N(            ADC_TOP_2_DIG_OUTG_N      ),
    .DIG_OUTG_P(            ADC_TOP_2_DIG_OUTG_N      ),
    .DIG_OUTH_N(            ADC_TOP_2_DIG_OUTH_N      ),
    .DIG_OUTH_P(            ADC_TOP_2_DIG_OUTH_N      ),
    .MASTER_RESET(          ADC_TOP_2_MASTER_RESET    ),
    .MOSI(                  TIELOW                    ),
    .MISO(                  UNCONNECTED_ADC_TOP_2_A   ),
    .DIGITAL_MUX_OUT_N(     UNCONNECTED_ADC_TOP_2_B   ),
    .DIGITAL_MUX_OUT_P(     UNCONNECTED_ADC_TOP_2_C   ),
    .SSO_DATA_OUT_0(        UNCONNECTED_ADC_TOP_2_D   ),
    .SSO_DATA_OUT_1(        UNCONNECTED_ADC_TOP_2_E   ),
    .SSO_FRAME_CLOCK(       UNCONNECTED_ADC_TOP_2_F   ),
    .SSO_OUT_CLOCK(         UNCONNECTED_ADC_TOP_2_G   ),
    .VREFP(                 UNCONNECTED_ADC_TOP_2_H   ),
    .VREFN(                 UNCONNECTED_ADC_TOP_2_I   ),
    .VREF_EXT(              UNCONNECTED_ADC_TOP_2_J   ),
    .VOLTAGE_MONITOR(       UNCONNECTED_ADC_TOP_2_K   ),
    .VCMO(                  UNCONNECTED_ADC_TOP_2_L   ),
    .VCMI(                  UNCONNECTED_ADC_TOP_2_M   ),
    .RBIAS_CMOS(            UNCONNECTED_ADC_TOP_2_N   ),
    .INP(                   UNCONNECTED_ADC_TOP_2_O   ),
    .INN(                   UNCONNECTED_ADC_TOP_2_P   ),
    .CURRENT_MONITOR(       UNCONNECTED_ADC_TOP_2_Q   ),
    .AUX_ISOURCE(           UNCONNECTED_ADC_TOP_2_R   ),
    .AUX_ISINK(             UNCONNECTED_ADC_TOP_2_S   ),
    .AUX_VOLTAGE(           UNCONNECTED_ADC_TOP_2_T   ),
    .ADC_TEST_INP(          UNCONNECTED_ADC_TOP_2_U   ),
    .ADC_TEST_INN(          UNCONNECTED_ADC_TOP_2_V   ),
    .VREF_DECOUPLE(         UNCONNECTED_ADC_TOP_2_W   ),
    .TAVDDA2P5(             UNCONNECTED_ADC_TOP_2_X   ),
    .TAVDDD2P5_2(           UNCONNECTED_ADC_TOP_2_Y   ),
    .VSSD2P5(               UNCONNECTED_ADC_TOP_2_Z   ),
    .TAVDDA2P5_2(           UNCONNECTED_ADC_TOP_2_AA  ),
    .TACVDDD1P2_2(          UNCONNECTED_ADC_TOP_2_BB  ),
    .VSSIO(                 UNCONNECTED_ADC_TOP_2_CC  ),
    .TAVDD_IO(              UNCONNECTED_ADC_TOP_2_DD  ),
    .VSSD1P2(               UNCONNECTED_ADC_TOP_2_EE  ),
    .TACVDDD1P2(            UNCONNECTED_ADC_TOP_2_FF  ),
    .TAVDDD2P5(             UNCONNECTED_ADC_TOP_2_GG  )
  );

    //******************************************************************************
    //******************************************************************************
    //***
    //*** Module Instantiation: Top-side ADC_1 (ADC_TOP_3)
    //***
    //******************************************************************************
    //******************************************************************************
    wire  logic   [0:15]  UNCONNECTED_ADC_TOP_3_O;      //***Dummy connection for INP
    wire  logic   [0:15]  UNCONNECTED_ADC_TOP_3_O;      //***Dummy connection for INP

COLDADCP1  ADC_TOP_3 (
    .I2C_SDA_C2W( 	        ADC_TOP_3_SDA_C2W 	      ),
    .I2C_SDA_W2C(           TOP_I2C_SDA_W2C           ),
    .I2C_SCL(               TOP_I2C_SCL               ),
    .I2C_ADD_0(             ADC_TOP_3_I2C_ADD_0       ),
    .I2C_ADD_1(             ADC_TOP_3_I2C_ADD_1       ),
    .I2C_ADD_2(             ADC_TOP_3_I2C_ADD_2       ),
    .I2C_ADD_3(             ADC_TOP_3_I2C_ADD_3       ),
    .I2C_UART_SEL(          I2C                       ),
    .CLK_2MHZ_N(            ADC_TOP_3_CLK_2MHZ_N      ),
    .CLK_2MHZ_P(            ADC_TOP_3_CLK_2MHZ_P      ),
    .CLK_64MHZ_N(           ADC_TOP_3_CLK_64MHZ_N     ),
    .CLK_64MHZ_P(           ADC_TOP_3_CLK_64MHZ_P     ),
    .DIG_FRAME_N(           ADC_TOP_3_DIG_CLKOUT_N    ),
    .DIG_FRAME_P(           ADC_TOP_3_DIG_CLKOUT_P    ),
    .DIG_CLKOUT_N(          ADC_TOP_3_DIG_CLKOUT_N    ),
    .DIG_CLKOUT_P(          ADC_TOP_3_DIG_CLKOUT_P    ),
    .DIG_OUTA_N(            ADC_TOP_3_DIG_OUTA_N      ),
    .DIG_OUTA_P(            ADC_TOP_3_DIG_OUTA_N      ),
    .DIG_OUTB_N(            ADC_TOP_3_DIG_OUTB_N      ),
    .DIG_OUTB_P(            ADC_TOP_3_DIG_OUTB_N      ),
    .DIG_OUTC_N(            ADC_TOP_3_DIG_OUTC_N      ),
    .DIG_OUTC_P(            ADC_TOP_3_DIG_OUTC_N      ),
    .DIG_OUTD_N(            ADC_TOP_3_DIG_OUTD_N      ),
    .DIG_OUTD_P(            ADC_TOP_3_DIG_OUTD_N      ),
    .DIG_OUTE_N(            ADC_TOP_3_DIG_OUTE_N      ),
    .DIG_OUTE_P(            ADC_TOP_3_DIG_OUTE_N      ),
    .DIG_OUTF_N(            ADC_TOP_3_DIG_OUTF_N      ),
    .DIG_OUTF_P(            ADC_TOP_3_DIG_OUTF_N      ),
    .DIG_OUTG_N(            ADC_TOP_3_DIG_OUTG_N      ),
    .DIG_OUTG_P(            ADC_TOP_3_DIG_OUTG_N      ),
    .DIG_OUTH_N(            ADC_TOP_3_DIG_OUTH_N      ),
    .DIG_OUTH_P(            ADC_TOP_3_DIG_OUTH_N      ),
    .MASTER_RESET(          ADC_TOP_3_MASTER_RESET    ),
    .MOSI(                  TIELOW                    ),
    .MISO(                  UNCONNECTED_ADC_TOP_3_A   ),
    .DIGITAL_MUX_OUT_N(     UNCONNECTED_ADC_TOP_3_B   ),
    .DIGITAL_MUX_OUT_P(     UNCONNECTED_ADC_TOP_3_C   ),
    .SSO_DATA_OUT_0(        UNCONNECTED_ADC_TOP_3_D   ),
    .SSO_DATA_OUT_1(        UNCONNECTED_ADC_TOP_3_E   ),
    .SSO_FRAME_CLOCK(       UNCONNECTED_ADC_TOP_3_F   ),
    .SSO_OUT_CLOCK(         UNCONNECTED_ADC_TOP_3_G   ),
    .VREFP(                 UNCONNECTED_ADC_TOP_3_H   ),
    .VREFN(                 UNCONNECTED_ADC_TOP_3_I   ),
    .VREF_EXT(              UNCONNECTED_ADC_TOP_3_J   ),
    .VOLTAGE_MONITOR(       UNCONNECTED_ADC_TOP_3_K   ),
    .VCMO(                  UNCONNECTED_ADC_TOP_3_L   ),
    .VCMI(                  UNCONNECTED_ADC_TOP_3_M   ),
    .RBIAS_CMOS(            UNCONNECTED_ADC_TOP_3_N   ),
    .INP(                   UNCONNECTED_ADC_TOP_3_O   ),
    .INN(                   UNCONNECTED_ADC_TOP_3_P   ),
    .CURRENT_MONITOR(       UNCONNECTED_ADC_TOP_3_Q   ),
    .AUX_ISOURCE(           UNCONNECTED_ADC_TOP_3_R   ),
    .AUX_ISINK(             UNCONNECTED_ADC_TOP_3_S   ),
    .AUX_VOLTAGE(           UNCONNECTED_ADC_TOP_3_T   ),
    .ADC_TEST_INP(          UNCONNECTED_ADC_TOP_3_U   ),
    .ADC_TEST_INN(          UNCONNECTED_ADC_TOP_3_V   ),
    .VREF_DECOUPLE(         UNCONNECTED_ADC_TOP_3_W   ),
    .TAVDDA2P5(             UNCONNECTED_ADC_TOP_3_X   ),
    .TAVDDD2P5_2(           UNCONNECTED_ADC_TOP_3_Y   ),
    .VSSD2P5(               UNCONNECTED_ADC_TOP_3_Z   ),
    .TAVDDA2P5_2(           UNCONNECTED_ADC_TOP_3_AA  ),
    .TACVDDD1P2_2(          UNCONNECTED_ADC_TOP_3_BB  ),
    .VSSIO(                 UNCONNECTED_ADC_TOP_3_CC  ),
    .TAVDD_IO(              UNCONNECTED_ADC_TOP_3_DD  ),
    .VSSD1P2(               UNCONNECTED_ADC_TOP_3_EE  ),
    .TACVDDD1P2(            UNCONNECTED_ADC_TOP_3_FF  ),
    .TAVDDD2P5(             UNCONNECTED_ADC_TOP_3_GG  )
  );

    //******************************************************************************
    //******************************************************************************
    //***
    //*** Module Instantiation: Top-side ADC_1 (ADC_TOP_4)
    //***
    //******************************************************************************
    //******************************************************************************
    wire  logic   [0:15]  UNCONNECTED_ADC_TOP_4_O;      //***Dummy connection for INP
    wire  logic   [0:15]  UNCONNECTED_ADC_TOP_4_O;      //***Dummy connection for INP

COLDADCP1  ADC_TOP_4 (
    .I2C_SDA_C2W( 	        ADC_TOP_4_SDA_C2W 	      ),
    .I2C_SDA_W2C(           TOP_I2C_SDA_W2C           ),
    .I2C_SCL(               TOP_I2C_SCL               ),
    .I2C_ADD_0(             ADC_TOP_4_I2C_ADD_0       ),
    .I2C_ADD_1(             ADC_TOP_4_I2C_ADD_1       ),
    .I2C_ADD_2(             ADC_TOP_4_I2C_ADD_2       ),
    .I2C_ADD_3(             ADC_TOP_4_I2C_ADD_3       ),
    .I2C_UART_SEL(          I2C                       ),
    .CLK_2MHZ_N(            ADC_TOP_4_CLK_2MHZ_N      ),
    .CLK_2MHZ_P(            ADC_TOP_4_CLK_2MHZ_P      ),
    .CLK_64MHZ_N(           ADC_TOP_4_CLK_64MHZ_N     ),
    .CLK_64MHZ_P(           ADC_TOP_4_CLK_64MHZ_P     ),
    .DIG_FRAME_N(           ADC_TOP_4_DIG_CLKOUT_N    ),
    .DIG_FRAME_P(           ADC_TOP_4_DIG_CLKOUT_P    ),
    .DIG_CLKOUT_N(          ADC_TOP_4_DIG_CLKOUT_N    ),
    .DIG_CLKOUT_P(          ADC_TOP_4_DIG_CLKOUT_P    ),
    .DIG_OUTA_N(            ADC_TOP_4_DIG_OUTA_N      ),
    .DIG_OUTA_P(            ADC_TOP_4_DIG_OUTA_N      ),
    .DIG_OUTB_N(            ADC_TOP_4_DIG_OUTB_N      ),
    .DIG_OUTB_P(            ADC_TOP_4_DIG_OUTB_N      ),
    .DIG_OUTC_N(            ADC_TOP_4_DIG_OUTC_N      ),
    .DIG_OUTC_P(            ADC_TOP_4_DIG_OUTC_N      ),
    .DIG_OUTD_N(            ADC_TOP_4_DIG_OUTD_N      ),
    .DIG_OUTD_P(            ADC_TOP_4_DIG_OUTD_N      ),
    .DIG_OUTE_N(            ADC_TOP_4_DIG_OUTE_N      ),
    .DIG_OUTE_P(            ADC_TOP_4_DIG_OUTE_N      ),
    .DIG_OUTF_N(            ADC_TOP_4_DIG_OUTF_N      ),
    .DIG_OUTF_P(            ADC_TOP_4_DIG_OUTF_N      ),
    .DIG_OUTG_N(            ADC_TOP_4_DIG_OUTG_N      ),
    .DIG_OUTG_P(            ADC_TOP_4_DIG_OUTG_N      ),
    .DIG_OUTH_N(            ADC_TOP_4_DIG_OUTH_N      ),
    .DIG_OUTH_P(            ADC_TOP_4_DIG_OUTH_N      ),
    .MASTER_RESET(          ADC_TOP_4_MASTER_RESET    ),
    .MOSI(                  TIELOW                    ),
    .MISO(                  UNCONNECTED_ADC_TOP_4_A   ),
    .DIGITAL_MUX_OUT_N(     UNCONNECTED_ADC_TOP_4_B   ),
    .DIGITAL_MUX_OUT_P(     UNCONNECTED_ADC_TOP_4_C   ),
    .SSO_DATA_OUT_0(        UNCONNECTED_ADC_TOP_4_D   ),
    .SSO_DATA_OUT_1(        UNCONNECTED_ADC_TOP_4_E   ),
    .SSO_FRAME_CLOCK(       UNCONNECTED_ADC_TOP_4_F   ),
    .SSO_OUT_CLOCK(         UNCONNECTED_ADC_TOP_4_G   ),
    .VREFP(                 UNCONNECTED_ADC_TOP_4_H   ),
    .VREFN(                 UNCONNECTED_ADC_TOP_4_I   ),
    .VREF_EXT(              UNCONNECTED_ADC_TOP_4_J   ),
    .VOLTAGE_MONITOR(       UNCONNECTED_ADC_TOP_4_K   ),
    .VCMO(                  UNCONNECTED_ADC_TOP_4_L   ),
    .VCMI(                  UNCONNECTED_ADC_TOP_4_M   ),
    .RBIAS_CMOS(            UNCONNECTED_ADC_TOP_4_N   ),
    .INP(                   UNCONNECTED_ADC_TOP_4_O   ),
    .INN(                   UNCONNECTED_ADC_TOP_4_P   ),
    .CURRENT_MONITOR(       UNCONNECTED_ADC_TOP_4_Q   ),
    .AUX_ISOURCE(           UNCONNECTED_ADC_TOP_4_R   ),
    .AUX_ISINK(             UNCONNECTED_ADC_TOP_4_S   ),
    .AUX_VOLTAGE(           UNCONNECTED_ADC_TOP_4_T   ),
    .ADC_TEST_INP(          UNCONNECTED_ADC_TOP_4_U   ),
    .ADC_TEST_INN(          UNCONNECTED_ADC_TOP_4_V   ),
    .VREF_DECOUPLE(         UNCONNECTED_ADC_TOP_4_W   ),
    .TAVDDA2P5(             UNCONNECTED_ADC_TOP_4_X   ),
    .TAVDDD2P5_2(           UNCONNECTED_ADC_TOP_4_Y   ),
    .VSSD2P5(               UNCONNECTED_ADC_TOP_4_Z   ),
    .TAVDDA2P5_2(           UNCONNECTED_ADC_TOP_4_AA  ),
    .TACVDDD1P2_2(          UNCONNECTED_ADC_TOP_4_BB  ),
    .VSSIO(                 UNCONNECTED_ADC_TOP_4_CC  ),
    .TAVDD_IO(              UNCONNECTED_ADC_TOP_4_DD  ),
    .VSSD1P2(               UNCONNECTED_ADC_TOP_4_EE  ),
    .TACVDDD1P2(            UNCONNECTED_ADC_TOP_4_FF  ),
    .TAVDDD2P5(             UNCONNECTED_ADC_TOP_4_GG  )
  );

//******************************************************************************
//******************************************************************************
//***
//*** BOT BOT BOT BOT BOT BOT BOT BOT BOT BOT BOT BOT BOT BOT BOT BOT BOT BOT
//***
//******************************************************************************
//******************************************************************************

  //******************************************************************************
  //******************************************************************************
  //***
  //*** Module Instantiation: Bottom-side COLDATA chip
  //***
  //******************************************************************************
  //******************************************************************************

  coldData  coldData_Bot (
    .I2C_LVDS_SCL_P( 	      TIELOW                    ),    //*** Not connected on colData Bot
    .I2C_LVDS_SCL_N( 	      TIEHIGH                   ),    //*** Not connected on colData Bot
    .I2C_LVDS_SDA_W2C_P(    TIELOW                    ),    //*** Not connected on colData Bot
    .I2C_LVDS_SDA_W2C_N(    TIEHIGH                   ),    //*** Not connected on colData Bot
    .I2C_LVDS_SDA_C2W_P( 	  UNCONNECTED_COLDATA_BOT_1 ),    //*** Not connected on colData Bot
    .I2C_LVDS_SDA_C2W_N( 	  UNCONNECTED_COLDATA_BOT_2 ),    //*** Not connected on colData Bot
    .I2C_CMOS_SCL( 	        TOP_I2C_SCL 	            ),    //*** Relayed from Top
    .I2C_CMOS_SDA_W2C( 	    TOP_I2C_SDA_W2C 	        ),    //*** Relayed from Top
    .I2C_CMOS_SDA_C2W( 	    BOT2TOP_I2C_SDA_C2W       ),    //*** Relayed to Top
    .I2C_LVDS1_CMOS0_MODE(  TIELOW               	    ),    //Fixed to CMOS
    .I2C_COLDATA_SCL(       BOT_I2C_SCL               ),    //Bottom-side I2C Relay
    .I2C_COLDATA_SDA_W2C(   BOT_I2C_SDA_W2C           ),    //Bottom-side I2C Relay
    .I2C_OTHER_SDA_C2W(     TIEHIGH                   ),    //Fixed
    .I2C_ADC_1_SDA_C2W(     ADC_BOT_1_SDA_C2W         ),    //Bottom-side I2C Relay
    .I2C_ADC_2_SDA_C2W(     ADC_BOT_2_SDA_C2W         ),    //Bottom-side I2C Relay
    .I2C_ADC_3_SDA_C2W(     ADC_BOT_3_SDA_C2W         ),    //Bottom-side I2C Relay
    .I2C_ADC_4_SDA_C2W(     ADC_BOT_4_SDA_C2W         ),    //Bottom-side I2C Relay
    .CHIP_ID_0(             COLDATA_BOT_CHIP_ID_0     ),    //I2C Interface
    .CHIP_ID_1(             COLDATA_BOT_CHIP_ID_1     ),    //I2C Interface
    .CHIP_ID_2(             COLDATA_BOT_CHIP_ID_2     ),    //I2C Interface
    .CHIP_ID_3(             COLDATA_BOT_CHIP_ID_3     ),    //I2C Interface
    .CLK_64MHZ_SYS_P(       CLK_64MHZ_SYS_P           ),    //System Interface
    .CLK_64MHZ_SYS_N(       CLK_64MHZ_SYS_N           ),    //System Interface
    .FASTCOMMAND_IN_P(      FASTCOMMAND_IN_P          ),    //System Interface
    .FASTCOMMAND_IN_N(      FASTCOMMAND_IN_N          ),    //System Interface
    .LARASIC1_SCK(          BOT_LARASIC1_SCK          ),    //LARASIC Whitebox Interface
    .LARASIC1_SDO(          BOT_LARASIC1_SDO          ),    //LARASIC Whitebox Interface
    .LARASIC1_CD(           BOT_LARASIC1_CD           ),    //LARASIC Whitebox Interface
    .LARASIC1_SDI(          BOT_LARASIC1_SDI          ),    //LARASIC Whitebox Interface
    .LARASIC2_SCK(          BOT_LARASIC2_SCK          ),    //LARASIC Whitebox Interface
    .LARASIC2_SDO(          BOT_LARASIC2_SDO          ),    //LARASIC Whitebox Interface
    .LARASIC2_CD(           BOT_LARASIC2_CD           ),    //LARASIC Whitebox Interface
    .LARASIC2_SDI(          BOT_LARASIC2_SDI          ),    //LARASIC Whitebox Interface
    .LARASIC3_SCK(          BOT_LARASIC3_SCK          ),    //LARASIC Whitebox Interface
    .LARASIC3_SDO(          BOT_LARASIC3_SDO          ),    //LARASIC Whitebox Interface
    .LARASIC3_CD(           BOT_LARASIC3_CD           ),    //LARASIC Whitebox Interface
    .LARASIC3_SDI(          BOT_LARASIC3_SDI          ),    //LARASIC Whitebox Interface
    .LARASIC4_SCK(          BOT_LARASIC4_SCK          ),    //LARASIC Whitebox Interface
    .LARASIC4_SDO(          BOT_LARASIC4_SDO          ),    //LARASIC Whitebox Interface
    .LARASIC4_CD(           BOT_LARASIC4_CD           ),    //LARASIC Whitebox Interface
    .LARASIC4_SDI(          BOT_LARASIC4_SDI          ),    //LARASIC Whitebox Interface
    .LARASIC1_CALIB_STROBE( BOT_LARASIC1_CALIB_STROBE ),    //LARASIC Whitebox Interface
    .LARASIC2_CALIB_STROBE( BOT_LARASIC2_CALIB_STROBE ),    //LARASIC Whitebox Interface
    .LARASIC3_CALIB_STROBE( BOT_LARASIC3_CALIB_STROBE ),    //LARASIC Whitebox Interface
    .LARASIC4_CALIB_STROBE( BOT_LARASIC4_CALIB_STROBE ),    //LARASIC Whitebox Interface
    .ADC1_DIG_OUTA_P(       ADC_BOT_1_DIG_OUTA_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTA_N(       ADC_BOT_1_DIG_OUTA_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTB_P(       ADC_BOT_1_DIG_OUTB_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTB_N(       ADC_BOT_1_DIG_OUTB_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTC_P(       ADC_BOT_1_DIG_OUTC_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTC_N(       ADC_BOT_1_DIG_OUTC_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTD_P(       ADC_BOT_1_DIG_OUTD_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTD_N(       ADC_BOT_1_DIG_OUTD_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTE_P(       ADC_BOT_1_DIG_OUTE_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTE_N(       ADC_BOT_1_DIG_OUTE_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTF_P(       ADC_BOT_1_DIG_OUTF_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTF_N(       ADC_BOT_1_DIG_OUTF_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTG_P(       ADC_BOT_1_DIG_OUTG_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTG_N(       ADC_BOT_1_DIG_OUTG_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTH_P(       ADC_BOT_1_DIG_OUTH_P      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_OUTH_N(       ADC_BOT_1_DIG_OUTH_N      ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_FRAME_P(      ADC_BOT_1_DIG_FRAME_P     ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_FRAME_N(      ADC_BOT_1_DIG_FRAME_N     ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_CLKOUT_P(     ADC_BOT_1_DIG_CLKOUT_P    ),    //ADC Readout Whitebox Interface
    .ADC1_DIG_CLKOUT_N(     ADC_BOT_1_DIG_CLKOUT_N    ),    //ADC Readout Whitebox Interface
    .ADC1_CLK_2MHZ_P(       ADC_BOT_1_CLK_2MHZ_P      ),    //ADC System Whitebox Interface
    .ADC1_CLK_2MHZ_N(       ADC_BOT_1_CLK_2MHZ_N      ),    //ADC System Whitebox Interface
    .ADC1_CLK_64MHZ_P(      ADC_BOT_1_CLK_64MHZ_P     ),    //ADC System Whitebox Interface
    .ADC1_CLK_64MHZ_N(      ADC_BOT_1_CLK_64MHZ_N     ),    //ADC System Whitebox Interface
    .ADC1_MASTER_RESET(     ADC_BOT_1_MASTER_RESET    ),    //ADC System Whitebox Interface
    .ADC2_DIG_OUTA_P(       ADC_BOT_2_DIG_OUTA_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTA_N(       ADC_BOT_2_DIG_OUTA_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTB_P(       ADC_BOT_2_DIG_OUTB_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTB_N(       ADC_BOT_2_DIG_OUTB_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTC_P(       ADC_BOT_2_DIG_OUTC_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTC_N(       ADC_BOT_2_DIG_OUTC_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTD_P(       ADC_BOT_2_DIG_OUTD_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTD_N(       ADC_BOT_2_DIG_OUTD_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTE_P(       ADC_BOT_2_DIG_OUTE_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTE_N(       ADC_BOT_2_DIG_OUTE_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTF_P(       ADC_BOT_2_DIG_OUTF_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTF_N(       ADC_BOT_2_DIG_OUTF_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTG_P(       ADC_BOT_2_DIG_OUTG_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTG_N(       ADC_BOT_2_DIG_OUTG_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTH_P(       ADC_BOT_2_DIG_OUTH_P      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_OUTH_N(       ADC_BOT_2_DIG_OUTH_N      ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_FRAME_P(      ADC_BOT_2_DIG_FRAME_P     ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_FRAME_N(      ADC_BOT_2_DIG_FRAME_N     ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_CLKOUT_P(     ADC_BOT_2_DIG_CLKOUT_P    ),    //ADC Readout Whitebox Interface
    .ADC2_DIG_CLKOUT_N(     ADC_BOT_2_DIG_CLKOUT_N    ),    //ADC Readout Whitebox Interface
    .ADC2_CLK_2MHZ_P(       ADC_BOT_2_CLK_2MHZ_P      ),    //ADC System Whitebox Interface
    .ADC2_CLK_2MHZ_N(       ADC_BOT_2_CLK_2MHZ_N      ),    //ADC System Whitebox Interface
    .ADC2_CLK_64MHZ_P(      ADC_BOT_2_CLK_64MHZ_P     ),    //ADC System Whitebox Interface
    .ADC2_CLK_64MHZ_N(      ADC_BOT_2_CLK_64MHZ_N     ),    //ADC System Whitebox Interface
    .ADC2_MASTER_RESET(     ADC_BOT_2_MASTER_RESET    ),    //ADC System Whitebox Interface
    .ADC3_DIG_OUTA_P(       ADC_BOT_3_DIG_OUTA_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTA_N(       ADC_BOT_3_DIG_OUTA_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTB_P(       ADC_BOT_3_DIG_OUTB_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTB_N(       ADC_BOT_3_DIG_OUTB_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTC_P(       ADC_BOT_3_DIG_OUTC_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTC_N(       ADC_BOT_3_DIG_OUTC_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTD_P(       ADC_BOT_3_DIG_OUTD_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTD_N(       ADC_BOT_3_DIG_OUTD_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTE_P(       ADC_BOT_3_DIG_OUTE_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTE_N(       ADC_BOT_3_DIG_OUTE_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTF_P(       ADC_BOT_3_DIG_OUTF_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTF_N(       ADC_BOT_3_DIG_OUTF_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTG_P(       ADC_BOT_3_DIG_OUTG_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTG_N(       ADC_BOT_3_DIG_OUTG_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTH_P(       ADC_BOT_3_DIG_OUTH_P      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_OUTH_N(       ADC_BOT_3_DIG_OUTH_N      ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_FRAME_P(      ADC_BOT_3_DIG_FRAME_P     ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_FRAME_N(      ADC_BOT_3_DIG_FRAME_N     ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_CLKOUT_P(     ADC_BOT_3_DIG_CLKOUT_P    ),    //ADC Readout Whitebox Interface
    .ADC3_DIG_CLKOUT_N(     ADC_BOT_3_DIG_CLKOUT_N    ),    //ADC Readout Whitebox Interface
    .ADC3_CLK_2MHZ_P(       ADC_BOT_3_CLK_2MHZ_P      ),    //ADC System Whitebox Interface
    .ADC3_CLK_2MHZ_N(       ADC_BOT_3_CLK_2MHZ_N      ),    //ADC System Whitebox Interface
    .ADC3_CLK_64MHZ_P(      ADC_BOT_3_CLK_64MHZ_P     ),    //ADC System Whitebox Interface
    .ADC3_CLK_64MHZ_N(      ADC_BOT_3_CLK_64MHZ_N     ),    //ADC System Whitebox Interface
    .ADC3_MASTER_RESET(     ADC_BOT_3_MASTER_RESET    ),    //ADC System Whitebox Interface
    .ADC4_DIG_OUTA_P(       ADC_BOT_4_DIG_OUTA_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTA_N(       ADC_BOT_4_DIG_OUTA_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTB_P(       ADC_BOT_4_DIG_OUTB_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTB_N(       ADC_BOT_4_DIG_OUTB_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTC_P(       ADC_BOT_4_DIG_OUTC_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTC_N(       ADC_BOT_4_DIG_OUTC_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTD_P(       ADC_BOT_4_DIG_OUTD_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTD_N(       ADC_BOT_4_DIG_OUTD_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTE_P(       ADC_BOT_4_DIG_OUTE_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTE_N(       ADC_BOT_4_DIG_OUTE_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTF_P(       ADC_BOT_4_DIG_OUTF_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTF_N(       ADC_BOT_4_DIG_OUTF_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTG_P(       ADC_BOT_4_DIG_OUTG_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTG_N(       ADC_BOT_4_DIG_OUTG_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTH_P(       ADC_BOT_4_DIG_OUTH_P      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_OUTH_N(       ADC_BOT_4_DIG_OUTH_N      ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_FRAME_P(      ADC_BOT_4_DIG_FRAME_P     ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_FRAME_N(      ADC_BOT_4_DIG_FRAME_N     ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_CLKOUT_P(     ADC_BOT_4_DIG_CLKOUT_P    ),    //ADC Readout Whitebox Interface
    .ADC4_DIG_CLKOUT_N(     ADC_BOT_4_DIG_CLKOUT_N    ),    //ADC Readout Whitebox Interface
    .ADC4_CLK_2MHZ_P(       ADC_BOT_4_CLK_2MHZ_P      ),    //ADC System Whitebox Interface
    .ADC4_CLK_2MHZ_N(       ADC_BOT_4_CLK_2MHZ_N      ),    //ADC System Whitebox Interface
    .ADC4_CLK_64MHZ_P(      ADC_BOT_4_CLK_64MHZ_P     ),    //ADC System Whitebox Interface
    .ADC4_CLK_64MHZ_N(      ADC_BOT_4_CLK_64MHZ_N     ),    //ADC System Whitebox Interface
    .ADC4_MASTER_RESET(     ADC_BOT_4_MASTER_RESET    ),    //ADC System Whitebox Interface
    .CKIN(                  UNCONNECTED_COLDATA_BOT_2 ),
    .CKOUTN(                BOT_ClkOutput_N           ),
    .CKOUTP(                BOT_ClkOutput_P           ),
    .VCEXT(                 UNCONNECTED_COLDATA_BOT_3 ),
    .LOCK( 	                UNCONNECTED_COLDATA_BOT_4 ),
    .SMU_PLL_RESET(         TIEHIGH                   ),
    .IBIAS_CML(             UNCONNECTED_COLDATA_BOT_5 ),
    .IBIAS_CS(              UNCONNECTED_COLDATA_BOT_6 ),
    .SEROUTN1(              BOT_SerialOutput1_N       ),
    .SEROUTP1(              BOT_SerialOutput1_P       ),
    .SEROUTN2(              BOT_SerialOutput2_N       ),
    .SEROUTP2(              BOT_SerialOutput2_P       ),
    .Rst_PowerOn(           MISC_RST_POWERON          ),    //Misc Whitebox Interface
    .PAD_RESET(             TIEHIGH                   )
    );
//***

    //******************************************************************************
    //******************************************************************************
    //***
    //*** Module Instantiation: Bottom-side ADC_1 (ADC_BOT_1)
    //***
    //******************************************************************************
    //******************************************************************************
    wire  logic   [0:15]  UNCONNECTED_ADC_BOT_1_O;      //***Dummy connection for INP
    wire  logic   [0:15]  UNCONNECTED_ADC_BOT_1_O;      //***Dummy connection for INP

COLDADCP1  ADC_BOT_1 (
    .I2C_SDA_C2W( 	        ADC_BOT_1_SDA_C2W 	      ),
    .I2C_SDA_W2C(           TOP_I2C_SDA_W2C           ),
    .I2C_SCL(               TOP_I2C_SCL               ),
    .I2C_ADD_0(             ADC_BOT_1_I2C_ADD_0       ),
    .I2C_ADD_1(             ADC_BOT_1_I2C_ADD_1       ),
    .I2C_ADD_2(             ADC_BOT_1_I2C_ADD_2       ),
    .I2C_ADD_3(             ADC_BOT_1_I2C_ADD_3       ),
    .I2C_UART_SEL(          I2C                       ),
    .CLK_2MHZ_N(            ADC_BOT_1_CLK_2MHZ_N      ),
    .CLK_2MHZ_P(            ADC_BOT_1_CLK_2MHZ_P      ),
    .CLK_64MHZ_N(           ADC_BOT_1_CLK_64MHZ_N     ),
    .CLK_64MHZ_P(           ADC_BOT_1_CLK_64MHZ_P     ),
    .DIG_FRAME_N(           ADC_BOT_1_DIG_CLKOUT_N    ),
    .DIG_FRAME_P(           ADC_BOT_1_DIG_CLKOUT_P    ),
    .DIG_CLKOUT_N(          ADC_BOT_1_DIG_CLKOUT_N    ),
    .DIG_CLKOUT_P(          ADC_BOT_1_DIG_CLKOUT_P    ),
    .DIG_OUTA_N(            ADC_BOT_1_DIG_OUTA_N      ),
    .DIG_OUTA_P(            ADC_BOT_1_DIG_OUTA_N      ),
    .DIG_OUTB_N(            ADC_BOT_1_DIG_OUTB_N      ),
    .DIG_OUTB_P(            ADC_BOT_1_DIG_OUTB_N      ),
    .DIG_OUTC_N(            ADC_BOT_1_DIG_OUTC_N      ),
    .DIG_OUTC_P(            ADC_BOT_1_DIG_OUTC_N      ),
    .DIG_OUTD_N(            ADC_BOT_1_DIG_OUTD_N      ),
    .DIG_OUTD_P(            ADC_BOT_1_DIG_OUTD_N      ),
    .DIG_OUTE_N(            ADC_BOT_1_DIG_OUTE_N      ),
    .DIG_OUTE_P(            ADC_BOT_1_DIG_OUTE_N      ),
    .DIG_OUTF_N(            ADC_BOT_1_DIG_OUTF_N      ),
    .DIG_OUTF_P(            ADC_BOT_1_DIG_OUTF_N      ),
    .DIG_OUTG_N(            ADC_BOT_1_DIG_OUTG_N      ),
    .DIG_OUTG_P(            ADC_BOT_1_DIG_OUTG_N      ),
    .DIG_OUTH_N(            ADC_BOT_1_DIG_OUTH_N      ),
    .DIG_OUTH_P(            ADC_BOT_1_DIG_OUTH_N      ),
    .MASTER_RESET(          ADC_BOT_1_MASTER_RESET    ),
    .MOSI(                  TIELOW                    ),
    .MISO(                  UNCONNECTED_ADC_BOT_1_A   ),
    .DIGITAL_MUX_OUT_N(     UNCONNECTED_ADC_BOT_1_B   ),
    .DIGITAL_MUX_OUT_P(     UNCONNECTED_ADC_BOT_1_C   ),
    .SSO_DATA_OUT_0(        UNCONNECTED_ADC_BOT_1_D   ),
    .SSO_DATA_OUT_1(        UNCONNECTED_ADC_BOT_1_E   ),
    .SSO_FRAME_CLOCK(       UNCONNECTED_ADC_BOT_1_F   ),
    .SSO_OUT_CLOCK(         UNCONNECTED_ADC_BOT_1_G   ),
    .VREFP(                 UNCONNECTED_ADC_BOT_1_H   ),
    .VREFN(                 UNCONNECTED_ADC_BOT_1_I   ),
    .VREF_EXT(              UNCONNECTED_ADC_BOT_1_J   ),
    .VOLTAGE_MONITOR(       UNCONNECTED_ADC_BOT_1_K   ),
    .VCMO(                  UNCONNECTED_ADC_BOT_1_L   ),
    .VCMI(                  UNCONNECTED_ADC_BOT_1_M   ),
    .RBIAS_CMOS(            UNCONNECTED_ADC_BOT_1_N   ),
    .INP(                   UNCONNECTED_ADC_BOT_1_O   ),
    .INN(                   UNCONNECTED_ADC_BOT_1_P   ),
    .CURRENT_MONITOR(       UNCONNECTED_ADC_BOT_1_Q   ),
    .AUX_ISOURCE(           UNCONNECTED_ADC_BOT_1_R   ),
    .AUX_ISINK(             UNCONNECTED_ADC_BOT_1_S   ),
    .AUX_VOLTAGE(           UNCONNECTED_ADC_BOT_1_T   ),
    .ADC_TEST_INP(          UNCONNECTED_ADC_BOT_1_U   ),
    .ADC_TEST_INN(          UNCONNECTED_ADC_BOT_1_V   ),
    .VREF_DECOUPLE(         UNCONNECTED_ADC_BOT_1_W   ),
    .TAVDDA2P5(             UNCONNECTED_ADC_BOT_1_X   ),
    .TAVDDD2P5_2(           UNCONNECTED_ADC_BOT_1_Y   ),
    .VSSD2P5(               UNCONNECTED_ADC_BOT_1_Z   ),
    .TAVDDA2P5_2(           UNCONNECTED_ADC_BOT_1_AA  ),
    .TACVDDD1P2_2(          UNCONNECTED_ADC_BOT_1_BB  ),
    .VSSIO(                 UNCONNECTED_ADC_BOT_1_CC  ),
    .TAVDD_IO(              UNCONNECTED_ADC_BOT_1_DD  ),
    .VSSD1P2(               UNCONNECTED_ADC_BOT_1_EE  ),
    .TACVDDD1P2(            UNCONNECTED_ADC_BOT_1_FF  ),
    .TAVDDD2P5(             UNCONNECTED_ADC_BOT_1_GG  )
  );

    //******************************************************************************
    //******************************************************************************
    //***
    //*** Module Instantiation: Bottom-side ADC_1 (ADC_BOT_2)
    //***
    //******************************************************************************
    //******************************************************************************
    wire  logic   [0:15]  UNCONNECTED_ADC_BOT_2_O;      //***Dummy connection for INP
    wire  logic   [0:15]  UNCONNECTED_ADC_BOT_2_O;      //***Dummy connection for INP

COLDADCP1  ADC_BOT_2 (
    .I2C_SDA_C2W( 	        ADC_BOT_2_SDA_C2W 	      ),
    .I2C_SDA_W2C(           TOP_I2C_SDA_W2C           ),
    .I2C_SCL(               TOP_I2C_SCL               ),
    .I2C_ADD_0(             ADC_BOT_2_I2C_ADD_0       ),
    .I2C_ADD_1(             ADC_BOT_2_I2C_ADD_1       ),
    .I2C_ADD_2(             ADC_BOT_2_I2C_ADD_2       ),
    .I2C_ADD_3(             ADC_BOT_2_I2C_ADD_3       ),
    .I2C_UART_SEL(          I2C                       ),
    .CLK_2MHZ_N(            ADC_BOT_2_CLK_2MHZ_N      ),
    .CLK_2MHZ_P(            ADC_BOT_2_CLK_2MHZ_P      ),
    .CLK_64MHZ_N(           ADC_BOT_2_CLK_64MHZ_N     ),
    .CLK_64MHZ_P(           ADC_BOT_2_CLK_64MHZ_P     ),
    .DIG_FRAME_N(           ADC_BOT_2_DIG_CLKOUT_N    ),
    .DIG_FRAME_P(           ADC_BOT_2_DIG_CLKOUT_P    ),
    .DIG_CLKOUT_N(          ADC_BOT_2_DIG_CLKOUT_N    ),
    .DIG_CLKOUT_P(          ADC_BOT_2_DIG_CLKOUT_P    ),
    .DIG_OUTA_N(            ADC_BOT_2_DIG_OUTA_N      ),
    .DIG_OUTA_P(            ADC_BOT_2_DIG_OUTA_N      ),
    .DIG_OUTB_N(            ADC_BOT_2_DIG_OUTB_N      ),
    .DIG_OUTB_P(            ADC_BOT_2_DIG_OUTB_N      ),
    .DIG_OUTC_N(            ADC_BOT_2_DIG_OUTC_N      ),
    .DIG_OUTC_P(            ADC_BOT_2_DIG_OUTC_N      ),
    .DIG_OUTD_N(            ADC_BOT_2_DIG_OUTD_N      ),
    .DIG_OUTD_P(            ADC_BOT_2_DIG_OUTD_N      ),
    .DIG_OUTE_N(            ADC_BOT_2_DIG_OUTE_N      ),
    .DIG_OUTE_P(            ADC_BOT_2_DIG_OUTE_N      ),
    .DIG_OUTF_N(            ADC_BOT_2_DIG_OUTF_N      ),
    .DIG_OUTF_P(            ADC_BOT_2_DIG_OUTF_N      ),
    .DIG_OUTG_N(            ADC_BOT_2_DIG_OUTG_N      ),
    .DIG_OUTG_P(            ADC_BOT_2_DIG_OUTG_N      ),
    .DIG_OUTH_N(            ADC_BOT_2_DIG_OUTH_N      ),
    .DIG_OUTH_P(            ADC_BOT_2_DIG_OUTH_N      ),
    .MASTER_RESET(          ADC_BOT_2_MASTER_RESET    ),
    .MOSI(                  TIELOW                    ),
    .MISO(                  UNCONNECTED_ADC_BOT_2_A   ),
    .DIGITAL_MUX_OUT_N(     UNCONNECTED_ADC_BOT_2_B   ),
    .DIGITAL_MUX_OUT_P(     UNCONNECTED_ADC_BOT_2_C   ),
    .SSO_DATA_OUT_0(        UNCONNECTED_ADC_BOT_2_D   ),
    .SSO_DATA_OUT_1(        UNCONNECTED_ADC_BOT_2_E   ),
    .SSO_FRAME_CLOCK(       UNCONNECTED_ADC_BOT_2_F   ),
    .SSO_OUT_CLOCK(         UNCONNECTED_ADC_BOT_2_G   ),
    .VREFP(                 UNCONNECTED_ADC_BOT_2_H   ),
    .VREFN(                 UNCONNECTED_ADC_BOT_2_I   ),
    .VREF_EXT(              UNCONNECTED_ADC_BOT_2_J   ),
    .VOLTAGE_MONITOR(       UNCONNECTED_ADC_BOT_2_K   ),
    .VCMO(                  UNCONNECTED_ADC_BOT_2_L   ),
    .VCMI(                  UNCONNECTED_ADC_BOT_2_M   ),
    .RBIAS_CMOS(            UNCONNECTED_ADC_BOT_2_N   ),
    .INP(                   UNCONNECTED_ADC_BOT_2_O   ),
    .INN(                   UNCONNECTED_ADC_BOT_2_P   ),
    .CURRENT_MONITOR(       UNCONNECTED_ADC_BOT_2_Q   ),
    .AUX_ISOURCE(           UNCONNECTED_ADC_BOT_2_R   ),
    .AUX_ISINK(             UNCONNECTED_ADC_BOT_2_S   ),
    .AUX_VOLTAGE(           UNCONNECTED_ADC_BOT_2_T   ),
    .ADC_TEST_INP(          UNCONNECTED_ADC_BOT_2_U   ),
    .ADC_TEST_INN(          UNCONNECTED_ADC_BOT_2_V   ),
    .VREF_DECOUPLE(         UNCONNECTED_ADC_BOT_2_W   ),
    .TAVDDA2P5(             UNCONNECTED_ADC_BOT_2_X   ),
    .TAVDDD2P5_2(           UNCONNECTED_ADC_BOT_2_Y   ),
    .VSSD2P5(               UNCONNECTED_ADC_BOT_2_Z   ),
    .TAVDDA2P5_2(           UNCONNECTED_ADC_BOT_2_AA  ),
    .TACVDDD1P2_2(          UNCONNECTED_ADC_BOT_2_BB  ),
    .VSSIO(                 UNCONNECTED_ADC_BOT_2_CC  ),
    .TAVDD_IO(              UNCONNECTED_ADC_BOT_2_DD  ),
    .VSSD1P2(               UNCONNECTED_ADC_BOT_2_EE  ),
    .TACVDDD1P2(            UNCONNECTED_ADC_BOT_2_FF  ),
    .TAVDDD2P5(             UNCONNECTED_ADC_BOT_2_GG  )
  );

    //******************************************************************************
    //******************************************************************************
    //***
    //*** Module Instantiation: Bottom-side ADC_1 (ADC_BOT_3)
    //***
    //******************************************************************************
    //******************************************************************************
    wire  logic   [0:15]  UNCONNECTED_ADC_BOT_3_O;      //***Dummy connection for INP
    wire  logic   [0:15]  UNCONNECTED_ADC_BOT_3_O;      //***Dummy connection for INP

COLDADCP1  ADC_BOT_3 (
    .I2C_SDA_C2W( 	        ADC_BOT_3_SDA_C2W 	      ),
    .I2C_SDA_W2C(           TOP_I2C_SDA_W2C           ),
    .I2C_SCL(               TOP_I2C_SCL               ),
    .I2C_ADD_0(             ADC_BOT_3_I2C_ADD_0       ),
    .I2C_ADD_1(             ADC_BOT_3_I2C_ADD_1       ),
    .I2C_ADD_2(             ADC_BOT_3_I2C_ADD_2       ),
    .I2C_ADD_3(             ADC_BOT_3_I2C_ADD_3       ),
    .I2C_UART_SEL(          I2C                       ),
    .CLK_2MHZ_N(            ADC_BOT_3_CLK_2MHZ_N      ),
    .CLK_2MHZ_P(            ADC_BOT_3_CLK_2MHZ_P      ),
    .CLK_64MHZ_N(           ADC_BOT_3_CLK_64MHZ_N     ),
    .CLK_64MHZ_P(           ADC_BOT_3_CLK_64MHZ_P     ),
    .DIG_FRAME_N(           ADC_BOT_3_DIG_CLKOUT_N    ),
    .DIG_FRAME_P(           ADC_BOT_3_DIG_CLKOUT_P    ),
    .DIG_CLKOUT_N(          ADC_BOT_3_DIG_CLKOUT_N    ),
    .DIG_CLKOUT_P(          ADC_BOT_3_DIG_CLKOUT_P    ),
    .DIG_OUTA_N(            ADC_BOT_3_DIG_OUTA_N      ),
    .DIG_OUTA_P(            ADC_BOT_3_DIG_OUTA_N      ),
    .DIG_OUTB_N(            ADC_BOT_3_DIG_OUTB_N      ),
    .DIG_OUTB_P(            ADC_BOT_3_DIG_OUTB_N      ),
    .DIG_OUTC_N(            ADC_BOT_3_DIG_OUTC_N      ),
    .DIG_OUTC_P(            ADC_BOT_3_DIG_OUTC_N      ),
    .DIG_OUTD_N(            ADC_BOT_3_DIG_OUTD_N      ),
    .DIG_OUTD_P(            ADC_BOT_3_DIG_OUTD_N      ),
    .DIG_OUTE_N(            ADC_BOT_3_DIG_OUTE_N      ),
    .DIG_OUTE_P(            ADC_BOT_3_DIG_OUTE_N      ),
    .DIG_OUTF_N(            ADC_BOT_3_DIG_OUTF_N      ),
    .DIG_OUTF_P(            ADC_BOT_3_DIG_OUTF_N      ),
    .DIG_OUTG_N(            ADC_BOT_3_DIG_OUTG_N      ),
    .DIG_OUTG_P(            ADC_BOT_3_DIG_OUTG_N      ),
    .DIG_OUTH_N(            ADC_BOT_3_DIG_OUTH_N      ),
    .DIG_OUTH_P(            ADC_BOT_3_DIG_OUTH_N      ),
    .MASTER_RESET(          ADC_BOT_3_MASTER_RESET    ),
    .MOSI(                  TIELOW                    ),
    .MISO(                  UNCONNECTED_ADC_BOT_3_A   ),
    .DIGITAL_MUX_OUT_N(     UNCONNECTED_ADC_BOT_3_B   ),
    .DIGITAL_MUX_OUT_P(     UNCONNECTED_ADC_BOT_3_C   ),
    .SSO_DATA_OUT_0(        UNCONNECTED_ADC_BOT_3_D   ),
    .SSO_DATA_OUT_1(        UNCONNECTED_ADC_BOT_3_E   ),
    .SSO_FRAME_CLOCK(       UNCONNECTED_ADC_BOT_3_F   ),
    .SSO_OUT_CLOCK(         UNCONNECTED_ADC_BOT_3_G   ),
    .VREFP(                 UNCONNECTED_ADC_BOT_3_H   ),
    .VREFN(                 UNCONNECTED_ADC_BOT_3_I   ),
    .VREF_EXT(              UNCONNECTED_ADC_BOT_3_J   ),
    .VOLTAGE_MONITOR(       UNCONNECTED_ADC_BOT_3_K   ),
    .VCMO(                  UNCONNECTED_ADC_BOT_3_L   ),
    .VCMI(                  UNCONNECTED_ADC_BOT_3_M   ),
    .RBIAS_CMOS(            UNCONNECTED_ADC_BOT_3_N   ),
    .INP(                   UNCONNECTED_ADC_BOT_3_O   ),
    .INN(                   UNCONNECTED_ADC_BOT_3_P   ),
    .CURRENT_MONITOR(       UNCONNECTED_ADC_BOT_3_Q   ),
    .AUX_ISOURCE(           UNCONNECTED_ADC_BOT_3_R   ),
    .AUX_ISINK(             UNCONNECTED_ADC_BOT_3_S   ),
    .AUX_VOLTAGE(           UNCONNECTED_ADC_BOT_3_T   ),
    .ADC_TEST_INP(          UNCONNECTED_ADC_BOT_3_U   ),
    .ADC_TEST_INN(          UNCONNECTED_ADC_BOT_3_V   ),
    .VREF_DECOUPLE(         UNCONNECTED_ADC_BOT_3_W   ),
    .TAVDDA2P5(             UNCONNECTED_ADC_BOT_3_X   ),
    .TAVDDD2P5_2(           UNCONNECTED_ADC_BOT_3_Y   ),
    .VSSD2P5(               UNCONNECTED_ADC_BOT_3_Z   ),
    .TAVDDA2P5_2(           UNCONNECTED_ADC_BOT_3_AA  ),
    .TACVDDD1P2_2(          UNCONNECTED_ADC_BOT_3_BB  ),
    .VSSIO(                 UNCONNECTED_ADC_BOT_3_CC  ),
    .TAVDD_IO(              UNCONNECTED_ADC_BOT_3_DD  ),
    .VSSD1P2(               UNCONNECTED_ADC_BOT_3_EE  ),
    .TACVDDD1P2(            UNCONNECTED_ADC_BOT_3_FF  ),
    .TAVDDD2P5(             UNCONNECTED_ADC_BOT_3_GG  )
  );

    //******************************************************************************
    //******************************************************************************
    //***
    //*** Module Instantiation: Bottom-side ADC_1 (ADC_BOT_4)
    //***
    //******************************************************************************
    //******************************************************************************
    wire  logic   [0:15]  UNCONNECTED_ADC_BOT_4_O;      //***Dummy connection for INP
    wire  logic   [0:15]  UNCONNECTED_ADC_BOT_4_O;      //***Dummy connection for INP

COLDADCP1  ADC_BOT_4 (
    .I2C_SDA_C2W( 	        ADC_BOT_4_SDA_C2W 	      ),
    .I2C_SDA_W2C(           TOP_I2C_SDA_W2C           ),
    .I2C_SCL(               TOP_I2C_SCL               ),
    .I2C_ADD_0(             ADC_BOT_4_I2C_ADD_0       ),
    .I2C_ADD_1(             ADC_BOT_4_I2C_ADD_1       ),
    .I2C_ADD_2(             ADC_BOT_4_I2C_ADD_2       ),
    .I2C_ADD_3(             ADC_BOT_4_I2C_ADD_3       ),
    .I2C_UART_SEL(          I2C                       ),
    .CLK_2MHZ_N(            ADC_BOT_4_CLK_2MHZ_N      ),
    .CLK_2MHZ_P(            ADC_BOT_4_CLK_2MHZ_P      ),
    .CLK_64MHZ_N(           ADC_BOT_4_CLK_64MHZ_N     ),
    .CLK_64MHZ_P(           ADC_BOT_4_CLK_64MHZ_P     ),
    .DIG_FRAME_N(           ADC_BOT_4_DIG_CLKOUT_N    ),
    .DIG_FRAME_P(           ADC_BOT_4_DIG_CLKOUT_P    ),
    .DIG_CLKOUT_N(          ADC_BOT_4_DIG_CLKOUT_N    ),
    .DIG_CLKOUT_P(          ADC_BOT_4_DIG_CLKOUT_P    ),
    .DIG_OUTA_N(            ADC_BOT_4_DIG_OUTA_N      ),
    .DIG_OUTA_P(            ADC_BOT_4_DIG_OUTA_N      ),
    .DIG_OUTB_N(            ADC_BOT_4_DIG_OUTB_N      ),
    .DIG_OUTB_P(            ADC_BOT_4_DIG_OUTB_N      ),
    .DIG_OUTC_N(            ADC_BOT_4_DIG_OUTC_N      ),
    .DIG_OUTC_P(            ADC_BOT_4_DIG_OUTC_N      ),
    .DIG_OUTD_N(            ADC_BOT_4_DIG_OUTD_N      ),
    .DIG_OUTD_P(            ADC_BOT_4_DIG_OUTD_N      ),
    .DIG_OUTE_N(            ADC_BOT_4_DIG_OUTE_N      ),
    .DIG_OUTE_P(            ADC_BOT_4_DIG_OUTE_N      ),
    .DIG_OUTF_N(            ADC_BOT_4_DIG_OUTF_N      ),
    .DIG_OUTF_P(            ADC_BOT_4_DIG_OUTF_N      ),
    .DIG_OUTG_N(            ADC_BOT_4_DIG_OUTG_N      ),
    .DIG_OUTG_P(            ADC_BOT_4_DIG_OUTG_N      ),
    .DIG_OUTH_N(            ADC_BOT_4_DIG_OUTH_N      ),
    .DIG_OUTH_P(            ADC_BOT_4_DIG_OUTH_N      ),
    .MASTER_RESET(          ADC_BOT_4_MASTER_RESET    ),
    .MOSI(                  TIELOW                    ),
    .MISO(                  UNCONNECTED_ADC_BOT_4_A   ),
    .DIGITAL_MUX_OUT_N(     UNCONNECTED_ADC_BOT_4_B   ),
    .DIGITAL_MUX_OUT_P(     UNCONNECTED_ADC_BOT_4_C   ),
    .SSO_DATA_OUT_0(        UNCONNECTED_ADC_BOT_4_D   ),
    .SSO_DATA_OUT_1(        UNCONNECTED_ADC_BOT_4_E   ),
    .SSO_FRAME_CLOCK(       UNCONNECTED_ADC_BOT_4_F   ),
    .SSO_OUT_CLOCK(         UNCONNECTED_ADC_BOT_4_G   ),
    .VREFP(                 UNCONNECTED_ADC_BOT_4_H   ),
    .VREFN(                 UNCONNECTED_ADC_BOT_4_I   ),
    .VREF_EXT(              UNCONNECTED_ADC_BOT_4_J   ),
    .VOLTAGE_MONITOR(       UNCONNECTED_ADC_BOT_4_K   ),
    .VCMO(                  UNCONNECTED_ADC_BOT_4_L   ),
    .VCMI(                  UNCONNECTED_ADC_BOT_4_M   ),
    .RBIAS_CMOS(            UNCONNECTED_ADC_BOT_4_N   ),
    .INP(                   UNCONNECTED_ADC_BOT_4_O   ),
    .INN(                   UNCONNECTED_ADC_BOT_4_P   ),
    .CURRENT_MONITOR(       UNCONNECTED_ADC_BOT_4_Q   ),
    .AUX_ISOURCE(           UNCONNECTED_ADC_BOT_4_R   ),
    .AUX_ISINK(             UNCONNECTED_ADC_BOT_4_S   ),
    .AUX_VOLTAGE(           UNCONNECTED_ADC_BOT_4_T   ),
    .ADC_TEST_INP(          UNCONNECTED_ADC_BOT_4_U   ),
    .ADC_TEST_INN(          UNCONNECTED_ADC_BOT_4_V   ),
    .VREF_DECOUPLE(         UNCONNECTED_ADC_BOT_4_W   ),
    .TAVDDA2P5(             UNCONNECTED_ADC_BOT_4_X   ),
    .TAVDDD2P5_2(           UNCONNECTED_ADC_BOT_4_Y   ),
    .VSSD2P5(               UNCONNECTED_ADC_BOT_4_Z   ),
    .TAVDDA2P5_2(           UNCONNECTED_ADC_BOT_4_AA  ),
    .TACVDDD1P2_2(          UNCONNECTED_ADC_BOT_4_BB  ),
    .VSSIO(                 UNCONNECTED_ADC_BOT_4_CC  ),
    .TAVDD_IO(              UNCONNECTED_ADC_BOT_4_DD  ),
    .VSSD1P2(               UNCONNECTED_ADC_BOT_4_EE  ),
    .TACVDDD1P2(            UNCONNECTED_ADC_BOT_4_FF  ),
    .TAVDDD2P5(             UNCONNECTED_ADC_BOT_4_GG  )
  );


//***
endmodule // colData_Verification_Board
