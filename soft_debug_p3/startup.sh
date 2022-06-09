./coldata_power_off.sh
# timing from backplane
./devreg.sh rx_timing_sel 0
./devreg.sh i2c_select 0
clock/si5345_config
voltages/wib_voltages
./coldata_power_on.sh
sleep 1
# reset COLDATA chips - this leads to data missing for some reason
./devreg.sh fast_cmd_code 1
sleep 0.1

sw/femb_test 0
sw/femb_test 1
sw/femb_test 2
sw/femb_test 3
./devreg.sh link_mask 0x0000
#./coldata_rx_reset.sh
sleep 1
./coldadc_power_on.sh
sleep 1
# set EDGE to ACT delay
./devreg.sh edge_to_act_delay 19

# align 2 MHz clock edges
#./devreg.sh fast_cmd_code 8
# reset COLDATA time stamps, FAST command = SYNC
#./devreg.sh fast_cmd_code 4

# reset ADC chips, by issuing ACT FAST command. ACT register is programmed with ADC reset code by femb_test.cxx
./devreg.sh fast_cmd_code 2
sleep 0.1

# reset COLDATA RX to clear buffers
./devreg.sh coldata_rx_reset 1
./devreg.sh coldata_rx_reset 0

# reset FELIX TX and loopback RX
./devreg.sh felix_rx_reset 1
./devreg.sh felix_rx_reset 0

