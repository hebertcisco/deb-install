#!/bin/bash
## By Hebert F. Barros 2021
## Removing any apt ## crashes
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

sudo apt-get update
sudo npm install npm yarn -g
pip install pip