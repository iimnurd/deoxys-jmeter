#!/bin/bash 
echo "Execution is being started"
echo "**************************"
vus=( 4 )
for u in "${vus[@]}"
do
    echo "Start to Performance with $u vus "
    mkdir report_$u
    mkdir report_$u/html
    jmeter -Jthreads=$u -l report/$u.csv -j report/$u.log $@
    sleep 10
done
echo "**************************"
echo "Execution has been completed, please check the artifacts to download the results."
