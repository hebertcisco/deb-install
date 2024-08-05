#!/bin/sh

if [ -x "$(command -v apache2)" ]; then
  sudo apt-get remove apache2 -y
  sudo apt-get autoremove -y
  echo "Apache2 removed."
else
  return 1
fi