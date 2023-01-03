#!/bin/env bash

HC=$XDG_CONFIG_HOME
H=$HOME
HB=$HOME/.local/bin

option="\
Add Option|$H/.local/bin/system/config-editor.sh
Dwm Config|$H/Repos/dwm/config.h
Sxhkd|$HC/sxhkd/sxhkdrc
I3|$HC/i3/config
I3 config.d|$HC/i3/config.d
Polybar|$HC/polybar/config.ini
Polybar Modules|$HC/polybar/modules
Rofi|$HC/rofi
Picom|$HC/picom
Zshrc|$HC/zsh/.zshrc
Zsenv|$HC/zsh/.zshenv
Config Folder|$HC
List Essential|$HC/Essentials"
selected=$(printf "$option" | awk -F '|' '{print $1}' | rofi -dmenu -p "Config Editor" -i )


edit=$(printf "$option"| grep "$selected" | awk -F '|' '{print $2}')
[ -q $selected ] || kitty --class Kitty_edit vim $edit &

