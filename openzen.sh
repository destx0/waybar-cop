if pgrep -x "zen-bin" > /dev/null
then
    # If running, kill waybar
    # echo "vivaldi is running, killing process now."
    hyprctl -j clients | jq 'map(select(.class == "zen-alpha"))[0].workspace.id' | xargs hyprctl dispatch workspace
    # killall vivaldi-bin
else
    # If not running, start waybar
    # echo "vivaldi is not running, starting it now."
    zen-browser
fi