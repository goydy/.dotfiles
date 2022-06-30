#!/usr/bin/zsh
if (($(ps -aux | grep -Ecw "^.*picom$") > 0))
then
  pkill -9 picom
else
  picom &
fi