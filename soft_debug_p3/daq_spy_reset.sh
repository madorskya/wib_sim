echo 'reset daq spy memory'
./devreg.sh daq_spy_reset 1

echo 'remove daq spy reset'
./devreg.sh daq_spy_reset 0

sleep 1

./devreg.sh daq_spy_reset 1


