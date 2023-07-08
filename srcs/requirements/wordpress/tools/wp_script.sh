#!/bin/sh

# mkdir /var/www/
# mkdir /var/www/html

# cp /wordpress/wp-config-sample.php /var/www/html/wp-config.php

# wp core install --title="idk" --admin_name="$DB_USER1" --admin_password="$DB_PASSWORD1" --admin_email="flouta@example.com"

# Configure WordPress to connect to the MariaDB database
wp core config --dbhost="$DATA_HOST" --dbname="$DB_NAME" --dbuser="$DB_USER1"  --dbpass="$DB_PASSWORD1"


# Modifies the PHP-FPM configuration file to change the listen directive to use port 9000 instead of a Unix socket
sed -i 's|listen = /run/php/php8.1-fpm.sock|listen = 9000|g' /etc/php81/php-fpm.d/www.conf
sed -i 's|listen = 127.0.0.1:9000|listen = 0.0.0.0:9000|g' /etc/php81/php-fpm.d/www.conf


exec "$@"
