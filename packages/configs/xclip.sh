#!/bin/sh

if
    ! command -v xclip &
    >/dev/null
then
    echo 'Installing tool to handle clipboard via CLI...'
    sudo apt-get install xclip -y
    echo 'Tool installed.'
else
    echo 'Tool to handle clipboard via CLI is already installed.'
fi

if ! grep -q "alias pbcopy='xclip -selection clipboard'" ~/.bashrc; then
    echo "alias pbcopy='xclip -selection clipboard'" >>~/.bashrc
fi

if ! grep -q "alias pbpaste='xclip -selection clipboard -o'" ~/.bashrc; then
    echo "alias pbpaste='xclip -selection clipboard -o'" >>~/.bashrc
fi

source ~/.bashrc
