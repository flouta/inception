.DEFAULT_GOAL := up

COMPOSE := docker-compose

COMPOSE_FILE := srcs/docker-compose.yml

up:
	@echo "\033[1;32mCreating and Starting the Docker Compose services\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) up -d --build

down:
	@echo "\033[31mStoping and removing the Docker Compose services\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) down

start:
	@echo "\033[34mstarting the Docker Compose services\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) start

stop:
	@echo "\033[33mstoping the Docker Compose services\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) stop

restart:
	@echo "\033[35mrestarting the Docker Compose services\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) stop
	$(COMPOSE) -f $(COMPOSE_FILE) start

clean:
	@echo "\033[1;32mCleaning up ...\033[0m"
	docker rm -f $$(docker ps -aq)
	docker rmi -f $$(docker images -aq)
	docker volume rm -f $$(docker volume ls -q)
	docker network rm $$(docker network ls -q)

.PHONY: up down start stop restart clean