onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+FELIX_GTH -L xilinx_vip -L xpm -L gtwizard_ultrascale_v1_7_8 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.FELIX_GTH xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {FELIX_GTH.udo}

run -all

endsim

quit -force
