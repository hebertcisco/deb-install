#!/bin/bash
## By Hebert F. Barros 2019
## Removing any apt ## crashes
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Updating the repository ##
sudo apt update ;

## Installing Packages and Programs from the Ubuntu Debugger ##
sudo apt install snapd python3 python-pip wine nautilus-dropbox docker docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak -y;

## Installing Snap Packages ##
sudo snap install slack --classic &&  
sudo snap install skype --classic &&  
sudo snap install code --classic &&  
sudo snap install --edge node --classic && 
sudo snap install insomnia &&  
sudo snap install spotify &&
sudo snap install wps-office-multilang && 

## Adding Flathub Repository ##
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && 

## Installing Flathub Apps ##
sudo flatpak install flathub com.obsproject.Studio -y &&
sudo flatpak install flathub com.sublimetext.three -y &&
sudo flatpak install flathub io.dbeaver.DBeaverCommunity -y &&
 
## Software that needs external download ##
cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i *.deb && wget -c https://uploads.treeunfe.me/downloads/instalar-freenfe.exe &&

## System update
sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y ;
## Clean trashes
sudo apt autoclean &&
sudo apt autoremove &&
#End of Script ##
echo "Everything is ready"