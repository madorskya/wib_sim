`include "PACKAGE.types.coldADC.sv"
`include "PACKAGE.constants.coldADC.sv"
// Madorsky: removed include statement
//`ifndef JIMSCONSTANTS
//	`define	JIMSCONSTANTS
//	`include "PACKAGE.constants.coldADC.sv"
//`endif

//*******************************************************************************************
//*******************************************************************************************
//***
//*** Description: The module that connects the regfile of the cal_core
//***		to the I2C interface of the backend.
//*** Author: Jim Hoff
//***
//*******************************************************************************************
//*******************************************************************************************

module	coldADC_I2C_link	(
  //***
  //***	cal_core_wrapper Connections
  //***
  output 	logic 				CCORE_external_mode_i2c,   			// high to put regfile into extern mode
  output 	logic [7:0] 	CCORE_write_data_external_i2c, 	// RAM data in external
  output 	logic [7:0] 	CCORE_write_addr_external_i2c, 	// 8-bit RAM write address
  output 	logic 				CCORE_write_external_i2c,  			// high for external write
  output 	logic [7:0] 	CCORE_read_addr_external_i2c,  	// 8-bit RAM read address
  input 	logic [7:0] 	CCORE_read_data_external_i2c, 	// RAM data in external
  output 	logic 				CCORE_read_external_i2c,   			// high for read op
  input 	logic [3:0]		CCORE_CONFIG_lvds_i_ctrl,
  input 	logic [4:0] 	CCORE_CONFIG_start_number,
  input 	logic [3:0] 	CCORE_CONFIG_dMuxSel,
  input   logic         CCORE_Clk_16MHz,

  //***
  //***	I2C Connections
  //***
  input	  logic	[6:0]	  I2C_pageAddr,
  input	  logic	[7:0]	  I2C_regAddr,
  input	  logic	[7:0]	  I2C_Data_w2c,
  output	logic	[7:0]	  I2C_Data_c2w,
  input 	logic		      I2C_writeOp,
  input 	logic		      I2C_readOp,
  input 	logic		      I2C_Ack2,
  input 	logic		      I2C_Ack3,
  input   logic  [7:0]  I2C_lvdsICTRL,
  input   logic  [7:0]  I2C_startNumber,
  input   logic  [7:0]  I2C_dMuxSel,
  //***
  //***	BEND Connections
  //***
  output  logic	[4:0]	  BEND_startNumber,
  output  logic	[3:0]	  BEND_dMuxSel,
  //***
  //***	Pad Connections
  //***
  input		logic	[3:0]		PAD_chipID,				//(I2C) I2C and UART chip id
  input 	logic 				PAD_I2C_UART_SEL,	//(I2C) Selection between using UART or I2C
  output	logic	[3:0]		PAD_lvdsICTRL

  );

//***
//*** Variables
//***
  logic       I2C_GoodChip;
  logic       I2C_RegPage;
  logic       I2C_GoodChipAndPage;
  logic       I2C_GoodWrite;
  logic       I2C_GoodRead;

  logic [7:0] Almost_I2C_Data;

  logic       drive_Data_c2w;


//***
//***	Ship this out the the regfile in the CCORE iff the user requests the
//***		I2C and the chipID and the regID are correct
//***
//***	First, figure out if the criteria are met...
  assign	I2C_GoodChip					=	(I2C_pageAddr[6:3] == PAD_chipID)	?	ONE_ADC	:	ZERO_ADC;
  assign	I2C_RegPage						=	(I2C_pageAddr[2:0] == REGPAGE_ADC)	?	ONE_ADC	:	ZERO_ADC;
  assign	I2C_GoodChipAndPage		=	I2C_GoodChip && I2C_RegPage;
  assign	I2C_GoodWrite					=	(PAD_I2C_UART_SEL == I2C) && I2C_GoodChip && I2C_RegPage && 	I2C_writeOp;
  assign	I2C_GoodRead					=	(PAD_I2C_UART_SEL == I2C) && I2C_GoodChip && I2C_RegPage && 	I2C_readOp;
  assign 	CCORE_external_mode_i2c = I2C_GoodWrite || I2C_GoodRead;

//***	CCORE_write_data_external_i2c
  always_comb
    if	(I2C_GoodWrite == ONE_ADC)
      CCORE_write_data_external_i2c	=	I2C_Data_w2c;
    else
      CCORE_write_data_external_i2c	=	8'b0000_0000;

//***	CCORE_write_addr_external_i2c
  always_comb
    if	(I2C_GoodWrite == ONE_ADC)
      CCORE_write_addr_external_i2c	=	I2C_regAddr;
    else
      CCORE_write_addr_external_i2c	=	8'b0000_0000;

//***	CCORE_write_external_i2c
  always_comb
    if	(I2C_GoodWrite == ONE_ADC)
      CCORE_write_external_i2c		=	I2C_Ack3;
    else
      CCORE_write_external_i2c		=	ZERO_ADC;

//***	CCORE_read_addr_external_i2c
  always_comb
    if	(I2C_GoodRead == ONE_ADC)
      CCORE_read_addr_external_i2c	=	I2C_regAddr;
    else
      CCORE_read_addr_external_i2c	=	8'b0000_0000;

//***	CCORE_read_data_external_i2c
  always_comb
    if(PAD_I2C_UART_SEL == UART)
      Almost_I2C_Data			=	8'b0000_1111;
    else if	((PAD_I2C_UART_SEL == I2C) && (I2C_GoodRead == ONE_ADC))
      Almost_I2C_Data			=	CCORE_read_data_external_i2c;
    else
      Almost_I2C_Data			=	8'b1010_1010;

    //***	Grabbing the Almost_I2C_Data Into I2C_Data_c2w
//  always @(posedge CCORE_Clk_16MHz)
//    if( (I2C_GoodChipAndPage == ONE_ADC) && (I2C_Ack2 == ONE_ADC) )
//      I2C_Data_c2w	<=	Almost_I2C_Data;
//    else if ( I2C_GoodChipAndPage == ZERO_ADC )
//      I2C_Data_c2w	<=	8'bzzzz_zzzz;

    //***	Grabbing the Almost_I2C_Data Into I2C_Data_c2w
  always @ ( posedge CCORE_Clk_16MHz )
      if( (I2C_GoodRead == ONE_ADC) && (I2C_Ack2 == ONE_ADC) )
        drive_Data_c2w  <=  ONE_ADC;
      else if (I2C_Ack3 == ONE_ADC)
        drive_Data_c2w  <=  ZERO_ADC;
      else
        drive_Data_c2w  <=  drive_Data_c2w;

  always_comb
    if (drive_Data_c2w == ONE_ADC)
      I2C_Data_c2w	<=	Almost_I2C_Data;
    else
      I2C_Data_c2w	<=	8'bzzzz_zzzz;

//***	CCORE_read_external_i2c
  always_comb
    if	(I2C_GoodRead == ONE_ADC)
      CCORE_read_external_i2c		=	I2C_Ack2;
    else
      CCORE_read_external_i2c		=	ZERO_ADC;

  always_comb
  	if( PAD_I2C_UART_SEL == UART)
  		PAD_lvdsICTRL	=	CCORE_CONFIG_lvds_i_ctrl[3:0];
  	else
  		PAD_lvdsICTRL	=	I2C_lvdsICTRL[3:0];

  always_comb
    if( PAD_I2C_UART_SEL == UART)
    	BEND_startNumber	=	CCORE_CONFIG_start_number[4:0];
    else
    	BEND_startNumber	=	I2C_startNumber[4:0];

  always_comb
    if( PAD_I2C_UART_SEL == UART)
    	BEND_dMuxSel	=	CCORE_CONFIG_dMuxSel[3:0];
    else
    	BEND_dMuxSel	=	I2C_dMuxSel[3:0];


endmodule
