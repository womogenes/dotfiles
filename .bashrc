#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set default editor
export EDITOR=vim

# Various convenience aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Better prompt
export PS1='\[\033[32m\]\u@\h \[\033[33m\]\W\[\033[36m\]\[\033[0m\] $ '

# Various commands and scripts, e.g. windsurf.sh
export PATH="$PATH:/home/willi/sw"

# Better shell
export TERM=xterm-256color

# Alias conda activate
alias ca="conda activate"
