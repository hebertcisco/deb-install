#!/bin/sh

if
    ! command -v aws &
    >/dev/null
then
    echo 'Installing AWS CLI...'
    sudo apt-get install awscli -y
    echo 'AWS CLI installed.'
else
    echo 'AWS CLI is already installed.'
fi

if
    ! command -v session-manager-plugin &
    >/dev/null
then
    echo 'Installing Session Manager Plugin...'
    curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
    sudo dpkg -i session-manager-plugin.deb
    echo 'Session Manager Plugin installed.'
else
    echo 'Session Manager Plugin is already installed.'
fi

aws --version
session-manager-plugin --version
