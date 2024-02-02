
while true; do
    battery_status=$(acpi -i | head -n 1)
    battery_percentage=$(echo $battery_status | grep -Eo '[0-9]+%' | tr -d '%')

    if [[ $battery_status == *"Discharging"* ]] && (( battery_percentage < 30 )); then
        notify-send "$battery_percentage% LOW juice 🪫" "charge"

    # else
    #     echo "False"
    fi

    sleep 300 
done

# */1 * * * * /bin/bash /home/voy/.config/waybar/powernot.sh