docker_nginx = simple_my_prooject_nginx_1
docker_php = simple_my_prooject_php_1

start:
	@sudo docker-compose up -d

stop:
	@sudo docker-compose stop

show_container:
	@sudo docker ps -a

connect_nginx:
	@sudo docker exec -it $(docker_nginx)

connect_php:
        @sudo docker exec -it $(docker_php)

