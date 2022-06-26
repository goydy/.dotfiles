userID=cbrown

#Setup a Window Manager and make it pretty and easy to use
##xorg-server - X Window Server
##xorg-xinit - Start X operations on init
##bspwm - Binary Space Partition Window Manager
##sxhkd - Simple X Hot Key Deamon
##picom - Compositor (Used for transparency etc)
##polybar - Toolbar
##feh - Image Viewer, used for Wallpaper
##Font Awesome - Used for Polybar Icons7
##Source Code Pro - Terminal Font
##Firefox - Default Browser
##remmina - Remote Desktop Client
##freerdp - Free RDP Protocol
sudo pacman -S xorg-server xorg-xinit bspwm sxhkd picom feh rofi adobe-source-code-pro-fonts ttf-font-awesome pkgconf firefox rxvt-unicode remmina freerdp

#Install yay 
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -i

#Tidy up
cd ..
sudo rm -R yay

#Install Notification Library
sudo pacman -S notify-send dunst

#Install Pulse Audio & Pulse Audio Volume Control
sudo pacman -S pavucontrol pulseaudio

#Install Jet Brains Mono Font
yay -S ttf-jetbrains-mono

#Install Google Material Icons
yay -S ttf-material-icons-git

#Install Iosevka Nerd Font
yay -S ttf-iosevka-nerd

#Install Feather Font
yay -S ttf-icomoon-feather

#Install Polybar using Yay (Yet another Yhogurt)
yay -S polybar 

#Make the Config Directory
mkdir /home/$userID/.config

#Link the Config packages wtih this script for the user
ln -s /home/$userID/.dotfiles/.themes /home/$userID/.themes
ln -s /home/$userID/.dotfiles/.Xresources /home/$userID/.Xresources
ln -s /home/$userID/.dotfiles/.xinitrc /home/$userID/.xinitrc
ln -s /home/$userID/.dotfiles/.zshrc /home/$userID/.zshrc
ln -s /home/$userID/.dotfiles/.zprofile /home/$userID/.zprofile
ln -s /home/$userID/.dotfiles/.vimrc /home/$userID/.vimrc
ln -s /home/$userID/.dotfiles/.config/bspwm /home/$userID/.config/bspwm
ln -s /home/$userID/.dotfiles/.config/sxhkd /home/$userID/.config/sxhkd
ln -s /home/$userID/.dotfiles/.config/polybar /home/$userID/.config/polybar
ln -s /home/$userID/.dotfiles/.config/rofi /home/$userID/.config/rofi
ln -s /home/$userID/.dotfiles/.config/nvim /home/$userID/.config/nvim
ln -s /home/$userID/.dotfiles/.config/sublime-text /home/$userID/.config/sublime-text
ln -s /home/$userID/.dotfiles/.config/gtk-3.0 /home/$userID/.config/gtk-3.0
ln -s /home/$userID/.dotfiles/.config/picom.conf /home/$userID/.config/picom.conf
ln -s /home/$userID/.dotfiles/.gtkrc-2.0 /home/$userID/.gtkrc-2.0
ln -s /home/$userID/.dotfiles/.config/dunst /home/$userID/.config/dunst

#Install Sublime
yay -S sublime-text-4 sublime-merge

#Install CoreShot for taking screenshots
yay -S coreshot

#Setup GIT User & Email for Commiting
git config --global user.name $userID
git config --global user.email $userID@test.com

