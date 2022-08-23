year=`./devreg.sh fw_year   | cut -d" " -f3`
month=`./devreg.sh fw_month  | cut -d" " -f3`
day=`./devreg.sh fw_day    | cut -d" " -f3`
hour=`./devreg.sh fw_hour   | cut -d" " -f3`
minute=`./devreg.sh fw_minute | cut -d" " -f3`
sec=`./devreg.sh fw_second | cut -d" " -f3`
year=$(( 2000 + $year ))

printf "%04d-%02d-%02d %02d:%02d:%02d\n" "$year" "$month" "$day" "$hour" "$minute" "$sec"

