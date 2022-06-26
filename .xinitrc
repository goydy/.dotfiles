#Set the Keyboard to the UK
setxkbmap gb

#Set the Display (Needed for the Dunst Service to run Correctly)
systemctl --user import-environment DISPLAY

#Load the X Resources for the User
xrdb -merge ~/.Xresources
exec bspwm
