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
sudo apt-get install screen -y
sudo apt-get install nano
sudo apt-get install curl 
sudo apt-get install git -y
#
sudo apt-get update
sudo apt update
sudo apt upgrade -y
sudo apt-get install -y zip unzip
#
sudo apt install apache2 -y
#
sudo apt-get install ufw
sudo ufw app list
sudo ufw app info "Apache Full"
sudo ufw allow in "Apache Full"
#
sudo apt update
sudo apt-get update
sudo apt install mysql-server -y
sudo mysql_secure_installation
#
sudo apt update
#
sudo apt-get install php7.2 -y
sudo apt install php7.2 php7.2-cli php7.2-gd php7.2-mysql php7.2-pdo php7.2-mbstring php7.2-tokenizer php7.2-bcmath php7.2-xml php7.2-fpm php7.2-curl php7.2-zip tar redis-server sed composer 
systemctl restart apache2 
#
echo "Install and Secure phpMyAdmin"
sudo apt-get update
sudo apt-get install phpmyadmin php7.2-mbstring php-gettext
sudo apt-get update
#
a2enmod rewrite
service apache2 restart 
#
clear
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
