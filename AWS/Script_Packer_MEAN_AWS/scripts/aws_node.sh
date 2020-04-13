#!/usr/bin/env bash
sudo apt-get update -y
#sudo apt install nodejs -y
#sudo apt install npm -y
#sudo apt install build-essential -y
echo "
----------------------
  NODE & NPM
----------------------
"

# add nodejs 10 ppa (personal package archive) from nodesource
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

# install nodejs and npm
sudo apt-get install -y nodejs
sudo apt install build-essential -y
sudo apt-get install -y npm