#!/bin/bash

echo '===================> SETTING UP <==================='
apt update
apt upgrade
apt install iproute2
apt-get install sudo
apt-get install curl

# Install docker
apt update
apt upgrade
sudo apt-get install curl apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update
apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
service docker start

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt install nmap && nmap

# Install oh-my-zsh
apt-get install git zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Check port
sudo nmap -v -sF localhost