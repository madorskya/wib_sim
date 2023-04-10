i=0x5
while true
do 
	./cal_dac_set.sh $i
	i=$(( $i + 0x100 ))
	i=$(( $i & 0xffff ))
	sleep 0.01
done
