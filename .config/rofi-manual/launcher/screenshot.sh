#!/bin/env sh




full=
area=
window=

option=$full\n$area\n$window
choice=$(echo -e $option | rofi -dmenu -i -p "ScreenShot Mode"

dir=$($HOME/Pictures/screenshot_%d-%m-%Y.png)

[ $choice -eq $full ] && cmd= "scrot $dir -e "xclip -sel c -t image/png $f""
[ $choice -eq $area ] && cmd= "scrot -s $dir -e "xclip -sel c -t image/png $f""
[ $choice -eq $window ] && cmd= "scrot -u $dir -e "xclip -sel c -t image/png $f""

$cmd
