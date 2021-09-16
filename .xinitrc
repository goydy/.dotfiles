#Set the Keyboard to the UK
setxkbmap gb

#Load the X Resources for the User
xrdb -merge ~/.Xresources
exec bspwm
