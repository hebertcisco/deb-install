#!/bin/sh
## By Hebert F. Barros 2021
## Removing any apt ## crashes
echo 'installing zsh'
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh