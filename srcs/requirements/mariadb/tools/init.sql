-- Create a database
CREATE DATABASE mydatabase;

-- Create users and grant privileges
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password1';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'user1'@'localhost';

CREATE USER 'user2'@'localhost' IDENTIFIED BY 'password2';
GRANT SELECT, INSERT, UPDATE ON mydatabase.* TO 'user2'@'localhost';

