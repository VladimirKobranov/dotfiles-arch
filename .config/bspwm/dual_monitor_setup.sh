#!/usr/bin/env sh
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar top &
if [[ $(xrandr --query | grep 'HDMI-2') = *connected* ]]; then
  polybar top_external &
fi
