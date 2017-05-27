# .bashrc

###### Environment General Settings ######
umask 027

###### Aliases ######

# Add ALL alias files from .aliases 
if [ -d $HOME/.aliases ]; then
  for i in $( find -H $HOME/.aliases -maxdepth 1 \( -type f -o -type l \) )
    do
      . $i
    done
fi

export TERM='xterm-256color'

if [ -d $HOME/.sources ]; then
    for i in $( find -H $HOME/.sources -maxdepth 1 -type f -name '*.sh' )
      do
        . $i
      done
fi

###### Golang Related ######
export GOPATH=~
PATH=$PATH:${GOPATH}/bin

###### Docker Stuff ######
export GID=$( id -g )

###### SSH Agent ######
##### SSH_Agent ENV Variables #####
SSH_AUTH_SOCK=/tmp/ssh-Bf4EdgGyL0vf/agent.3875; export SSH_AUTH_SOCK;
SSH_AGENT_PID=3876; export SSH_AGENT_PID;

###### Bash History ######
HISTFILESIZE=4000000
HISTSIZE=500000
export HISTSIZE HISTFILSIZE

if [ "x${TMUX}" != 'x' ]
then
  export TERM='screen-256color'
  #bind '"\e[1~":"\eOH"'
  #bind '"\e[4~":"\eOF"'
fi

alias ls='ls --color=auto'
alias l='ls -l'
alias x='exit'

#Use VI commands on command line.
set -o vi

export SVN_EDITOR=vi
export EDITOR=vi

# Set readable ls colors
LS_COLORS='di=01;94'
export LS_COLORS

