#!/usr/bin/env sh
# Arcolinux Polybar launch script

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

desktop=$(echo $DESKTOP_SESSION)
count=$(xrandr --query | grep " connected" | cut -d" " -f1 | wc -l)

 if type "xrandr" > /dev/null; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload bar -c ~/.config/polybar/config.ini -q &
      done
    else
    polybar --reload bar -c ~/.config/polybar/config.ini -q &
    fi
