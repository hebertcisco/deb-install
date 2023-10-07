#!/bin/sh

type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

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
