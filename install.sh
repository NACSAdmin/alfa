#!/bin/bash
installPath=~/alfa

sudk mkdir ${installPath}

sudo git clone https://github.com/aircrack-ng/rtl8812au.git ${installPath}

sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

sudo apt install build-essential libelf-dev linux-headers-`uname -r`

cd ${installPath}

sudo make

sudo make install
