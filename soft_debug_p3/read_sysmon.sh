# manual
# https://www.xilinx.com/support/documents/user_guides/ug580-ultrascale-sysmon.pdf
# equation 2-11
t_mult=509.3140064
t_sub=280.23087870
two_b=2**16
t_adc=`./devreg.sh sm_temp`
t_c=$(awk "BEGIN { printf(\"%.2f\", ($t_adc*$t_mult/$two_b)-$t_sub)}")
printf "Temperature: %s%s\n" "$t_c" " C"

# equation 2-15
vccint_adc=`./devreg.sh sm_vccint`
vccint_v=$(awk "BEGIN { printf(\"%.2f\", $vccint_adc*3./65536.)}")
printf "VCCINT:  %s%s\n" "$vccint_v" " V"

vccaux_adc=`./devreg.sh sm_vccaux`
vccaux_v=$(awk "BEGIN { printf(\"%.2f\", $vccaux_adc*3./65536.)}")
printf "VCCAUX:  %s%s\n" "$vccaux_v" " V"

vccbram_adc=`./devreg.sh sm_vccbram`
vccbram_v=$(awk "BEGIN { printf(\"%.2f\", $vccbram_adc*3./65536.)}")
printf "VCCBRAM: %s%s\n" "$vccbram_v" " V"


