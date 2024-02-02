if pgrep -x "waybar" > /dev/null
then
    # If running, kill waybar
    # echo "Waybar is running, killing process now."
    killall waybar
else
    # If not running, start waybar
    # echo "Waybar is not running, starting it now."
    waybar 
fi