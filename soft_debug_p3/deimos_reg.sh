#!/bin/bash

devmem="devmem"
# see documentation here: 
# https://gitlab.cern.ch/dune-daq/readout/deimos/-/blob/newbold/tx_mux_devel/components/tx_mux/doc/tx_mux.md
# offset 0
name=(csr.ctrl.en	csr.ctrl.en_buf	csr.ctrl.sample	csr.ctrl.sel)
addr=(0xA0020000	0xA0020000		0xA0020000	    0xA0020000	)
bnum=(0				1				2			    8			)
mask=(1				1				1		        0x3f		)

name+=(csr.stat.err csr.stat.eth_rdy csr.stat.src_rdy csr.stat.samp_done  csr.stat.samp_period)
addr+=(0xA0020008	0xA0020008		 0xA0020008	      0xA0020008	      0xA002000C)
bnum+=(0			1				 2			      3			          0)
mask+=(1			1				 1		          1		              0xffffffff)

name+=(mux.ctrl.params.max_size  mux.ctrl.params.max_lat_rdx  mux.ctrl.params.hb_freq_rdx  mux.ctrl.params.rate_d  mux.ctrl.params.rate_m)
addr+=(0xA0020020                0xA0020020                   0xA0020020                     0xA0020020              0xA0020020)
bnum+=(0                         8                            12                             16                      20)
mask+=(0xff                      0xf                          0xf                            0xf                     0xf)

name+=(mux.ctrl.id.detid  mux.ctrl.id.crate  mux.ctrl.id.slot  mux.ctrl.id.iface)
addr+=(0xA0020024         0xA0020024         0xA0020024        0xA0020024)
bnum+=(0                  6                  16                20)
mask+=(0x3f               0x3ff              0xf               3)

name+=(buf.stat.rx_stat  buf.stat.tx_stat)
addr+=(0xA0020040        0xA0020040)
bnum+=(0                 4)
mask+=(0xf               0xf)

name+=(buf.buf_mon.lwm  buf.buf_mon.hwm  buf.buf_mon.llwm  buf.buf_mon.lhwm)
addr+=(0xA0020044       0xA0020044       0xA0020044        0xA0020044)
bnum+=(0                8                16                24)
mask+=(0xff             0xff             0xff              0xff)

name+=(buf.ts_l   buf.ts_h   buf.vol_l  buf.vol_h)
addr+=(0xA0020048 0xA002004C 0xA0020050 0xA0020054)
bnum+=(0          0          0          0)
mask+=(0xffffffff 0xffffffff 0xffffffff 0xffffffff)

name+=(buf.blk_acc_l  buf.blk_acc_h  buf.blk_rej_l  buf.blk_rej_h)
addr+=(0xA0020058     0xA002005C     0xA0020060     0xA0020064)
bnum+=(0              0              0              0)
mask+=(0xffffffff     0xffffffff     0xffffffff     0xffffffff)

name+=(rx.stat.err rx.ctrs.d_blks rx.ctrs.h_blks) 
addr+=(0xA0020090  0xA0020098     0xA002009C)  
bnum+=(0           0              0) 
mask+=(1           0xffffffff     0xffffffff)

name+=(src_mac_addr_lower src_mac_addr_upper src_ip_addr)
addr+=(0xA0032000         0xA0032004         0xA0032024)
bnum+=(0                  0                  0)
mask+=(0xffffffff         0xffff             0xffffffff)

name+=(dst_mac_addr_lower dst_mac_addr_upper dst_ip_addr udp_ports)
addr+=(0xA0032008         0xA003200C         0xA0032020  0xA0032028)
bnum+=(0                  0                  0           0)
mask+=(0xffffffff         0xffff             0xffffffff  0xffffffff)

#syntax: deimos_reg.sh reg_name [wr_value]

if [ $1 ]
then
	reg_name=$1 # register name
	if [ $2 ] 
	then
		# writing
		wr_value=$2 # write value
		i=0
		found=0
		for n in "${name[@]}"
		do
			if [[ "$n" == "$1" ]]
			then
				#prepare write and mask values
				wr_value=$(( $wr_value & ${mask[$i]} ))
				wr_value=$(( $wr_value << ${bnum[$i]} ))
				msk_value=$(( ${mask[$i]} << ${bnum[$i]} ))
				msk_value=$(( 0xffffffff ^ $msk_value ))
				# read the register
				reg_read_value=`$devmem ${addr[$i]} 32`
				reg_wr_value=$(( $reg_read_value & $msk_value )) # cut the bits
				reg_wr_value=$(( $reg_wr_value | $wr_value )) # insert bits
				# split field
				# printf "%s value: %x mask: %x wr_reg: %x\n" "$n" "$wr_value" "$msk_value" "$reg_wr_value"
				command=$(printf "%s %s 32 0x%x" "$devmem" "${addr[$i]}" "$reg_wr_value")
				#`$devmem ${addr[$i]} 32 0x$reg_wr_value`
				`$command`
				found=1
				
			fi
			i=$(( $i + 1 ))
		done
		if [[ $found == 0 ]]
		then
			printf "undefined register: %s\n" "$reg_name"
		fi
	else	
		# reading
		i=0
		found=0
		for n in "${name[@]}"
		do
			if [[ "$n" == "$1" ]]
			then
				# read the register
				reg_read_value=`$devmem ${addr[$i]} 32`
				# split field
				reg_read_value=$(( $reg_read_value >> ${bnum[$i]} ))
				reg_read_value=$(( $reg_read_value &  ${mask[$i]} ))
#				printf "%s = 0x%x\n" "$n" "$reg_read_value"
				printf "0x%x\n" "$reg_read_value"
				found=1		
			fi
			i=$(( $i + 1 ))
		done
		if [[ $found == 0 ]]
		then
			printf "undefined register: %s\n" "$reg_name"
		fi
	fi
else	
	# no arguments, print usage
	printf "usage: deimos_reg reg_name [wr_value]\n"
	printf "available registers:\n"
	printf "ADDR\t\tLBIT\tMASK\tNAME\n"
	i=0
	for n in "${name[@]}"
	do
		printf "%s\t%d\t%x\t%s\n" "${addr[$i]}" "${bnum[$i]}" "${mask[$i]}" "$n"
		i=$(( $i + 1 ))
	done

fi
