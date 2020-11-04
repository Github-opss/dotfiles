#! /bin/bash
echo "Cloning git"
git clone https://github.com/Github-opss/dotfiles.git ~/.config
echo "Installing packages"
dnf install brightnessctl kitty thunar feh lxpolkit lxappearance firefox firejail emacs rofi 
echo "Installing theme"
mkdir -p ~/.themes && tar -C ~/.themes -xvf dracula.tar

