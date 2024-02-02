if pgrep -x "nautilus" > /dev/null
then
    # If running, kill waybar
    # echo "vivaldi is running, killing process now."
    hyprctl -j clients | jq 'map(select(.class == "org.gnome.Nautilus"))[0].workspace.id' | xargs hyprctl dispatch workspace
    # killall vivaldi-bin
else
    # If not running, start waybar
    # echo "vivaldi is not running, starting it now."
    nautilus
fi
