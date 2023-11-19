USE mysql;

-- Create the user and grant privileges
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';

-- Grant all privileges
GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost';

GRANT ALL PRIVILEGES ON *.* TO 'user'@'%';

-- Grant ability to grant privileges
GRANT GRANT OPTION ON *.* TO 'user'@'localhost';

-- Flush privileges to apply changes
FLUSH PRIVILEGES;