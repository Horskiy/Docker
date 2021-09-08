FROM nginx:alpine

# /opt/docker/my_prooject/nginx
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./index.html /var/www/html/index.html
COPY ./cert/fullchain.pem /etc/ssl/certs/fullchain.pem
COPY ./cert/privkey.pem /etc/ssl/certs/privkey.pem

#COPY ./400.log /tmp/400.log
#COPY ./500.log /tmp/500.log
#COPY ./cat_log.log /tmp/cat_log.log
#COPY ./clear_cat_log.log /tmp/clear_cat_log.log
#COPY ./test_log.sh /tmp/test_log.sh
#COPY ./test_log.txt /var/log/nginx/test_log.txt
#COPY ./test_cpu.txt /var/www/html/test_cpu.txt

#CMD ["/bin/sh", "tmp/test_log.sh"]



#VOLUME /hostpipe
#COPY ./test_cpu.sh /test_cpu.sh
# RUN chmod + x /test_cpu.sh 
#ENTRYPOINT ["/test_cpu.sh"] 
# WORKDIR /var/log/nginx
# VOLUME ["/var/log/nginx"]

#My
#COPY ./400.log /var/log/nginx/400.log
#COPY ./500.log /var/log/nginx/500.log
#COPY ./cat_log.log /var/log/nginx/cat_log.log
#COPY ./clear_cat_log.log /var/log/nginx/clear_cat_log.log
#COPY ./test_log.sh /var/log/nginx/test_log.sh
#COPY ./test_log.txt /var/log/nginx/test_log.txt

#RUN apk add --no-cache bash
#COPY /test_log.sh /var/log/nginx/test_log.sh
#RUN chmod +x /var/log/nginx/test_log.sh
# ENTRYPOINT /var/log/nginx/test_log.sh; bin/bash
# CMD ["/opt/docker/my_prooject/nginx/test_log.sh"]
#/var/log/nginx/test_log.sh"]
#RUN bash -c "/test_log.sh"
#RUN /test_log.sh
