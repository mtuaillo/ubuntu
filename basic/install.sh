#!/usr/bin/env bash

set -e

apt-get install -y python-software-properties wget

# Nginx
apt-get install nginx
sed -i 's/user www-data/user maat8/g' /etc/nginx/nginx.conf

# PHP 5.6
add-apt-repository -y ppa:ondrej/php5-5.6
apt-get update
apt-get install -y php5-dev php5-fpm

# Xdebug
pecl install xdebug

# MySQL 5.6
apt-get install mysql-server-5.6 php5-mysql

# PHPMyAdmin
apt-get install phpmyadmin

# Composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin

# PHPUnit
wget https://phar.phpunit.de/phpunit.phar -O /usr/local/bin/phpunit
chmod a+x /usr/local/bin/phpunit

# PHP CS
wget https://github.com/squizlabs/PHP_CodeSniffer/releases/download/2.0.0RC1/phpcs.phar -O /usr/local/bin/phpcs
chmod a+x /usr/local/bin/phpcs

# PHP CS Fixer
wget http://get.sensiolabs.org/php-cs-fixer.phar -O /usr/local/bin/php-cs-fixer
chmod a+x /usr/local/bin/php-cs-fixer

# Git
apt-get install -y subversion git
mv config/gitconfig ~/.gitconfig
cat config/bashrc >> ~/.bashrc
git config --global user.name maat8
git config --global user.email tuaillon.mathieu@gmail.com

# MongoDB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' |tee /etc/apt/sources.list.d/mongodb.list
apt-get update
apt-get install -y mongodb-org
apt-get install -y php5-mongo
apt-get install -y robomongo

# NPM
apt-get install -y npm
npm install -g bower less uglify-js uglifycss

# Restart
service php5-fpm restart
service mysql restart
service nginx restart

# Clean up
apt-get autoremove -y
