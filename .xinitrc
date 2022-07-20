#Set the Display (Needed for the Dunst Service to run Correctly)
systemctl --user import-environment DISPLAY

#Determine if there is an external Monitor Connected
if [[ $(xrandr -q | grep -w  "HDMI1 connected") ]]; 
then

	#Define the Mode for the new Monitor

	#HDMI1 - 28 inch office Monitor
	xrandr --newmode "3840x2160" 69.258 1920 1968 2000 2080 1080 1083 1088 1111 +hsync -vsync

 	xrandr --addmode HDMI1 "3840x2160"

	#Load Both Monitors using xRandR
	xrandr --output LVDS1 --mode 1366x768 --pos 3840x0 --rotate normal --output HDMI1 --primary --mode 3840x2160 --pos 0x0 --rotate normal --scale 1x1

fi

#Set the Keyboard to the UK
setxkbmap gb

#Load the X Resources for the User
xrdb -merge ~/.Xresources
exec bspwm
