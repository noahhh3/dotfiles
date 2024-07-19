#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch Polybar on all connected monitors
if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload example &
    done
else
    polybar --reload example &
fi

