echo 'reset daq spy memory'
./devreg.sh daq_spy_reset0 1
./devreg.sh daq_spy_reset1 1

echo 'remove daq spy reset'
./devreg.sh daq_spy_reset0 0
./devreg.sh daq_spy_reset1 0

sleep 0.1

./devreg.sh daq_spy_reset0 1
./devreg.sh daq_spy_reset1 1


