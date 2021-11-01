#!/bin/bash

installPath=~/alfa

#making driver directory
sudo mkdir ${installPath}

#cloning git repo
sudo git clone https://github.com/aircrack-ng/rtl8812au.git ${installPath}

#upgrading
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y

#downloading correct headers
sudo apt-get install build-essential libelf-dev linux-headers-`uname -r`

#changing into cloned dir
cd ${installPath}

#make on git directory
sudo make

#install
sudo make install
