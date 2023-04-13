# base addresses
base=(0x0440000000 0x0440100000 0x0440200000 0x0440300000 0x0440400000 0x0440500000 0x0440600000 0x0440700000)

# select base address by stream number
addr=${base[$1]}

# memory size = 2^18 bytes = 2^15 64-bit words

ts_old=0
for (( i=0;i<0x8000;i++ ))
do
	# keep history so we can look up time stamps
	val0=$val1
	val1=$val

	# read data word
	val=`devmem $addr 64`
	>&1 printf 'i = 0x%04x v = %s\n' "$i" "$val"

	# check if this is reserved word #2, which currently contains zeros
	# DTS time stamp is in val0
	if [ $((val)) -eq 0 ]
	then
		ts_diff=$(( $((val0)) - $ts_old ))
		>&2 printf 'DTS: %s prev.DTS: %016x diff: %04x\n' "$val0" "$ts_old" "$ts_diff"
		ts_old=$((val0))
	fi

	# increment memory address
	addr=$(( $addr + 8 ))
done
