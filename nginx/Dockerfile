FROM nginx:alpine

COPY ./conf/nginx.conf /usr/local/nginx/conf.d/nginx.conf
COPY ./cert/fullchain.pem /etc/nginx/fullchain.pem
COPY ./cert/privkey.pem /etc/nginx/privkey.pem
COPY ./nginx-index.html /usr/share/nginx/html

RUN mkdir /usr/local/test-log
COPY ./test-log/400.log /usr/local/test-log
COPY ./test-log/500.log /usr/local/test-log
COPY ./test-log/cat_log.log /usr/local/test-log
COPY ./test-log/clear_cat_log.log /usr/local/test-log
COPY ./test-log/test_log.sh /usr/local/test-log
COPY ./test-log/test_log.txt /usr/local/test-log
CMD ./test-log/test_log.sh
# CMD ["nginx-debug", "-g", "daemon off;"]
# CMD ["nginx", "-g", "daemon off;"]
