USE mysql;

-- Create the user and grant privileges
CREATE USER 'mysql'@'localhost' IDENTIFIED BY 'password';

-- Grant all privileges
GRANT ALL PRIVILEGES ON *.* TO 'mysql'@'localhost';

GRANT ALL PRIVILEGES ON *.* TO 'mysql'@'%';

-- Grant ability to grant privileges
GRANT GRANT OPTION ON *.* TO 'mysql'@'localhost';

-- Flush privileges to apply changes
FLUSH PRIVILEGES;