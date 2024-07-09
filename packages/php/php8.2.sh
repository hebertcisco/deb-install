#!/bin/sh

if ! command -v php >/dev/null; then
    echo 'installing php8.2'
    sudo apt update && sudo apt -y upgrade
    sudo apt autoremove
    sudo apt install -y lsb-release gnupg2 ca-certificates apt-transport-https software-properties-common
    sudo add-apt-repository ppa:ondrej/php
    sudo apt update
    sudo apt install -y php8.2
    sudo apt install -y php8.2-{bcmath,fpm,xml,mysql,zip,intl,ldap,gd,cli,bz2,curl,mbstring,pgsql,opcache,soap,cgi,redis,sqlite3,simplexml,dom,curl,xml}
    php --version
else
    echo 'php8.2 is already installed'
fi

if ! command -v composer >/dev/null; then
    echo 'installing composer'
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"
    sudo mv composer.phar /usr/local/bin/composer
else
    echo 'composer are already installed'
fi
