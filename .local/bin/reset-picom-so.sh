#!/bin/sh

killall picom 
sleep 1
picom --experimental-backends --config ~/.config/picom/picom-showoff.conf

