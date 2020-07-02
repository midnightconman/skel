#!/bin/sh

{ history -w /dev/stdout & cat $( ls -1at ~/.bash_history.backups/.bash_history-1* | head -n1 ); } | sort | uniq > ~/.bash_history.backups/.bash_history-$( date +%s )
