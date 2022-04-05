./coldata_power_off.sh
#./eth0_start.sh
#./rx_timing_sel_sfp_si5344.sh
clock/si5345_config
voltages/wib_voltages
./coldata_power_on.sh
sleep 1
sw/femb_test 0
sw/femb_test 1
sw/femb_test 2
sw/femb_test 3
./coldata_rx_mask.sh
./coldata_rx_reset.sh
sleep 1
./coldadc_power_on.sh

