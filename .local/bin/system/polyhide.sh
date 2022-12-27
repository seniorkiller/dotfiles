#!/bin/env sh


dir=$XDG_STATE_HOME/script/polyhide
[ -e $dir ] || mkdir -p $XDG_STATE_HOME/script/

state=$(cat $dir)
[ $state -eq 0 ] && (polybar-msg cmd hide && sleep 0.2 && i3-msg gaps top all set 5 && echo 1 > $dir && exit)
[ $state -eq 1 ] && (i3-msg gaps top all set 29 && sleep 0.2 && polybar-msg cmd show&& echo 0 > $dir && exit)






