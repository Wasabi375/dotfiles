WINDOW_CLASS="$(hyprctl activewindow | awk '/class/ {print $2}')"

SPECIAL_TARGET="special:hidden"

if [ $WINDOW_CLASS = "Alacritty" ]; then
    SPECIAL_TARGET="special:term"
fi
if [ $WINDOW_CLASS = "firefox" ]; then
    SPECIAL_TARGET="special:fox"
fi

// notify-send "Window Class" $WINDOW_CLASS
// notify-send "Move current window to" $SPECIAL_TARGET

hyprctl dispatch -- movetoworkspacesilent $SPECIAL_TARGET
