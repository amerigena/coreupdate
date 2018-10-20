# !/bin/bash
# post- install script for Xubuntu 18.10
wget -nv https://download.opensuse.org/repositories/home:stevenpusser/xUbuntu_18.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/home:stevenpusser.list"
sudo add-apt-repository -y ppa:papirus/papirus
sudo apt update && sudo apt install -y papirus-icon-theme palemoon xpad icedtea-8-plugin chromium-browser && sudo apt autoremove -y firefox thunderbird pidgin
