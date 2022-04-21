#!/bin/env sh


shutdown
restart
lock
hibernate
logout

option=$shutdown \n$restart \n$lock \n$hibernate\n$logout
choice=$( echo -e $option | rofi -dmenu -p "Power menu")


[$choice -eq ]
