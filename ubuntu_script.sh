#!/bin/bash
#
echo ""
echo "******************************************"
echo "*   Scar Naruto UBUNTU 16.04 Script      *"
echo "******************************************"
echo "*       this script well install         *"
echo "*      LAMP server and phpMyAdmin        *"
echo "******************************************"
echo ""
#
read -p 'Set MySQL Password: ' mysql_password
read -p 'Set Web Directory (Example: /var/www/html) ' directory
read -p 'Set Web Domain (Example: 127.0.0.1 [Not trailing slash!]) ' domain
#
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install default-jdk -y
sudo apt-get install software-properties-common -y
sudo apt-get install python-software-properties -y
sudo apt-add-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:ondrej/php -y
sudo add-apt-repository -y ppa:chris-lea/redis-server
sudo apt-get install screen
sudo apt-get install nano
sudo apt-get install curl
sudo apt-get install git -y
#
sudo apt-get update
sudo apt update -y
sudo apt-get install -y zip unzip
#
sudo apt install apache2 -y

sudo apt-get install ufw
sudo apt-get install -y firewalld
firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --permanent --add-port=21/tcp
firewall-cmd --permanent --add-port=40000/tcp
sudo ufw app info "Apache Full"
sudo ufw allow in "Apache Full"
firewall-cmd --reload
#
sudo apt update
sudo apt install mysql-server -y
sudo mysql_secure_installation
#
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt update
sudo curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash
#
sudo apt-get install php7.2 
sudo apt install php7.2 php7.2-cli php7.2-gd php7.2-mysql php7.2-pdo php7.2-mbstring php7.2-tokenizer php7.2-bcmath php7.2-xml php7.2-fpm php7.2-curl php7.2-zip mariadb-server tar unzip redis-server sed composer 
a2enmod php7.2
systemctl restart apache2
#
echo "Install and Secure phpMyAdmin"
sudo apt-get update
sudo apt-get install phpmyadmin php7.2-mbstring php-gettext
sudo apt-get update
#
sed -i 's/Require ip 127.0.0.1/Require all granted/g' /etc/apache2/apache2.conf
sed -i 's/Require ip ::1/#Require ip ::1/g' /etc/apache2/apache2.conf
sed -i 's/Deny from All/Allow from All/g' /etc/apache2/apache2.conf
sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf
a2enmod rewrite
service apache2 restart
#
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
#
echo "Secureing with Let's Encrypt"
sudo certbot --apache -d $domain
#
sudo certbot renew --dry-run
#
echo "your PHP Ver is :"
php -v 
#
echo "your MSQL Ver is :"
mysqladmin -u root -p version 
echo ""
echo "thanks for installing this script !!"
echo "https://twitter.com/scar_naruto"
#
exit