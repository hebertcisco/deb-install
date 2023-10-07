#!/bin/sh

if ! command -v apache2 >/dev/null; then
    echo 'installing apache2'
    sudo apt-get update
    sudo apt-get install apache2
else
    echo 'apache2 is already installed'
fi

if ! command -v php >/dev/null; then
    echo 'installing php and required extensions'
    sudo apt-get install php libapache2-mod-php php-soap php-xml php-curl php-opcache php-gd php-sqlite3 php-mbstring
else
    echo 'php and required extensions are already installed'
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
