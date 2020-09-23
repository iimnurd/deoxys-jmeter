#!/bin/sh
echo "Execution is being started"
echo "**************************"
vus=( 1 5 10 )
for u in "${vus[@]}"
do
    echo "Start to Performance with $u vus "
    jmeter -Jthreads=$u $@
    sleep 10
done
echo "**************************"
echo "Execution has been completed, please check the artifacts to download the results."