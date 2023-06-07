# Define the default target
.DEFAULT_GOAL := up

COMPOSE := docker-compose

COMPOSE_FILE := srcs/docker-compose.yml


.PHONY: up
up:
	@echo "\033[1;32mCreating and Starting the Docker Compose services\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) up -d --build

.PHONY: down
down:
	@echo "\033[31mStoping and removing the Docker Compose services\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) down

.PHONY: start
start:
	@echo "\033[34mstarting the Docker Compose services\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) start

.PHONY: stop
stop:
	@echo "\033[33mstoping the Docker Compose services\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) stop

.PHONY: restart
restart:
	@echo "\033[35mrestarting the Docker Compose services\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) stop
	$(COMPOSE) -f $(COMPOSE_FILE) start

.PHONY: logs
logs:
	@echo "\033[38;5;208mShow the logs of the Docker Compose services\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) logs -f

.PHONY: clean
clean:
	@echo "\033[1;32mCleaning up ...\033[0m"
	$(COMPOSE) -f $(COMPOSE_FILE) down --volumes --rmi all --remove-orphans
