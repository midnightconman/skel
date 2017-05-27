#!/bin/sh
# ~/.xinitrc
# Executed by startx (run your window manager from here)

## Ensure that GTK themes are applied uniformly in the Desktop Environment
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# Change displays to not mirrored
xrandr --output DVI-1 --mode 1920x1200 --left-of DVI-0

xset r rate 170 60

exec startfluxbox
