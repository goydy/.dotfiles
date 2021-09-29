#Enable the Home Managment Deamon
systemctl enable systemd-homed

#User ID Variable
userID=cbrown

#Set Wireless to use DHCP (Assuming wlan0 as name)
cat <<EOT >> /etc/systemd/network/20-wireless.network   
[Match]
Name=wlan0

[Network]
DHCP=yes 
EOT

#Enable and Start Network Daemon, DNS Daemon and IWD
systemctl enable --now systemd-networkd systemd-resolved iwd 

sleep 10

#Connect to PrettyFLyForAWiFi network
iwctl station wlan0 connect PrettyFlyForAWiFi

sleep 10

#Install basic packages used on arch
## sudo - Used to run operations as other users (mostly root in this instance)
## git - Used for GitHub and Git Operations
## fakeroot - Used for YAY and AUR
## binutils - Used for YAY and AUR
## go - Used for YAY
## make - Used to make pacakges pulled from AUR
## gcc - Needed for MakePkg to compile packages 
## openssh - Used for GIT as well as other day to day remote control
## zsh - Trying out a new shell rather than bash
pacman -S sudo git fakeroot binutils go make gcc openssh zsh

#Set Keyboard to UK for terminal users
echo "KEYMAP=uk" > /etc/vconsole.conf

#Setup Locale
echo "en_GB.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen

#Set time to network time and set timezeone to Europe/London
timedatectl set-timezone Europe/London
timedatectl set-ntp true

#Add my User, give them the zsh shell and a home directory
useradd -m $userID -s /usr/bin/zsh

#Set a password interactively for my new user
passwd $userID

#Grant me sudo, all operations
echo "$userID ALL=(ALL) ALL" > /etc/sudoers
