#!/bin/sh

sudo apt-get update && sudo apt-get upgrade

echo 'Install OpenJDK'
sudo apt-get install openjdk-11-jdksssss

echo 'Install jre'

sudo apt-get install openjdk-11-jre

export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
export PATH=$PATH:$JAVA_HOME/bin