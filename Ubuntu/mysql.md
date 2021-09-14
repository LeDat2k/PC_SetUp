https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04

sudo apt update
sudo apt install -y mysql-server

sudo mysql_secure_installation
<!-- root pass: LinD2018 -->
<!-- choose pass strong type -->

<!-- mysql status -->
sudo systemctl status mysql.service
sudo systemctl start mysql.service
sudo systemctl stop mysql.service

sudo service mysql restart

<!-- run mysql CLI -->
sudo mysql

<!-- CREATE USER 'username'@'host' IDENTIFIED WITH authentication_plugin BY '123456'; -->
CREATE USER 'dat'@'localhost' IDENTIFIED BY 'LinD2018';

GRANT PRIVILEGE ON test.* TO 'dat'@'localhost';

GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'dat'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;

<!-- access dat account -->
mysql -u dat -p

<!-- fix mysql -u root -p accessd denied: remove pass OR CREATE USER(recommend) -->
https://stackoverflow.com/questions/39281594/error-1698-28000-access-denied-for-user-rootlocalhost

GRANT ALL PRIVILEGES ON *.* TO 'YOUR_SYSTEM_USER'@'localhost';

UPDATE user SET plugin='auth_socket' WHERE User='YOUR_SYSTEM_USER';
FLUSH PRIVILEGES;