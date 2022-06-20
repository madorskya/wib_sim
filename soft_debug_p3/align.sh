# enable 2 MHz clock reset on time stamp updates
./devreg.sh cmd_code_edge 0x10

# enable sending SYNC on certain time stamp lower bits
# FAST command latency is 19 clocks + 1 clock for cable and COLDATA
# 0x7fec = -20
./devreg.sh cmd_stamp_sync 0x7fec
./devreg.sh cmd_stamp_sync_en 1

# set DTS time stamp delay for alignment
./devreg.sh dts_time_delay 0x58

# enable alignment 
./devreg.sh align_en 1

# read alignment delays
./devreg.sh align0
./devreg.sh align1
./devreg.sh align2
./devreg.sh align3

