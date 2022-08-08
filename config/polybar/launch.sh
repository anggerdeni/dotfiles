#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

polybar an0nvi 2>&1 | tee -a /tmp/polybar-an0nvi.log & disown

echo "Bars launched..."
