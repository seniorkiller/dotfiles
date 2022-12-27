#!/bin/sh

[ $1 = "nvidia" ] && change-nvidia.sh
[ $1 = "intel" ] && change-intel.sh






# gamemode=$(cat ~/.local/state/script/game-mode)


# [ gamemode -eq 1 ] && notify-send hi && exit 1
# echo i

# echo 1 > ~/.local/state/script/game-mode


# sudo systemctl disable ly
# sudo systemctl enable sddm
# reboot
