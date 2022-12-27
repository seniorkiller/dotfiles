#!/bin/sh


if [ $DESKTOP_SESSION != dwm ]; then
	picom --config ~/.config/picom/picom.conf&
fi

if [ $DESKTOP_SESSION = dwm ]; then
	slstatus&
fi

dunst&
mpDris2&
# # ferdium&
touchegg&
# mpd-discord-rpc&
autorandr-launcher -d&
# obsidian!&
setbg&



# game=$(cat $XDG_STATE_HOME/script/game-mode)
# [ $game -eq 1 ] && (sudo systemctl start optimus-manager.service && prime-offload && sudo optimus-manager --switch nvidia
# echo 0 > $XDG_STATE_HOME/script/game-mode && sudo systemctl disable sddm && sudo systemctl enable ly)
