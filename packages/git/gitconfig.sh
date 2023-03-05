#!/bin/sh

echo "Configuring Git user information"
echo "What name do you want to use in GIT user.name?"
echo "For example, mine will be \"John Doe\""
read git_config_user_name
git config --global user.name "$git_config_user_name"

echo "What email do you want to use in GIT user.email?"
echo "For example, mine will be \"doe.john@gmail.com\""
read git_config_user_email
git config --global user.email $git_config_user_email
curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/ssh-keygen.sh | sh

echo "Git user information configured successfully!"
