#!/bin/bash


NGINX_LOG=/tmp


while true;
do
SIZE=$(stat -c%s $NGINX_LOG/cat_log.log) #work
DC=$(date)
if [[ $SIZE -lt 500000 ]]; then
        cat $NGINX_LOG/access.log $NGINX_LOG/error.log > $NGINX_LOG/cat_log.log;
#        cat /bash/access.log /bash/error.log > $NGINX_LOG/cat_log.log;
        awk '/40*/' $NGINX_LOG/cat_log.log >>$NGINX_LOG/400.log;
        awk '/50*/' $NGINX_LOG/cat_log.log >>$NGINX_LOG/500.log;
	else
	cat /dev/null > $NGINX_LOG/cat_log.log
	echo "Clear file cat_log.txt $DC" >> $NGINX_LOG/clear_cat_log.log;

	mpstat | tail -f | sed -n 4p | awk '{print $3}' > /var/www/html/test_cpu.txt

fi
sleep 5;
done
