onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib FELIX_GTH_opt

do {wave.do}

view wave
view structure
view signals

do {FELIX_GTH.udo}

run -all

quit -force
