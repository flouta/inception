FROM alpine:3.17

WORKDIR /wordpress

RUN apk add php php-phar php-openssl php-fpm mysql-client

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN wp core download

RUN mkdir -p ./tools

COPY tools/wp_script.sh /tools/wp_script.sh

RUN chmod +x /tools/wp_script.sh

ENTRYPOINT ["/tools/wp_script.sh"]

