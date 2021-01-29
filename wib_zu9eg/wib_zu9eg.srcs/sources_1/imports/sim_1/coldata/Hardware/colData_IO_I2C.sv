`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: colData_IO_I2C
//***	Description: The LVDS and CMOS IO block for I2C signals
//***
//*******************************************************************************************
//*******************************************************************************************

module	colData_IO_I2C	(
	//I2C related PADS
	input		logic						I2C_LVDS_SCL_P,					//I2C Clock from Warm via LVDS
	input		logic						I2C_LVDS_SCL_N,					//I2C Clock from Warm via LVDS
	input		logic						I2C_LVDS_SDA_W2C_P,			//I2C Data Input from Warm via LVDS
	input		logic						I2C_LVDS_SDA_W2C_N,			//I2C Data Input from Warm via LVDS
	output	logic						I2C_LVDS_SDA_C2W_P,			//I2C Data Output to Warm via LVDS
	output	logic						I2C_LVDS_SDA_C2W_N,			//I2C Data Output to Warm via LVDS
	input		logic						I2C_CMOS_SCL,						//I2C Clock from Warm via relay from other colData
	input		logic						I2C_CMOS_SDA_W2C,				//I2C Data Input from Warm via relay from other colData
	output	logic						I2C_CMOS_SDA_C2W,				//I2C Data Output to Warm via relay by other colData
	input 	logic 					I2C_LVDS1_CMOS0_MODE,		//Control Signal: Select I2C via LVDS or relay
	output 	logic 					I2C_COLDATA_SCL,				//I2C Clock relayed to other colData and subordinate ADCs
	output 	logic 					I2C_COLDATA_SDA_W2C,		//I2C Data Input relayed to other colData and subordinate ADCs
	input 	logic 					I2C_COLDATA_SDA_C2W,		//I2C Data Output being relayed from other colData
	input 	logic						I2C_ADC_1_SDA_C2W,			//I2C Data Output being relayed from subordinate ADC_1
	input 	logic						I2C_ADC_2_SDA_C2W,			//I2C Data Output being relayed from subordinate ADC_2
	input 	logic						I2C_ADC_3_SDA_C2W,			//I2C Data Output being relayed from subordinate ADC_3
	input 	logic						I2C_ADC_4_SDA_C2W,			//I2C Data Output being relayed from subordinate ADC_4
	input		logic						CHIP_ID_0,							//I2C ChipID LSB.  Must be 1'b0 (COLDATA0 (bottom)) or 1'b1 (COLDATA1 (top))
	//I2C related INTERNAL
	output	logic						I2C_LVDS_SCL_internal,
	output	logic						I2C_LVDS_SDA_W2C_internal,
	input		logic						I2C_LVDS_SDA_C2W_internal,
	output	logic						I2C_CMOS_SCL_internal,
	output	logic						I2C_CMOS_SDA_W2C_internal,
	input		logic						I2C_CMOS_SDA_C2W_internal,
	output 	logic 					I2C_LVDS1_CMOS0_MODE_internal,
	input 	logic 					I2C_COLDATA_SCL_internal,
	input 	logic 					I2C_COLDATA_SDA_W2C_internal,
	output 	logic 					I2C_COLDATA_SDA_C2W_internal,
	output 	logic						I2C_ADC_1_SDA_C2W_internal,
	output 	logic						I2C_ADC_2_SDA_C2W_internal,
	output 	logic						I2C_ADC_3_SDA_C2W_internal,
	output 	logic						I2C_ADC_4_SDA_C2W_internal,
	output	logic						CHIP_ID_internal,
	//Bias
	input 	logic		[2:0]		LVDS_bias,
	input 	logic		[2:0]		LVDS_biasB,
	inout 	logic 					VDD_IO

);

//***
	LVDS_Rx_dnw_Top I2C_LVDS_SCL_0	( .PAD_VinP(	I2C_LVDS_SCL_P				),
                  									.PAD_VinN(	I2C_LVDS_SCL_N 				),
                  									.OC_Out(		I2C_LVDS_SCL_internal	)
                									);
//***
//***
	LVDS_Rx_dnw_Top I2C_LVDS_SDA_W2C_0	( .PAD_VinP(	I2C_LVDS_SDA_W2C_P				),
                  											.PAD_VinN(	I2C_LVDS_SDA_W2C_N 				),
                  											.OC_Out(		I2C_LVDS_SDA_W2C_internal	)
                											);
//***
//***
	LVDS_2p5_Tx_Core_PADs3_120umPitch I2C_LVDS_SDA_C2W_0	(	.txp(	I2C_LVDS_SDA_C2W_P				),
                    																			.txn(	I2C_LVDS_SDA_C2W_N 				),
                    																			.I(		I2C_LVDS_SDA_C2W_internal	),
																													.b1(		LVDS_bias[0]	),
																													.b1B(		LVDS_biasB[0]	),
																													.b2(		LVDS_bias[1]	),
																													.b2B(		LVDS_biasB[1]	),
																													.b3(		LVDS_bias[2]	),
																													.b3B(		LVDS_biasB[2]	)
		                																		);
//***
//***
	PDB2A_CMOS_IN  I2C_CMOS_SCL_0	( .IN_2P25V(	I2C_CMOS_SCL						),
																	.IN_1P1V(	I2C_CMOS_SCL_internal 	)
																);
//***
//***
	PDB2A_CMOS_IN  I2C_CMOS_SDA_W2C_0	( .IN_2P25V(	I2C_CMOS_SDA_W2C						),
																			.IN_1P1V(	I2C_CMOS_SDA_W2C_internal 	)
																		);
//***
//***
	PDB2A_CMOS_OUT  I2C_CMOS_SDA_C2W_0	( .OUT_2P25V(	I2C_CMOS_SDA_C2W						),
																				.OUT_1P1V(	I2C_CMOS_SDA_C2W_internal 	)
																			);
//***
//***
	PDB2A_CMOS_IN  I2C_LVDS1_CMOS0_MODE_0	( .IN_2P25V(	I2C_LVDS1_CMOS0_MODE						),
																					.IN_1P1V(	I2C_LVDS1_CMOS0_MODE_internal 	)
																				);
//***
//***
	PDB2A_CMOS_OUT  I2C_COLDATA_SCL_0	( .OUT_2P25V(	I2C_COLDATA_SCL						),
																			.OUT_1P1V(	I2C_COLDATA_SCL_internal 	)
																		);
//***
//***
	PDB2A_CMOS_OUT  I2C_COLDATA_SDA_W2C_0	( .OUT_2P25V(	I2C_COLDATA_SDA_W2C						),
																					.OUT_1P1V(	I2C_COLDATA_SDA_W2C_internal 	)
																				);
//***
//***
	PDB2A_CMOS_IN  I2C_COLDATA_SDA_C2W_0	( .IN_2P25V(	I2C_COLDATA_SDA_C2W						),
																					.IN_1P1V(	I2C_COLDATA_SDA_C2W_internal 	)
																				);
//***
//***
	PDB2A_CMOS_IN  I2C_ADC_1_SDA_C2W_0	( .IN_2P25V(	I2C_ADC_1_SDA_C2W						),
																				.IN_1P1V(	I2C_ADC_1_SDA_C2W_internal 	)
																			);
//***
//***
	PDB2A_CMOS_IN  I2C_ADC_2_SDA_C2W_0	( .IN_2P25V(	I2C_ADC_2_SDA_C2W						),
																				.IN_1P1V(	I2C_ADC_2_SDA_C2W_internal 	)
																			);
//***
//***
	PDB2A_CMOS_IN  I2C_ADC_3_SDA_C2W_0	( .IN_2P25V(	I2C_ADC_3_SDA_C2W						),
																				.IN_1P1V(	I2C_ADC_3_SDA_C2W_internal 	)
																			);
//***
//***
	PDB2A_CMOS_IN  I2C_ADC_4_SDA_C2W_0	( .IN_2P25V(	I2C_ADC_4_SDA_C2W						),
																				.IN_1P1V(	I2C_ADC_4_SDA_C2W_internal 	)
																			);
//***
//***
	PDB2A_CMOS_IN  CHIP_ID_0_0	( .IN_2P25V(	CHIP_ID_0						),
																.IN_1P1V(	CHIP_ID_internal )
															);
//***
endmodule
