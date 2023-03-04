#!/bin/sh

echo 'installing vim'
sudo apt install vim -y

echo "Can I set VIM as your default GIT editor for you? (y/n)"
read git_core_editor_to_vim
if echo "$git_core_editor_to_vim" | grep -iq "^y"; then
	git config --global core.editor vim
else
	echo "Okay, no problem. :) Let's move on!"
fi
