#!/bin/sh

main() {

  bash ./packages/configs/update.bash

  sh ./packages/basics/basics.sh
  sh ./packages/configs/dracula.sh
  sh ./packages/vim/set_vim.sh
  sh ./packages/configs/ssh-keygen.sh

  sh ./packages/configs/workspaces.sh
  sh ./packages/zsh/set_z.sh
  sh ./packages/configs/xclip.sh

  echo 'installing pip'
  curl -fsSL http://bit.ly/pip-install-sh | sh
  rm -rf get-pip.py
  clear

  curl -fsSL http://bit.ly/code-sh | sh

  sh ./packages/php/php.sh

  echo 'installing chrome'
  curl -fsSL http://bit.ly/chrome-sh | sh

  sh ./packages/nvm/nvm.sh

  echo 'installing rustup'
  curl https://sh.rustup.rs -sSf | sh

  echo 'installing deno'
  curl -fsSL https://deno.land/x/install/install.sh | sh

  echo 'installing terminator'
  sudo apt-get update
  sudo apt-get install terminator -y

  sh ./packages/configs/dracula.sh
  sh ./packages/docker/docker.sh

  sh ./packages/aws/aws-cli.sh

  sh ./packages/dbeaver/dbeaver.sh

  sh ./packages/docker/docker.sh -c Current
  sh ./packages/docker/docker.sh -c Current --runtime aspnetcore
}

main "$1"
