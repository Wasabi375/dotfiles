#
# ~/.bash_profile
#
# executed once on login
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ "$(tty)" = "/dev/tty1" ]; then 
       	exec Hyprland
fi
