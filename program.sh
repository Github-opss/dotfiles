#! /bin/bash

echo "Installing rpm fusion"
dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
  
echo "Updating system"
echo "fastestmirror=true" >> /etc/dnf/dnf.conf
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
dnf upgrade

echo "Creating directories
cd ~
mkdir -p Downloads Documents Pictures Music 

echo "Cloning git"
git clone https://github.com/Github-opss/dotfiles.git
cd dotfiles

echo "Configuring i3"

tar -xvf dracula.tar
tar -xvf wallpaper.tar

mv i3 i3status kitty rofi ~/.config
mv dracula ~/.themes
mv wallpaper ~

echo "Installing theme"
mkdir -p ~/.themes &&  && cd ~ && 
echo "Installing packages"
dnf install brightnessctl kitty thunar feh lxpolkit lxappearance firefox firejail emacs rofi telegram-desktop

