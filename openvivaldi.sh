if pgrep -x "vivaldi-bin" > /dev/null
then
    # If running, kill waybar
    # echo "vivaldi is running, killing process now."
    hyprctl -j clients | jq 'map(select(.class == "vivaldi-stable"))[0].workspace.id' | xargs hyprctl dispatch workspace
    # killall vivaldi-bin
else
    # If not running, start waybar
    # echo "vivaldi is not running, starting it now."
    vivaldi-stable
fi