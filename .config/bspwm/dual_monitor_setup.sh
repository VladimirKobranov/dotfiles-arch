#!/usr/bin/env sh

# Check for connected displays using xrandr
if xrandr | grep -q "HDMI-2 connected"; then
  # Configure the monitors
  xrandr --output eDP-1 --primary --auto --output HDMI-2 --auto --right-of eDP-1

  # Launch Polybar
  ~/.config/polybar/launch.sh &
else
  # Default to single-screen setup
  xrandr --output eDP-1 --primary --auto
  ~/.config/polybar/launch.sh &
fi
