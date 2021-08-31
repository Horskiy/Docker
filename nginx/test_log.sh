#!/bin/bash

while true;
do
SIZE=$(stat -c%s /var/log/nginx/cat_log.log) #work
DC=$(date)
if [[ $SIZE -lt 500000 ]]; then 
	cat /var/log/nginx/access.log /var/log/nginx/error.log > /var/log/nginx/cat_log.log;
        awk '/404/' /var/log/nginx/cat_log.txt >>/var/log/nginx/400.log;
        awk '/200/' /var/log/nginx/cat_log.txt >>/var/log/nginx/500.log;
	else
	cat /dev/null > /var/log/nginx/cat_log.log
	echo "Clear file cat_log.txt $DC" >> /var/log/nginx/clear_cat_log.log;
fi
sleep 5;
done
