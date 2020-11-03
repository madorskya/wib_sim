`ifndef	DEFS_GOOD			//if definitions are not yet defined...
	`define	DEFS_GOOD		//set the flag

	timeunit	1ns;
	timeprecision	10ps;

	package COLDATA_pkg;
  	import		uvm_pkg::*;
		`include	"uvm_macros.svh"

	//Generic Parameters
		`include	"./colData_Verification/"PACKAGE.constants.colData.sv""
		`include	"./colData_Verification/"PACKAGE.types.colData.sv""

	//Configure blocks
		`include	"./UVM_ClkAndFastCmd/ClkAndFastCmd_config.sv"
		`include	"./UVM_coldADC/coldADC_config.sv"
		`include	"./UVM_coldADC_dataSource/coldADC_dataSource_config.sv"
		`include	"./UVM_colData_readout/colData_readout_config.sv"
		`include	"./UVM_EFUSE/EFUSE_config.sv"
		`include	"./UVM_I2C_LVDS/I2C_LVDS_config.sv"
		`include	"./UVM_I2C_Whitebox/I2C_whitebox_config.sv"
		`include	"./UVM_LARASIC/LARASIC_config.sv"
		`include	"./UVM_Misc/Misc_config.sv"
		`include	"./colData_Verification/colData_Verification_Board.config.sv"

	//Clock and Fast Command Inclusions
		`include	"./UVM_ClkAndFastCmd/ClkAndFastCmd_transaction.sv"
		`include	"./UVM_ClkAndFastCmd/ClkAndFastCmd_monitor.sv"
		`include	"./UVM_ClkAndFastCmd/ClkAndFastCmd_driver.sv"
		`include	"./UVM_ClkAndFastCmd/ClkAndFastCmd_sequence.sv"
		`include	"./UVM_ClkAndFastCmd/ClkAndFastCmd_agent.sv"

	//coldADC Inclusions
		`include	"./UVM_coldADC/coldADC_transaction.sv"
		`include	"./UVM_coldADC/coldADC_monitor.sv"
		`include	"./UVM_coldADC/coldADC_agent.sv"

	//coldADC dataSource Inclusions
		`include	"./UVM_coldADC_dataSource/coldADC_dataSource_transaction.sv"
		`include	"./UVM_coldADC_dataSource/coldADC_dataSource_monitor.sv"
		`include	"./UVM_coldADC_dataSource/coldADC_dataSource_driver.sv"
		`include	"./UVM_coldADC_dataSource/coldADC_dataSource_sequence.sv"
		`include	"./UVM_coldADC_dataSource/coldADC_dataSource_agent.sv"

	//colData Readout Inclusions
		`include	"./UVM_colData_readout/colData_readout_transaction.sv"
		`include	"./UVM_colData_readout/colData_readout_monitor.sv"
		`include	"./UVM_colData_readout/colData_readout_agent.sv"

	//EFUSE Inclusions
		`include	"./UVM_EFUSE/EFUSE_transaction.sv"
		`include	"./UVM_EFUSE/EFUSE_driver.sv"
		`include	"./UVM_EFUSE/EFUSE_monitor.sv"
		`include	"./UVM_EFUSE/EFUSE_sequence.sv"
		`include	"./UVM_EFUSE/EFUSE_agent.sv"

	//I2C_LVDS Inclusions
		`include	"./UVM_I2C_LVDS/I2C_transaction.sv"
		`include	"./UVM_I2C_LVDS/I2C_LVDS_driver.sv"
		`include	"./UVM_I2C_LVDS/I2C_LVDS_monitor.sv"
		`include	"./UVM_I2C_LVDS/I2C_sequence.sv"
		`include	"./UVM_I2C_LVDS/I2C_LVDS_agent.sv"

	//I2C Whitebox Inclusions
		`include	"./UVM_I2C_Whitebox/I2C_whitebox_transaction.sv"
		`include	"./UVM_I2C_Whitebox/I2C_whitebox_monitor.sv"
		`include	"./UVM_I2C_Whitebox/I2C_whitebox_agent.sv"

	//LARASIC Inclusions
		`include	"./UVM_LARASIC/LARASIC_transaction.sv"
		`include	"./UVM_LARASIC/LARASIC_monitor.sv"
		`include	"./UVM_LARASIC/LARASIC_agent.sv"

	//I2C_LVDS Inclusions
		`include	"./UVM_Misc/Misc_transaction.sv"
		`include	"./UVM_Misc/Misc_driver.sv"
		`include	"./UVM_Misc/Misc_monitor.sv"
		`include	"./UVM_Misc/Misc_sequence.sv"
		`include	"./UVM_Misc/Misc_agent.sv"

	//Scoreboards
		`include	"./UVM_ClkAndFastCmd/ClkAndFastCmd_scoreboard.sv"
		`include	"./UVM_colData_readout/colData_readout_scoreboard.sv"
		`include	"./UVM_I2C_LVDS/I2C_RW_scoreboard.sv"
		`include	"./UVM_I2C_Whitebox/I2C_whitebox_relay_scoreboard.sv"
		`include	"./UVM_LARASIC/LARASIC_scoreboard.sv"

	//Virtual Sequence Inclusion
		`include	"./colData_Verification/colData_Verification_Board.virtual.sv"

	//colData_Verification_Board -specific Inclusions (e.g. The environment )
		`include	"./colData_Verification/colData_Verification_Board.env.sv"

	//***	Include the Test module *INSIDE* of the package
		`include	"./colData_Verification/colData_Verification_Board.test.sv"

	endpackage	:	COLDATA_pkg

`endif
