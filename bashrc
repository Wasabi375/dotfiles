#
# ~/.bashrc
#
# Executed on tty creation
#

# use qt5ct for qt theming
export QT_QPA_PLATFORMTHEME=qt5ct

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

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
