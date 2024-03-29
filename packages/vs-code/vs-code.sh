#!/bin/sh

if [ -x "$(command -v code)" ]; then
    echo 'VS Code is already installed.'
else
    echo 'Installing VS Code'
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >microsoft.gpg
    sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
    sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt-get install apt-transport-https -y
    sudo apt-get update
    sudo apt-get install code -y
    echo 'VS Code has been installed.'
fi
