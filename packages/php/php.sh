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
