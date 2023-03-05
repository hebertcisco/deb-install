#!/bin/sh

check_if_installed() {
  if [ -x "$(command -v $1)" ]; then
    echo "$1 is already installed."
    return 1
  else
    return 0
  fi
}

main() {
  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/update.bash | sh

  check_if_installed apt && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/basics/basics.sh | sh

  check_if_installed terminator && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/dracula.sh | sh

  check_if_installed vim && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/vim/set_vim.sh | sh

  curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/workspaces.sh | sh

  check_if_installed zsh && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/zsh/set_z.sh | sh

  check_if_installed xclip && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/configs/xclip.sh | sh

  check_if_installed pip && curl -fsSL http://bit.ly/pip-install-sh | sh && rm -rf get-pip.py

  check_if_installed code && curl -fsSL http://bit.ly/code-sh | sh

  check_if_installed php && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/php/php.sh | sh

  check_if_installed google-chrome && curl -fsSL http://bit.ly/chrome-sh | sh

  check_if_installed nvm && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/nvm/nvm.sh | sh

  check_if_installed cargo && curl https://sh.rustup.rs -sSf | sh

  check_if_installed deno && curl -fsSL https://deno.land/x/install/install.sh | sh

  check_if_installed terminator && sudo apt-get update && sudo apt-get install terminator -y

  check_if_installed docker && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/docker/docker.sh | sh

  check_if_installed aws && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/aws/aws-cli.sh | sh

  check_if_installed dbeaver && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/dbeaver/dbeaver.sh | sh

  check_if_installed dotnet && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/dotnet/dotnet-install.sh | bash -s -- -c Current

  check_if_installed aspnetcore && curl -fsSL https://raw.githubusercontent.com/hebertcisco/deb-install/master/packages/dotnet/dotnet-install.sh -c Current --runtime aspnetcore | sh
}

main "$1"
