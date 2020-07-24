#!/bin/bash
#
clear
echo ""
echo "******************************************"
echo "*   Scar Naruto UBUNTU 18.10 Script      *"
echo "******************************************"
echo "*       this script well install         *"
echo "*      LAMP server and phpMyAdmin        *"
echo "*     With node js and secure your       *"
echo "*      Domain with Let's Encrypt         *"
echo "******************************************"
echo ""
#
read -p 'Set Web Domain (Example: 127.0.0.1 [Not trailing slash!]) ' domain
#
sudo apt update
sudo apt upgrade -y
sudo apt-get update 
sudo apt-get upgrade -y
sudo apt dist-upgrade
sudo apt autoremove -y
sudo apt-get install default-jdk -y
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:ondrej/php -y
sudo add-apt-repository ppa:phpmyadmin/ppa -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo add-apt-repository -y ppa:chris-lea/redis-server
#
sudo apt update
sudo apt upgrade -y
sudo apt-get update 
sudo apt-get upgrade -y
#
echo "=================================="
echo " install some tools to help you more :) "
echo "=================================="
sudo apt-get install -y screen nano curl git zip unzip ufw certbot python3-certbot-apache
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo apt-get install -y python3.7 libmysqlclient-dev python3-dev python3-pip 
python3 get-pip.py
python3 -m pip install Django
#
echo "=================================="
echo "installing Apache2"
echo "=================================="
sudo apt install apache2
#
sudo systemctl stop apache2.service
sudo systemctl start apache2.service
sudo systemctl enable apache2.service
#
sudo ufw app list
sudo ufw allow in 80
sudo ufw allow in 443
#
echo "=================================="
echo "installing mySQL :"
echo "=================================="
sudo apt-get install mariadb-server mariadb-client
# if Ubuntu 18.04+
sudo systemctl stop mariadb.service
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service
# if Ubuntu 16.04+
sudo systemctl stop mysql.service
sudo systemctl start mysql.service
sudo systemctl enable mysql.service
#
sudo mysql_secure_installation
#
sudo systemctl restart mysql.service
#
sudo apt update
sudo apt upgrade -y
sudo apt-get update 
sudo apt-get upgrade -y
#
echo "=================================="
echo "installing PHP 7.4 + modules"
echo "=================================="
sudo apt install -y php7.4 libapache2-mod-php7.4 php7.4-common php7.4-mbstring php7.4-xmlrpc php7.4-soap php7.4-gd php7.4-xml php7.4-intl php7.4-mysql php7.4-cli php7.4-zip php7.4-curl php7.4-pdo php7.4-tokenizer php7.4-bcmath php7.4-fpm php7.4-imagick php7.4-tidy tar redis-server sed composer
sudo systemctl restart apache2.service
#
echo "=================================="
echo "Install and Secure phpMyAdmin"
echo "=================================="
sudo apt update
sudo apt upgrade -y
sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get install -y phpmyadmin php7.4-gettext
#
echo "=================================="
echo "Update php.ini file "
echo "=================================="
wget https://raw.githubusercontent.com/abdomuftah/Ubuntu-Script/master/php.ini && mv -f php.ini /etc/php/7.4/apache2/
#
sudo a2enmod rewrite
sudo systemctl restart apache2.service
systemctl restart apache2
#
add-apt-repository -r ppa:ondrej/php -y
add-apt-repository -r ppa:phpmyadmin/ppa -y
add-apt-repository -r ppa:webupd8team/java -y
#
sudo apt update
sudo apt upgrade -y
sudo apt-get update 
sudo apt-get upgrade -y
#
echo "=================================="
echo "Installing nodeJS"
echo "=================================="
sudo apt-get install -y gcc g++ make nodejs npm 
#
sudo apt update -y && sudo apt upgrade -y
sudo apt-get update && sudo apt-get upgrade -y
sudo systemctl restart apache2.service
#
clear
#
echo "your PHP Ver is :"
php -v 
#
echo ""
echo "You Can Thank Me On :) "
echo "https://twitter.com/Scar_Naruto"
#
exit
