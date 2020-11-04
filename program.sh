#! /bin/bash
echo "Enter username :"
read n1
 
#echo "Installing rpm fusion"
##dnf install \
##  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
echo
#echo "Updating system"
#echo "fastestmirror=true" >> /etc/dnf/dnf.conf
#echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
#dnf upgrade

echo "Creating directories"
cd ~
mkdir -p Downloads Documents Pictures Music ~/.themes 

echo "Cloning git"
git clone https://github.com/Github-opss/dotfiles.git
cd dotfiles

echo "Configuring i3"

tar -xvf dracula.tar
tar -xvf wallpaper.tar

mv i3 i3status kitty rofi /home/$n1/.config
mv dracula /home/$n1/.themes
mv .wallpaper /home/$n1/


echo "Installing packages"
#dnf install brightnessctl kitty thunar feh lxpolkit lxappearance firefox firejail emacs rofi telegram-desktop
