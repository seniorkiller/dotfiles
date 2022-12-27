#!/bin/sh



killall picom
killall bash 
killall dunst
killall mpDris2
killall ferdium
killall touchegg
killall mpd-discord-rpc&
killall autorandr-launcher

i3-msg exit
