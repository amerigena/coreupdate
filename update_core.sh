sudo apt update && sudo apt install xfce4* gvfs* chromium-browser xpad
wget -nv https://download.opensuse.org/repositories/home:stevenpusser/xUbuntu_18.04/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/home:stevenpusser.list"
sudo add-apt-repository ppa:papirus/papirus && sudo add-apt-repository ppa:claws-mail/ppa
sudo apt update && sudo apt install -y papirus-icon-theme claws-mail palemoon