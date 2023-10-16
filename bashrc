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
alias ls=eza
alias la='eza -a'
alias ll='eza -hl --git'
alias lla='eza -hla --git'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

EDITOR=vim
