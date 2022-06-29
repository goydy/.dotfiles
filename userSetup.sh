userID=cbrown

#Setup a Window Manager and make it pretty and easy to use
##xorg-server - X Window Server
##xorg-xinit - Start X operations on init
##bspwm - Binary Space Partition Window Manager
##sxhkd - Simple X Hot Key Deamon
##picom - Compositor (Used for transparency etc)
##polybar - Toolbar
##feh - Image Viewer, used for Wallpaper
##Source Code Pro - Terminal Font
##Firefox - Default Browser
##remmina - Remote Desktop Client
##freerdp - Free RDP Protocol
##Thunar - File Explorer
sudo pacman -S xorg-server xorg-xinit bspwm sxhkd picom feh rofi pkgconf firefox rxvt-unicode,thunar

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

#Install Oh My ZSH
git clone https://github.com/ohmyzsh/ohmyzsh.git .oh-my-zsh

#Create a Link for the CBrown Z Shell Theme
ln -s ~/.dotfiles/.config/zsh/themes/cbrown.zsh-theme ~/.oh-my-zsh/themes/cbrown.zsh-theme

#Install Polybar using Yay (Yet another Yhogurt)
yay -S polybar 

#Install the Better Lock Screen Tool
sudo pacman -S base-devel
yay -S betterlockscreen
betterlockscreen -u ~/.dotfiles/wallpapers/wallpaper.jpg

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
ln -s /home/$userID/.dotfiles/.config/gtk-4.0 /home/$userID/.config/gtk-4.0
ln -s /home/$userID/.dotfiles/.config/picom /home/$userID/.config/picom
ln -s /home/$userID/.dotfiles/.gtkrc-2.0 /home/$userID/.gtkrc-2.0
ln -s /home/$userID/.dotfiles/.config/dunst /home/$userID/.config/dunst
ln -s /home/$userID/.dotfiles/.config/neofetch /home/$userID/.config/neofetch
ln -s /home/$userID/.dotfiles/.config/betterlockscreenrc /home/$userID/.config/betterlockscreenrc

#Install Sublime
yay -S sublime-text-4 sublime-merge

#Install CoreShot for taking screenshots
yay -S coreshot

#Setup GIT User & Email for Commiting
git config --global user.name $userID
git config --global user.email $userID@test.com

