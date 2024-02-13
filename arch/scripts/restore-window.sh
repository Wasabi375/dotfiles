
ACTIVE_WORKSPACE="$(hyprctl -j  activeworkspace | awk -F ':' '/id/ {print $2}' | sed 's/,*$//g')"

SPECIAL_WORKSPACE="hidden"

if [ $1 = "term" ]; then
    SPECIAL_WORKSPACE="term"
fi
if [ $1 = "fox" ]; then
    SPECIAL_WORKSPACE="fox"
fi

hyprctl dispatch -- togglespecialworkspace $SPECIAL_WORKSPACE
hyprctl dispatch -- movetoworkspace $ACTIVE_WORKSPACE
# hyprctl dispatch -- togglespecialworkspace $SPECIAL_WORKSPACE

