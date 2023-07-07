CREATE DATABASE ${DB_NAME};
CREATE USER '${DB_USER1}'@'localhost' IDENTIFIED BY '${DB_PASSWORD1}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER1}'@'localhost';
CREATE USER '${DB_USER2}'@'localhost' IDENTIFIED BY '${DB_PASSWORD2}';
GRANT SELECT, INSERT, UPDATE ON ${DB_NAME}.* TO '${DB_USER2}'@'localhost';
FLUSH PRIVILEGES;
