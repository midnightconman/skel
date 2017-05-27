#!/bin/bash

[[ "$-" != *i* ]] && return

reset="\[$( tput sgr0 )\]"
green="\[$( tput setaf 41 || tput AF 41 )\]"
orange="\[$( tput setaf 202 || tput AF 202 )\]"
purple="\[$( tput setaf 127 || tput AF 127 )\]"

case "$TERM" in
xterm-256color|screen-256color)
    PS1="[${green}\u${orange}@${green}\h${reset} ${purple}\w${reset}]\$ "
    ;;
screen|*)
    PS1='[\u@\h \W]\$ '
esac

unset reset green orange purple
