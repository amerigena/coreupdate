!/bin/bash
# post- install script for Xubuntu Core 18.04
sudo apt update && sudo apt install -y xfce4* gvfs* xpad hexchat evince git
wget -nv https://download.opensuse.org/repositories/home:stevenpusser/xUbuntu_18.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo git clone https://github.com/LionSec/katoolin.git
sudo cp katoolin/katoolin.py /usr/bin/katoolin
sudo chmod ugo+x /usr/bin/katoolin
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/home:stevenpusser.list"
sudo add-apt-repository -y ppa:papirus/papirus && sudo add-apt-repository ppa:claws-mail/ppa && sudo add-apt-repository ppa:libreoffice/ppa
sudo apt update && sudo apt install -y papirus-icon-theme claws-mail palemoon libreoffice libreoffice-style*
