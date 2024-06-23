#!/bin/sh

sudo apt-get update && sudo apt-get upgrade -y

echo 'Install OpenJDK'
sudo apt-get install -y openjdk-17-jdksssss

echo 'Install jre'

sudo apt-get install -y openjdk-17-jre

export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
export PATH=$PATH:$JAVA_HOME/bin
