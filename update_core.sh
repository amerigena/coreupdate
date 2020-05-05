# !/bin/bash
# post- install script for Xubuntu Core 20.04
sudo apt update && sudo apt install -y xfce4* gvfs* xpad hexchat evince git curl gnumeric icedtea-8-plugin net-tools
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
source /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list
sudo add-apt-repository -y ppa:papirus/papirus && sudo add-apt-repository -y ppa:i-nex-development-team/i-nex
sudo apt update && sudo apt install -y xfonts-terminus papirus-icon-theme palemoon brave-keyring brave-browser shellcheck i-nex smartmontools gsmartcontrol
