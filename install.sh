#!/bin/sh

main() {
  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/update.bash | sh

  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/basics/basics.sh | sh
  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/dracula.sh | sh
  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/vim/set_vim.sh | sh
  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/ssh-keygen.sh | sh

  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/workspaces.sh | sh
  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/zsh/set_z.sh | sh
  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/xclip.sh | sh

  echo 'installing pip'
  curl -fsSL http://bit.ly/pip-install-sh | sh
  rm -rf get-pip.py
  clear

  curl -fsSL http://bit.ly/code-sh | sh

  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/php/php.sh | sh

  echo 'installing chrome'
  curl -fsSL http://bit.ly/chrome-sh | sh

  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/nvm/nvm.sh | sh

  echo 'installing rustup'
  curl https://sh.rustup.rs -sSf | sh

  echo 'installing deno'
  curl -fsSL https://deno.land/x/install/install.sh | sh

  echo 'installing terminator'
  sudo apt-get update
  sudo apt-get install terminator -y

  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/dracula.sh | sh
  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/docker/docker.sh | sh

  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/aws/aws-cli.sh | sh

  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/dbeaver/dbeaver.sh | sh

  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/docker/docker.sh -c Current | sh
  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/docker/docker.sh -c Current --runtime aspnetcore | sh

}

main "$1"
