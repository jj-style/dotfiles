#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# >>>>> INSERTED FROM jj-style/dotfiles
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# append to the history file, don't overwrite it
shopt -s histappend

# automatically change directory if forget `cd`
shopt -s autocd

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# colour support
#export TERM=screen-256color
export TERM=xterm-256color

BASH_DIR=~/.bash.d
if [[ -z "$SINGULARITY_ENVIRONMENT" ]]; then
    source /usr/share/doc/pkgfile/command-not-found.bash
    source "$BASH_DIR/aliases.bash"
    source "$BASH_DIR/functions.bash"
    source "$BASH_DIR/environment.bash"
    source "$BASH_DIR/PS1.bash"
    source "$BASH_DIR/fzf/completion.bash"
    source "$BASH_DIR/fzf/key-bindings.bash"
    source "$BASH_DIR/linode.bash"
fi

# if in terminal 1 startx
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx
fi

# if in terminal 2, tmux
# attach/create tmux session if not in graphical display
#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 2 ]; then
    #if command -v tmux >/dev/null 2>&1 && [ -z "${DISPLAY}"  ]; then
        # if not inside a tmux session, and if no session is started, start a new session
        #[ -z "${TMUX}" ] && (tmux attach -t $USER || tmux new -s $USER  ) >/dev/null 2>&1
    #fi
#fi

#NFETCH=always # always|tmux|never
#if [[ $NFETCH != "never" ]] && [[ "${XDG_VTNR}" -ne 1 ]]; then
    #if [ $NFETCH == "always" ] || ([ $NFETCH == "tmux" ] && [ ! -z "${TMUX}" ]); then
        #if command -v pfetch > /dev/null 2>&1; then
            #pfetch
        #fi
    #fi
#fi
# <<<<< END OF INSERTED BLOCK
source "$HOME/.cargo/env"
export PATH="$HOME/.local/bin:$HOME/go/bin:$PATH"

source $HOME/catkin_ws/devel/setup.bash
export ROS_MASTER_URI=http://localhost:11578
export GAZEBO_MASTER_URI=http://localhost:11579
alias roscore='roscore -p 11578'
alias ros="prime-run singularity shell --nv ~/Downloads/isos/ros.simg"
