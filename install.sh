#!/bin/sh
## By Hebert F. Barros 2021
## Removing any apt ## crashes

main() {

  sudo rm /var/lib/dpkg/lock-frontend
  sudo rm /var/cache/apt/archives/lock

  sudo apt-get update

  echo 'installing curl'
  sudo apt install curl -y

  echo 'installing snapd'
  sudo apt-get install snapd -y

  echo 'installing git'
  sudo apt install git -y

  sh gitconfig

  sh set_vim.sh

  sh ssh-keygen.sh

  echo 'enabling workspaces for both screens'
  gsettings set org.gnome.mutter workspaces-only-on-primary false

  sh set_z.sh

  echo 'installing tool to handle clipboard via CLI'
  sudo apt-get install xclip -y

  export alias pbcopy='xclip -selection clipboard'
  export alias pbpaste='xclip -selection clipboard -o'
  source ~/.zshrc

  echo 'installing vim'
  sudo apt install vim -y
  clear

  echo 'installing pip'
  curl -fsSL http://bit.ly/pip-install-sh | sh
  rm -rf get-pip.py
  clear

  curl -fsSL http://bit.ly/code-sh | sh

  sh php-switch.sh install 7.0

  if [ -d snap ]; then
    echo 'installing spotify'
    snap install spotify

    echo 'installing android-studio'
    sudo snap install android-studio --classic

    echo 'installing postman'
    sudo snap install postman --classic

    echo 'installing eclipse'
    sudo snap install eclipse --classic

    echo 'installing intellij-idea-community'
    sudo snap install intellij-idea-community --classic

    echo 'installing netbeans'
    sudo snap install netbeans --classic

    echo 'installing kotlin'
    sudo snap install kotlin --classic

    echo 'installing flutter'
    sudo snap install flutter --classic

    echo 'installing beekeeper-studio'
    sudo snap install beekeeper-studio --classic

    echo 'installing obs-studio'
    sudo snap install obs-studio --classic

    echo 'installing kdenlive'
    sudo snap install kdenlive --classic

    echo 'installing audacity'
    sudo snap install audacity --classic
    return 1
  fi
  sudo apt-get install snapd -y

  echo 'installing chrome'
  curl -fsSL http://bit.ly/chrome-sh | sh

  sh nvm.sh

  echo 'installing rustup'
  curl https://sh.rustup.rs -sSf | sh

  echo 'installing deno'
  curl -fsSL https://deno.land/x/install/install.sh | sh

  echo 'installing slack'
  wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.8-amd64.deb
  sudo apt install ./slack-desktop-*.deb -y

  echo 'installing terminator'
  sudo apt-get update
  sudo apt-get install terminator -y

  sh dracula.sh

  echo 'installing docker'
  sudo apt-get remove docker docker-engine docker.io
  sudo apt install docker.io -y
  sudo systemctl start docker
  sudo systemctl enable docker
  docker --version

  chmod 777 /var/run/docker.sock
  docker run hello-world

  echo 'installing docker-compose'
  sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  docker-compose --version

  echo 'installing aws-cli'
  sudo apt-get install awscli -y
  aws --version
  curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
  sudo dpkg -i session-manager-plugin.deb
  session-manager-plugin --version

  echo 'installing teamviewer'
  wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
  sudo apt install -y ./teamviewer_amd64.deb

  echo 'installing vnc-viewer'
  sudo apt-get install -y --no-install-recommends ubuntu-desktop gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal
  sudo apt-get install vnc4server -y

  echo 'installing fzf'
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --all

  echo 'installing dbeaver'
  wget -c https://dbeaver.io/files/6.0.0/dbeaver-ce_6.0.0_amd64.deb
  sudo dpkg -i dbeaver-ce_6.0.0_amd64.deb
  sudo apt-get install -f

  sh dotnet-install.sh -c Current
  sh dotnet-install.sh -c Current --runtime aspnetcore
  
  sh sbt.sh
  curl -fsSL https://raw.githubusercontent.com/hebertcisco/instantclient_oracledb/master/install.sh | sh
}

main "$1"
