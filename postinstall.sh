#!/bin/sh
# run this file after installing the system. 
# also installs the project itself, the idea is that you download this file
#   separately (paste into window, wget etc.)
# 
# this script is not idempotent
sudo apt -y update
sudo apt dist-upgrade
# terminal basics
sudo apt install -y xclip ranger w3m-img ssh tmux htop neofetch mlocate
sudo updatedb # for mlocate
wget https://github.com/zyedidia/micro/releases/download/v2.0.8/micro-2.0.8-amd64.deb
dpkg -i micro-2.0.8-amd64.deb
rm micro-2.0.8-amd64.deb
# server stuff
sudo apt install nginx-light git
# desktop
sudo apt install i3-wm i3status rofi feh lxterminal 
git clone https://github.com/marlonn/debianoid-lxqt-i3-rice.git
cd debianoid-lxqt-i3-rice.git
bash install-rice.sh
# these are pretty fat, comment them out if you want to stay lean
sh lxqt-install.sh
sudo apt install kate flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.vscodium.codium
# only do this when not on Ubuntu
flatpak install flathub org.mozilla.firefox
