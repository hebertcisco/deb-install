#!/bin/sh

if
    ! command -v curl &
    >/dev/null
then
    echo 'Installing Curl...'
    sudo apt install curl -y
    echo 'Curl installed.'
else
    echo 'Curl is already installed.'
fi

if
    ! command -v snap &
    >/dev/null
then
    echo 'Installing Snapd...'
    sudo apt-get install snapd -y
    echo 'Snapd installed.'
else
    echo 'Snapd is already installed.'
fi

if
    ! command -v git &
    >/dev/null
then
    echo 'Installing Git...'
    sudo apt install git -y
    echo 'Git installed.'
else
    echo 'Git is already installed.'
fi
