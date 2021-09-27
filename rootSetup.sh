#Enable the Home Managment Deamon
systemctl enable systemd-homed

#User ID Variable
userID=cbrown

#Add my User, give them the Bash shell and a home directory
useradd -m $userID -s /bin/bash

#Set a password interactively for my new user
passwd $userID

#Set Wireless to use DHCP (Assuming wlan0 as name)
cat <<EOT >> /etc/systemd/network/20-wireless.network   
[Match]
Name=wlan0

[Network]
DHCP=yes 
EOT

#Enable and Start Network Daemon, DNS Daemon and IWD
systemctl enable --now systemd-networkd systemd-resolved iwd 

#Connect to PrettyFLyForAWiFi network
iwctl station wlan0 connect PrettyFlyForAWiFi

#Install basic packages used on arch
## iwd - Internet Wireless Daemon - Used to manage wireless connections
## sudo - Used to run operations as other users (mostly root in this instance)
## git - Used for GitHub and Git Operations
## fakeroot - Used for YAY and AUR
## binutils - Used for YAY and AUR
## go - Used for YAY
## make - Used to make pacakges pulled from AUR
## gcc - Needed for MakePkg to compile packages 
## openssh - Used for GIT as well as other day to day remote control
pacman -S iwd sudo git fakeroot binutils go make gcc openssh

#Setup a Window Manager and make it pretty and easy to use
##xorg-server - X Window Server
##xorg-xinit - Start X operations on init
##bspwm - Binary Space Partition Window Manager
##sxhkd - Simple X Hot Key Deamon
##rxvt-unicode - Terminal Emulator
##picom - Compositor (Used for transparency etc)
##polybar - Toolbar
##feh - Image Viewer, used for Wallpaper
##adobe-source-code-pro-fonts - Shell Font
sudo pacman -S xorg-server xorg-xinit bspwm sxhkd rxvt-unicode picom feh ttf-hack
yay -S polybar 

#Grant me sudo, all operations
echo "cbrown ALL=(ALL) ALL" > /etc/sudoers

#Set Keyboard to UK for terminal users
echo "KEYMAP=uk" > /etc/vconsole.conf

#Setup Locale
echo "en_GB.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen

#Set time to network time and set timezeone to Europe/London
timedatectl set-tiemzone Europe/London
timedatectl set-ntp true