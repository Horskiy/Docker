#!/bin/bash


while true

do mpstat | tail -f | sed -n 4p | awk '{print $3}' > /var/www/html/test_cpu.txt

sleep 10;

done
