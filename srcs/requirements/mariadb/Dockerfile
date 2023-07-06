FROM alpine:3.17

RUN apk update &&  apk add mariadb mariadb-client && apk add gettext

#copy mariadb config file
COPY conf/my.cnf /etc/mysql/my.cnf

RUN mariadb-install-db

RUN mkdir -p /run/mysqld /tools

COPY ./tools /tools

RUN chmod +x /tools/init.sh

EXPOSE 3306

ENTRYPOINT ["/tools/init.sh"]

CMD ["mysqld"]
