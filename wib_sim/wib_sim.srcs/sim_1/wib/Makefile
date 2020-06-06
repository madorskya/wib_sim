time = 600000ns
log = out.txt
top = wib_tf

COLDATA_FILES=\
../coldata/colData_Verification/PACKAGE.constants.colData.sv \
../coldata/colData_Verification/PACKAGE.types.colData.sv \
../coldata/Hardware/colData_2MHzClkGen.sv \
../coldata/Hardware/colData_8b10b.sv \
../coldata/Hardware/colData_ADCclks.sv \
../coldata/Hardware/colData_Calibrate.sv \
../coldata/Hardware/colData_dataCapture.sv \
../coldata/Hardware/colData_distributedRegs.sv \
../coldata/Hardware/colData_FastCommand.sv \
../coldata/Hardware/colData_feConfig.4stateMachines.sv \
../coldata/Hardware/colData_FErst.sv \
../coldata/Hardware/colData_frameForm.sv \
../coldata/Hardware/colData_I2C_relay.sv \
../coldata/Hardware/colData_I2Cslave.sv \
../coldata/Hardware/colData_IO_ADC.sv \
../coldata/Hardware/colData_IO_I2C.sv \
../coldata/Hardware/colData_IO_LARASIC.sv \
../coldata/Hardware/colData_IO_Misc.sv \
../coldata/Hardware/colData_IO_Sys.sv \
../coldata/Hardware/colData_PRBS7.sv \
../coldata/Hardware/colData_PRBS15.sv \
../coldata/Hardware/colData_resetSM.sv \
../coldata/Hardware/colData_SMU_PLL_SER_DRV.sv \
../coldata/Hardware/colData_switchYard_FSM.sv \
../coldata/Hardware/colData_switchYard.sv \
../coldata/Hardware/COLDATAP2.sv \
../coldata/Hardware/VDDCells.sv \
../coldata/Hardware/VSSCells.sv \
../coldata/Hardware_BlackBoxes/LVDS_Rx_dnw_Top.sv \
../coldata/Hardware_BlackBoxes/LVDS_2p5_Tx_Core_PADs3_120umPitch.sv \
../coldata/Hardware_BlackBoxes/PDB2A_CMOS_IN.sv \
../coldata/Hardware_BlackBoxes/PDB2A_CMOS_OUT.sv \
../coldata/Hardware_BlackBoxes/PVDD3A.sv \
../coldata/Hardware_BlackBoxes/PVDD3AC.sv \
../coldata/Hardware_BlackBoxes/PVSS2A.sv \
../coldata/Hardware_BlackBoxes/PVSS2AC.sv \
../coldata/Hardware_BlackBoxes/eFuses65_Model.sv \
../coldata/Hardware_BlackBoxes/eFuses65_Wrapper.sv \
../coldata/Hardware_BlackBoxes/POR.sv \
../coldata/Hardware_BlackBoxes/LVDS_bias3.sv \
../coldata/Hardware_BlackBoxes/LVDS_biasCM.sv

COLDADC_FILES=\
../coldadc/PACKAGE.constants.coldADC.sv \
../coldadc/PACKAGE.types.coldADC.sv \
../coldadc/async2sync_cal_core.sv \
../coldadc/cal_core.sv \
../coldadc/cl_regfile_fsm.sv \
../coldadc/cl_regfile.sv \
../coldadc/cold_adc_analog.simpleAnalog.sv \
../coldadc/cold_adc_analog.sv \
../coldadc/coldADC_DigitalBlock.sv \
../coldadc/coldADC_digital.sv \
../coldadc/coldADC_distributedRegs.sv \
../coldadc/coldADC_I2C_link.sv \
../coldadc/coldADC_I2Cslave.sv \
../coldadc/COLDADCP1.sv \
../coldadc/coldADC_readout.sv \
../coldadc/coldADC_Top.sv \
../coldadc/config_regfile.sv \
../coldadc/external_interface.sv \
../coldadc/prbs15.jim.sv \
../coldadc/prbs7.jim.sv \
../coldadc/regfile.sv \
../coldadc/shift_reg.sv \
../coldadc/sso.sv \
../coldadc/uart_rx.sv \
../coldadc/uart.sv \
../coldadc/uart_tx.sv

TF_FILES=\
../coldata/colData_Verification/PACKAGE.constants.colData.sv \
../coldata/colData_Verification/PACKAGE.types.colData.sv \
./diff_tx.sv \
./wib_tf.sv 



all: simulate

simulate:
	vlib work
# -mfcu dumps all files into single compile unit, so all globals are visible

	vlog -sv -mfcu -cuname coldata_cu $(COLDATA_FILES)
	vlog -sv -mfcu -cuname coldadc_cu $(COLDADC_FILES)
	vlog -sv -mfcu -cuname tf_cu $(TF_FILES)
	vsim -c -l $(log) -do "run $(time); quit" $(top)
	sed -i 's/^# //g' $(log)
