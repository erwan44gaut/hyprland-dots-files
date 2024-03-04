#!/bin/bash

status=$(./scripts/check_status)

# Define the options
# WIFI | Bluetooth | Volume | Brightness 
options="WIFI|Bluetooth|Volume|Brightness"

# Launch rofi
chosen=$(echo "$options" | rofi -sep '|' -dmenu -p -theme ../waybar_custom_menu_style.rasi)

# Execute the action based on the chosen option
case $chosen in
    "WIFI") ./scripts/wifi.sh ;;
    "Bluetooth") echo "Bluetooth" ;;
    "Volume") echo "Volume" ;;
    "Brightness") echo "Brightness" ;;
esac
