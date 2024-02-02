if pgrep -x "code" > /dev/null
then
    # If running, kill waybar
    # echo "vivaldi is running, killing process now."
    hyprctl -j clients | jq 'map(select(.class == "Code"))[0].workspace.id' | xargs hyprctl dispatch workspace
    # killall vivaldi-bin
else
    # If not running, start waybar
    # echo "vivaldi is not running, starting it now."
    code
fi
