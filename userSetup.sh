userID=cbrown

#Install yay 
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -i

#Tidy up
cd ..
sudo rm -R yay

#Setup a Window Manager and make it pretty and easy to use
##xorg-server - X Window Server
##xorg-xinit - Start X operations on init
##bspwm - Binary Space Partition Window Manager
##sxhkd - Simple X Hot Key Deamon
##rxvt-unicode - Terminal Emulator
##picom - Compositor (Used for transparency etc)
##polybar - Toolbar
##feh - Image Viewer, used for Wallpaper
##Font Awesome - Used for Polybar Icons
sudo pacman -S xorg-server xorg-xinit bspwm sxhkd rxvt-unicode picom feh rofi ttf-hack ttf-font-awesome
yay -S polybar 

#Make the Config Directory
mkdir /home/$userID/.config

#Link the Config packages wtih this script for the user
ln -s /home/$userID/.dotfiles/.Xresources /home/$userID/.Xresources
ln -s /home/$userID/.dotfiles/.xinitrc /home/$userID/.xinitrc
ln -s /home/$userID/.dotfiles/.config/bspwm /home/$userID/.config/bspwm
ln -s /home/$userID/.dotfiles/.config/sxhkd /home/$userID/.config/sxhkd
ln -s /home/$userID/.dotfiles/.config/polybar /home/$userID/.config/polybar
ln -s /home/$userID/.dotfiles/.config/picom.conf /home/$userID/.config/picom.conf

#Install Visual Studio Code (open source not Microsoft)
yay -S code
