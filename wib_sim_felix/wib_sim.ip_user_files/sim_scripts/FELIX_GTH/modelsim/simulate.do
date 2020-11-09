onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L gtwizard_ultrascale_v1_7_8 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.FELIX_GTH xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {FELIX_GTH.udo}

run -all

quit -force
