#!/bin/sh
# ~/.xinitrc
# Executed by startx (run your window manager from here)

## Ensure that GTK themes are applied uniformly in the Desktop Environment
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# Change displays to not mirrored
xrandr --output DP-6 --rotate normal --mode 1920x1200 --left-of DP-4
xrandr --output DP-4 --rotate normal --mode 1920x1200 --right-of DP-6
#xrandr --output DP-0 --rotate left --mode 1920x1200 --left-of DP-6

xset r rate 170 60

exec startfluxbox
