#!/bin/sh

# # Configure WordPress to connect to the MariaDB database
wp core config --dbhost=mariadb --dbname="$DB_NAME" --dbuser="$DB_USER1"  --dbpass="$DB_PASSWORD1" 

# Modifies the PHP-FPM configuration file to change the listen directive to use port 9000 instead of a Unix socket
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

exec "$@"
