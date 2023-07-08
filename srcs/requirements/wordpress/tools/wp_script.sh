#!/bin/sh

#cp /wordpress/wp-config-sample.php /wordpress/wp-config.php

# Configure WordPress to connect to the MariaDB database
 wp core config --dbname="${DATABASE_NAME}" \
     --dbuser="${DB_USER}" \
     --dbpass="${DB_USER_PASS}" \
     --dbhost="${DATABASE_HOST}"

#sed -i "s/DB_NAME.*/DB_NAME', '${DATABASE_NAME}');/" /wordpress/wp-config.php
#sed -i "s/DB_USER.*/DB_USER', '${DB_USER}');/" /wordpress/wp-config.php
#sed -i "s/DB_PASSWORD.*/DB_PASSWORD', '${DB_USER_PASS}');/" /wordpress/wp-config.php
#sed -i "s/DB_HOST.*/DB_HOST', '${DATABASE_HOST}');/" /wordpress/wp-config.php

# Install WordPress
wp core install --url="${WP_URL}" \
    --title="${WP_TITLE}" \
    --admin_user="${ADMIN_USER}" \
    --admin_password="${ADMIN_USER_PASS}" \
    --admin_email="${ADMIN_USER_EMAIL}" \
    --skip-email

# # Create new user in WordPress
# wp user create "${WP_USER}" \
#     --user_pass="${WP_USER_PASSWORD}" \
#     --role=author

# Modifies the PHP-FPM configuration file to change the listen directive to use port 9000 instead of a Unix socket
sed -i 's|listen = /run/php/php8.1-fpm.sock|listen = 9000|g' /etc/php81/php-fpm.d/www.conf
sed -i 's|listen = 127.0.0.1:9000|listen = 0.0.0.0:9000|g' /etc/php81/php-fpm.d/www.conf

exec "$@"


