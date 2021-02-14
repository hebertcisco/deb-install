#!/bin/sh
## By Hebert F. Barros 2021
## Removing any apt ## crashes
echo "What name do you want to use in GIT user.name?"
echo "For example, mine will be \"John Doe\""
read git_config_user_name
git config --global user.name "$git_config_user_name"
clear

echo "What email do you want to use in GIT user.email?"
echo "For example, mine will be \"doe.john@gmail.com\""
read git_config_user_email
git config --global user.email $git_config_user_email
clear
