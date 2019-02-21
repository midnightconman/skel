#!/bin/sh

USER=${1:-midnightconman}

OUTPUT=$( grep --color=never 'name =' /home/${USER}/.gitconfig \
  | grep -v '#name' \
  | cut -d '=' -f2 \
  | tr -d ' ' \
  || echo )

if [ $OUTPUT == "midnightconman" ]
then
  echo -n "!Ybg0xffa5687fY!${OUTPUT}"
else
  echo -n "!Ybg0xff68a58eY!${OUTPUT}"
fi
