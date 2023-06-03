CREATE USER 'admin'@'%' IDENTIFIED BY 'admin_password';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;

CREATE USER 'regular_user'@'%' IDENTIFIED BY 'regular_password';
GRANT SELECT, INSERT, UPDATE, DELETE ON database_name.* TO 'regular_user'@'%';

