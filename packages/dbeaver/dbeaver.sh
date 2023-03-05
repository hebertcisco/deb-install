#!/bin/sh

VERSION="6.0.0"
URL="https://dbeaver.io/files/6.0.0/dbeaver-ce_6.0.0_amd64.deb"

if dpkg -s dbeaver-ce | grep -q "^Status: install ok installed"; then
    echo "DBeaver $VERSION is already installed."
else
    echo "Installing DBeaver $VERSION..."
    wget -c $URL
    sudo dpkg -i dbeaver-ce_$VERSION"_amd64.deb"
    sudo apt-get install -f -y
    echo "DBeaver $VERSION installed."
fi
