#
# ~/.bashrc
#
# Executed on tty creation
#

# use qt5ct for qt theming
export QT_QPA_PLATFORMTHEME=qt5ct


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
alias ls='eza -X'
alias la='eza -aX'
alias ll='eza -hlX --git'
alias lla='eza -hlXa --git'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

EDITOR=vim
