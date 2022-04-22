#!/bin/env sh


shutdown
restart
lock
hibernate
logout

option=$shutdown \n$restart \n$lock \n$hibernate\n$logout
choice=$( echo -e $option | rofi -dmenu -p "Power menu")


[$choice -eq $shutdown] && systemctl shutdown
[$choice -eq $restart] && systemctl reboot
[$choice -eq $lock] && lock.sh
[$choice -eq $hibernate] && systemctl hibernate
[$choice -eq $logout] && i3-msg exit
