#!/bin/bash
echo "adjusting I2C clock phase by $1 steps"
for (( c=1; c<=$1; c++ ))
do
	./devreg.sh ps_en_in 1
	./devreg.sh ps_en_in 0
done
