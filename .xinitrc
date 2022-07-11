#Set the Keyboard to the UK
setxkbmap gb

#Set the Display (Needed for the Dunst Service to run Correctly)
systemctl --user import-environment DISPLAY

#Determine if there is an external Monitor Connected
if [[ $(xrandr -q | grep -w  "HDMI1 connected") ]]; 
then
	#Load Both Monitors using xRandR
	xrandr --output LVDS1 --mode 1366x768 --pos 1920x0 --rotate normal --output DP1 --off --output HDMI1 --primary --mode 3840x2160R --pos 0x0 --rotate normal --output VGA1 --off --output VIRTUAL1 --off
fi

#Load the X Resources for the User
xrdb -merge ~/.Xresources
exec bspwm
