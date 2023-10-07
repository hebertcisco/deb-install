#!/bin/sh

if ! command -v php >/dev/null; then
    echo 'installing php8.2'
    sudo apt update && sudo apt -y upgrade
    sudo apt autoremove
    sudo apt install -y lsb-release gnupg2 ca-certificates apt-transport-https software-properties-common
    sudo add-apt-repository ppa:ondrej/php
    sudo apt update
    sudo apt install -y php8.2
    sudo apt install -y php8.2-{bcmath,fpm,xml,mysql,zip,intl,ldap,gd,cli,bz2,curl,mbstring,pgsql,opcache,soap,cgi,redis}
    php --version
else
    echo 'php8.2 is already installed'
fi

if ! command -v composer >/dev/null; then
    echo 'installing composer'
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"
    sudo mv composer.phar /usr/local/bin/composer
else
    echo 'composer are already installed'
fi
