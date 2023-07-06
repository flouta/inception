#!/bin/sh

RUN wp core config --dbhost=mariadb --dbname=mydatabase --dbuser=user1 --dbpass=password1 << PHP

PHP

php-fpm7 -F

