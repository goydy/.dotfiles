#Install Secret Packages used by Evolution for OAUTH to Office365
sudo pacman -S gnome-keyring libsecret

#Install Evolution as the Mail Client and Evoltuion Exchange Web Services as the Connecter to Outlook360. Enchant and hunspell used for Spellchecking Dictionaries
sudo pacman -S evolution evolution-ews enchant hunspell-en_gb

#Install Microsoft Teams
yay -S teams
pacman -S --needed ttf-caladea ttf-carlito ttf-dejavu ttf-liberation ttf-opensans

#Install KeePass
yay -S keepass

#Install DBeaver
yay -S dbeaver

#Install Reminna (and freerdp for RDP Protocol)
sudo pacman -S freerdp remmina

#Install RClone to Sync One Drive
sudo pacman -S rclone

#Install FUSE2 In order to be able to mount file systems in userspace
sudo pacman -S fuse2

#Install Open Source OpenVPN (OpenVPN3 here is a pile of balls at the moment https://openvpn.net/)
yay -S openvpn

#Connect to the Domain
sudo pacman -S ntp samba smbclient

#Add gatewayDC-A.bpdconsulting.co.uk Nameserver IP
sudo echo "nameserver 10.69.0.55" | sudo tee -a /etc/resolv.conf

#Add gatewayDC-B.bpdconsulting.co.uk Nameserver IP
sudo echo "nameserver 10.69.0.212" | sudo tee -a /etc/resolv.conf

#Add gatewayDC-C.bpdconsulting.co.uk Nameserver IP
sudo echo "nameserver 10.69.1.103" | sudo tee -a /etc/resolv.conf

#Add Search for BPDConsulting.co.uk
sudo echo "search bpdconsulting.co.uk" | sudo tee -a /etc/resolv.conf