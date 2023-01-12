echo 'configure Ethernet IP according to Slack msg from D. Newbold, 2023-01-12'

# Set link 0 mac address
./deimos_reg.sh src_mac_addr_lower 0x00000001
./deimos_reg.sh src_mac_addr_upper 0x00000200

# Set link 0 IP address
# 192.168.51.1
./deimos_reg.sh src_ip_addr 0xc0a83301

# Set destination mac address (no ARP for now)
# host computer MAC: 00:0e:1e:51:df:20
./deimos_reg.sh dst_mac_addr_lower 0x1e51df20
./deimos_reg.sh dst_mac_addr_upper 0x0000000e

# Set destination IP address
# 192.168.51.2
./deimos_reg.sh dst_ip_addr 0xc0a83302

# Set UDP source / destination ports
./deimos_reg.sh udp_ports 0xf0d1f0d0

./deimos_reg_rd.sh src_mac_addr_lower
./deimos_reg_rd.sh src_mac_addr_upper
./deimos_reg_rd.sh src_ip_addr
./deimos_reg_rd.sh dst_mac_addr_lower
./deimos_reg_rd.sh dst_mac_addr_upper
./deimos_reg_rd.sh dst_ip_addr
./deimos_reg_rd.sh udp_ports

./deimos_reg_rd.sh csr.stat.err
./deimos_reg_rd.sh csr.stat.eth_rdy
./deimos_reg_rd.sh csr.stat.src_rdy
./deimos_reg_rd.sh csr.stat.samp_done

echo 'writing mux.ctrl.params.max_size 0x40'
echo 'writing mux.ctrl.params.max_lat_rdx 3'
echo 'writing mux.ctrl.params.hb_freq_rdx 0'
echo 'writing mux.ctrl.params.rate_d 0     '
echo 'writing mux.ctrl.params.rate_m 0     '
echo 'writing csr.ctrl.en 1                '
echo 'writing csr.ctrl.en_buf 1            '

./deimos_reg.sh mux.ctrl.params.max_size 0x40
./deimos_reg.sh mux.ctrl.params.max_lat_rdx 3
./deimos_reg.sh mux.ctrl.params.hb_freq_rdx 0
./deimos_reg.sh mux.ctrl.params.rate_d 0
./deimos_reg.sh mux.ctrl.params.rate_m 0
./deimos_reg.sh csr.ctrl.en 1
./deimos_reg.sh csr.ctrl.en_buf 1            

echo 'reading back written registers'

./deimos_reg_rd.sh mux.ctrl.params.max_size 
./deimos_reg_rd.sh mux.ctrl.params.max_lat_rdx 
./deimos_reg_rd.sh mux.ctrl.params.hb_freq_rdx 
./deimos_reg_rd.sh mux.ctrl.params.rate_d 
./deimos_reg_rd.sh mux.ctrl.params.rate_m 
./deimos_reg_rd.sh csr.ctrl.en 
./deimos_reg_rd.sh csr.ctrl.en_buf 

NS_PER_TIMESLICE=$(( 16 * 256 ))
printf "NS_PER_TIMESLICE = %s\n" "$NS_PER_TIMESLICE"

tr=0
c0=()
c1=()
c2=()
typeset -i c0
typeset -i c1
typeset -i c2
typeset -i tr

while true 
do

	./deimos_reg.sh csr.ctrl.sample 1
	./deimos_reg.sh csr.ctrl.sample 0

	v=0
	dt=0
	printf "wait for csr.stat.samp_done to become 1\n"
	while true
	do
		v=`./deimos_reg.sh csr.stat.samp_done`
		dt=`./deimos_reg.sh csr.stat.samp_period`
		printf "csr.stat.samp_done = %s\n" "$v"

		if [[ "$v" != "0x0" ]]
		then
			printf "csr.stat.samp_done = %s\n" "$v"
			break
		fi
		sleep 0.1
	done

	printf "mux stat %x\n" "$v"
	dtns=$(( ($dt + 1) * $NS_PER_TIMESLICE ))
	printf "ts %x %d ns\n" "$(( $dt + 1 ))" "$dtns"

	tr=0 

	for i in {0..1}
	do
		./deimos_reg.sh csr.ctrl.sel $i
		./deimos_reg_rd.sh csr.ctrl.sel

		wm_l=`./deimos_reg.sh buf.buf_mon.lwm`
		wm_h=`./deimos_reg.sh buf.buf_mon.hwm`
		lwm_l=`./deimos_reg.sh buf.buf_mon.llwm`
		lwm_h=`./deimos_reg.sh buf.buf_mon.lhwm`
		a_l=`./deimos_reg.sh buf.blk_acc_l`
		ts_l=`./deimos_reg.sh buf.ts_l`
		ts_h=`./deimos_reg.sh buf.ts_h`
		s_l=`./deimos_reg.sh buf.vol_l`
		s_h=`./deimos_reg.sh buf.vol_h`
		a_l=`./deimos_reg.sh buf.blk_acc_l`
		a_h=`./deimos_reg.sh buf.blk_acc_h`
		r_l=`./deimos_reg.sh buf.blk_rej_l`
		r_h=`./deimos_reg.sh buf.blk_rej_h`

		wm=$(( ($wm_h<<32) + $wm_l ))
		lwm=$(( ($lwm_h<<32) + $lwm_l ))
		ts=$(( ($ts_h<<32) + $ts_l ))
		s=$(( ($s_h<<32) + $s_l ))
		a=$(( ($a_h<<32) + $a_l ))
		r=$(( ($r_h<<32) + $r_l ))

		c0[$i]+=$s
		c1[$i]+=$a
		c2[$i]+=$r
		printf "\tBuf %x %x %x %x\n" "$i" "$wm" "$lwm" "$ts"
		printf "\t\tvol %x %x %d Gb/s\n"    "$s" "${c0[$i]}" "$(( $s * 64 / $dtns ))"
		printf "\t\tacc %x %x %d Mblks/s\n" "$a" "${c1[$i]}" "$(( $a * 1000 / $dtns ))"
		printf "\t\trej %x %x %d Mblks/s\n" "$r" "${c2[$i]}" "$(( $r * 1000 / $dtns ))"
		tr+=$(( $s * 64 / $dtns ))
	done
	printf "\tTot %d Gb/s\n" "$tr"
 
	./deimos_reg_rd.sh rx.stat.err 
	./deimos_reg_rd.sh rx.ctrs.d_blks 	
	./deimos_reg_rd.sh rx.ctrs.h_blks

	sleep 2
done
