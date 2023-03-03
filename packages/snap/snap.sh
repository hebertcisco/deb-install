#!/bin/sh

if
  ! snap -v snap &
  >/dev/null
then
  echo 'installing spotify'
  sudo snap install spotify

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
