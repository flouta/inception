FROM alpine:3.17

RUN apk update &&  apk add mariadb mariadb-client

RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql

COPY conf/my.cnf /etc/mysql/my.cnf

EXPOSE 3306

CMD ["mysqld"]
