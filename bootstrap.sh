#!/bin/bash

MYSQL_PASS='JUxdH8ZNQmPLYtb'
D=`dirname $0`

apt-get update
apt-get install -y apache2
apt-get install -y mysql-server
apt-get install -y php libapache2-mod-php php-mcrypt php-mysql

debconf-set-selections <<< "mysql-server mysql-server/root_password password $MYSQL_PASS"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $MYSQL_PASS"

cat << EOF > /etc/apache2/mods-enabled/dir.conf
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>
EOF
rm /var/www/html/index.html

cp -r $D/html/* /var/www/html/
chown -R www-data:www-data /var/www/html/*

mysql -u root -p$MYSQL_PASS < $D/bootstrap.sql

systemctl restart apache2
