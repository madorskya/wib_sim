`include "PACKAGE.types.colData.sv"
`include "PACKAGE.constants.colData.sv"
//*******************************************************************************************
//*******************************************************************************************
//***
//***	Module Name: colData_IO_Misc
//***	Description: The CMOS IO block for system signals
//***
//*******************************************************************************************
//*******************************************************************************************

module	colData_IO_Misc  (  output   logic   ADC_MASTER_RESET,
                            output   logic   LARASIC_MASTER_RESET,
                            input    logic   ADC_MASTER_RESET_internal,
                            input    logic   LARASIC_MASTER_RESET_internal,
			                      input    logic   EFUSE_CSB,
			                      output   logic   EFUSE_CSB_internal,
			                      input    logic   EFUSE_DIN,
			                      output   logic   EFUSE_DIN_internal,
			                      input    logic   EFUSE_PGM,
			                      output   logic   EFUSE_PGM_internal,
			                      input    logic   EFUSE_SCLK,
			                      output   logic   EFUSE_SCLK_internal,
                            output   logic   EFUSE_DOUT,
			                      input    logic   EFUSE_DOUT_internal,
                            output   logic   FMB_CONTROL_0,
			                      input    logic   FMB_CONTROL_0_internal,
                            output   logic   FMB_CONTROL_1,
                            input    logic   FMB_CONTROL_1_internal,
                            inout    logic   VDD_IO,
                            inout    logic   VDD_LARASIC
                        );

//***
	PDB2A_CMOS_OUT  ADC_RESET_0   ( .OUT_2P25V(	ADC_MASTER_RESET),
                                  .OUT_1P1V(	ADC_MASTER_RESET_internal )
                                );
//***
//***
	PDB2A_CMOS_OUT  LAR_RESET_0   ( .OUT_2P25V(	LARASIC_MASTER_RESET	),
                                  .OUT_1P1V(	LARASIC_MASTER_RESET_internal )
                                );
//***

//EFUSE inputs
  PDB2A_CMOS_IN   EFUSE_CSB_0   ( .IN_2P25V(EFUSE_CSB),
                                  .IN_1P1V(EFUSE_CSB_internal)
                                );
  PDB2A_CMOS_IN   EFUSE_DIN_0   ( .IN_2P25V(EFUSE_DIN),
                                  .IN_1P1V(EFUSE_DIN_internal)
                                );
  PDB2A_CMOS_IN   EFUSE_PGM_0   ( .IN_2P25V(EFUSE_PGM),
                                  .IN_1P1V(EFUSE_PGM_internal)
                                );
  PDB2A_CMOS_IN   EFUSE_SCLK_0  ( .IN_2P25V(EFUSE_SCLK),
                                  .IN_1P1V(EFUSE_SCLK_internal)
                                );
  PDB2A_CMOS_OUT  EFUSE_DOUT_0  ( .OUT_1P1V(EFUSE_DOUT_internal),
                                  .OUT_2P25V(EFUSE_DOUT)
                                );

// CMOS output FMB CONTROL 0, FMB CONTROL 1
  PDB2A_CMOS_OUT  FMB_CONTROL_0_0	( .OUT_2P25V(	FMB_CONTROL_0	),
                                    .OUT_1P1V(	FMB_CONTROL_0_internal 	)
                                  );
  PDB2A_CMOS_OUT  FMB_CONTROL_1_0	( .OUT_2P25V(	FMB_CONTROL_1	),
                                    .OUT_1P1V(	FMB_CONTROL_1_internal 	)
                                  );

//I2C_OTHER_SDA_C2W ???
endmodule
