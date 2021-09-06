#!/bin/bash

while true;
do
SIZE=$(stat -c%s /opt/docker/my_prooject/nginx/cat_log.log) #work
DC=$(date)
if [[ $SIZE -lt 500000 ]]; then
	cat /opt/docker/my_prooject/nginx/access.log /opt/docker/my_prooject/nginx/error.log > /opt/docker/my_prooject/nginx/cat_log.log;
        awk '/4**/' /opt/docker/my_prooject/nginx/cat_log.log >>/opt/docker/my_prooject/nginx/400.log;
        awk '/5**/' /opt/docker/my_prooject/nginx/cat_log.log >>/opt/docker/my_prooject/nginx/500.log;
	else
	cat /dev/null > /opt/docker/my_prooject/nginx/cat_log.log
	echo "Clear file cat_log.txt $DC" >> /opt/docker/my_prooject/nginx/clear_cat_log.log;

	mpstat | tail -f | sed -n 4p | awk '{print $3}' > /var/www/html/test_cpu.txt
fi
sleep 5;
done
