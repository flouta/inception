FROM alpine:3.17

RUN apk update &&  apk add mariadb mariadb-client

COPY conf/my.cnf /etc/mysql/my.cnf

RUN mariadb-install-db

RUN mkdir -p /run/mysqld /tools

COPY ./tools/init.sql /tools/init.sql

EXPOSE 3306

CMD ["mysqld"]
