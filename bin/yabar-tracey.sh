#!/bin/bash

VALUE=$( xprop -name "Tracey King" "_PIDGIN_UNSEEN_COUNT" | cut -d'=' -f2 | tr -d '[:space:]' )

if [ $VALUE -gt 0 ]
then
  echo "!Ybg0xff8b0500Y!🗨 $VALUE"
else
  echo "!Ybg0xff000000Y!🗨 $VALUE"
fi
