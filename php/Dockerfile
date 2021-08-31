FROM php:7.2.2-fpm-alpine

WORKDIR "/var/www/html"
COPY ./public/info.php /var/www/html

COPY ./test_cpu.sh /var/www/html/test_cpu.sh
COPY ./test_cpu.txt /var/www/html/test_cpu.txt
# RUN chmod + x /test_cpu.sh 
# WORKDIR /

RUN chmod 777 /var/www/html/test_cpu.sh
CMD ["/var/www/html/test_cpu.sh"]


#ENTRYPOINT ["/test_cpu.sh"] 
