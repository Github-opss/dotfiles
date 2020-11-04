#! /bin/bash

echo "Creating directories
cd ~
mkdir -p Downloads Documents Pictures Music 

echo "Cloning git"
git clone https://github.com/Github-opss/dotfiles.git

echo "Configuring i3"
mv i3 i3status kitty rofi ~/.config

echo "Installing theme"
mkdir -p ~/.themes && tar -C ~/.themes -xvf dracula.tar

echo "Installing packages"
dnf install brightnessctl kitty thunar feh lxpolkit lxappearance firefox firejail emacs rofi 

