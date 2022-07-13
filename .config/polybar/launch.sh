#!/usr/bin/env bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Determine if there is an external Monitor Connected
if [[ $(xrandr -q | grep -w  "HDMI1 connected") ]]; 
then
	
	polybar hdmi-main &
	polybar hdmi-not-main &
else

	polybar undocked-main &

fi
