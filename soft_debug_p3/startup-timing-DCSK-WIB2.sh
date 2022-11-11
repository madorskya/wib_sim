#!/bin/bash
#
# Script to set up PLL and timing endpoint
# on DUNE FD WIB2
#
# 26 January 2021
# David Cussans, Dave Newbold, Stoyan Trilov
# 
# 15 August 2022
# Modified to test DCSK protocol with WB2 - A.N.

# time to wait between operations.
sleep_seconds=2

# pll i2c info
pll_i2c_bus=0x0
pll_i2c_adr=0x6b

# pll reg
los_reg=0x0d # bit 3:0 los for the four inputs, 7:4 OOF for the inputs
los_flg_reg=0x12 # sticky version of 0x0d

lol_reg=0x0e # bit 1: lol, bit 5: HOLD (holdover/free run mode)
lol_flg_reg=0x13 # sticky version of 0x0e

pll_reg_read_cmd="i2cget -y ${pll_i2c_bus} ${pll_i2c_adr} "
pll_reg_write_cmd="i2cset -y ${pll_i2c_bus} ${pll_i2c_adr} "

ept_ctrl=0xa00c0000
ept_reg=0xa00c0090

function rx_timing_sel_sfp_si5344 {
    devmem 0xa00c0004 32 0x20
}

function pll_sticky_clear {
    echo "Clear LOS and OOF sticky flags"
    ${pll_reg_write_cmd} ${los_flg_reg} 0x0

    echo "Clear LOL and HOLD sticky flags"
    ${pll_reg_write_cmd} ${lol_flg_reg} 0x0

}

function cdr_reset {
    devmem 0xa00c0004 32 0x0001002a
    i2cset -y 0 0x40 9 0x68
    i2cset -y 0 0x40 9 0
    i2cget -y 0 0x40 4
    devmem 0xa00c0004 32 0x00000020
}

function ept_reset {
    echo 'asserting endpoint rst'
    poke $ept_ctrl 0x10000000
    sleep $sleep_seconds
    echo 'deasserting endpoint rst'
    poke $ept_ctrl 0x00000000
}

function print_pll_status {
#	printf "\n%s\n" "----------------------------"
#	date
	
	echo " PLL INFO "
	echo " -------- "

	# LOS and OOF values 	
	los_val=$(${pll_reg_read_cmd} ${los_reg})
	printf "LOS:      0x%x\n" $((los_val & 0x0f))
	printf "OOF:      0x%x\n" $((los_val >> 4))
	
	los_flg_val=$(${pll_reg_read_cmd} ${los_flg_reg})
	printf "LOS FLG:  0x%x\n" $((los_flg_val & 0x0f))
	printf "OOF FLG:  0x%x\n" $((los_flg_val >> 4))

	# LOL and HOLD values
	lol_val=$(${pll_reg_read_cmd} ${lol_reg})
	printf "HOLD:     0x%x\n" $(( (los_val >> 5) & 0x1 ))
	printf "LOL:      0x%x\n" $(( (los_val >> 1) & 0x1 ))

	lol_flg_val=$(${pll_reg_read_cmd} ${lol_flg_reg})
	printf "HOLD FLG: 0x%x\n" $(( (lol_flg_val >> 5) & 0x1 ))
	printf "LOL FLG:  0x%x\n\n" $(( (lol_flg_val >> 1) & 0x1 ))

}

function print_ept_status {
	echo " EPT INFO "
	echo " -------- "

	# bottom four bits are the endpoint status, bits 18:17 are the cdr_los and cdr_lol respectively
	ept_reg_val=$(peek ${ept_reg})
	printf "EPT CDR LOS: 0x%x\n" $(( (ept_reg_val >> 18) & 0x1 )) # bit 18 is CDR LOS as seen by endpoint
	printf "EPT CDR LOL: 0x%x\n" $(( (ept_reg_val >> 17) & 0x1 )) # bit 17 is CDR LOL as seen by endpoint
	printf "EPT TS RDY:  0x%x\n" $(( (ept_reg_val >> 5 ) & 0x1 )) # bit 5 is ts ready
	printf "EPT STATE:   0x%x\n" $((  ept_reg_val & 0x0f )) # bits 3:0 are the endpoint state
	
	printf "%s\n\n" "----------------------------"

}

#######################################################################################
#
# Start of operations ...
#
#######################################################################################

echo 'SFP timing source'
#rx_timing_sel_sfp_si5344
#ts_clk_sel for timing path through CDR
#devmem 0xa00c0004 32 0x00010020

sleep $sleep_seconds

echo 'reset CDR'
cdr_reset

sleep $sleep_seconds

echo 'reset PLL'
#wib_synthesizer_soft/si5345_config-50M
#clock/si5345_config
#clock/si5345_config-62p5
clock/si5345_config

sleep $sleep_seconds

echo 'reset timing endpoint'
ept_reset

echo 'clear PLL LOS,LOL sticky flags'
pll_sticky_clear

#######################################################################################
# Now loop continuously, printing PLL and EP status
#######################################################################################
while true; do
    	printf "\n%s\n" "----------------------------"
	date
	
	print_pll_status
	print_ept_status

	sleep $sleep_seconds
done
