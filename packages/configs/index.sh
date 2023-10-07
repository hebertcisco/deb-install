#!/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/update.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/dracula.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/ssh-keygen.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/workspaces.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/xclip.sh)"
