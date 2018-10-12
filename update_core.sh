# !/bin/bash
# post- install script for Xubuntu Core 18.04
sudo apt update && sudo apt install -y xfce4* gvfs* xpad hexchat evince git curl
wget -nv https://download.opensuse.org/repositories/home:stevenpusser/xUbuntu_18.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/home:stevenpusser.list"
sudo add-apt-repository -y ppa:papirus/papirus
sudo apt update && sudo apt install -y papirus-icon-theme palemoon
