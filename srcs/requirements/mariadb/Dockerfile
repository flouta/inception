FROM alpine:3.17

RUN apk update && apk add mariadb mariadb-client

COPY my.cnf /etc/mysql/my.cnf
COPY init-script.sh /docker-entrypoint-initdb.d/init-script.sh
RUN chmod +x /docker-entrypoint-initdb.d/init-script.sh

