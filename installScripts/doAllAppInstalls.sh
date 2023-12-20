#!/bin/bash

# Check if the script is running with sudo
if [ "$EUID" -ne 0 ]; then
    echo "This script must be run with sudo. Please use 'sudo ./doAllAppIstalls.sh'."
    exit 1
fi

# For example, let's echo a message
echo "Hello, this script is executing with sudo."

sudo apt update -y

echo chromw browser 
apt install chromium -y

echo microsoft visual studio code editor
apt install cdde -y

echo container manager
apt install docker -y
apt install docker-compose -y

echo Geany Code editor
apt install geany -y

echo gparted partion editor
apt install gparted -y

echo Edge Browser
apt install microsoft-edge-stable  -y

echo python script multiplexor
apt install tmux -y

echo Partition manager
apt install partioninmanager -y

echo 
apt install thunderbird -y
apt install wget -y