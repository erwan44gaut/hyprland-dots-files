#!/bin/bash

# Define the options
# WIFI | Bluetooth | Volume | Brightness 
options="WIFI|Bluetooth|Volume|Brightness"

# Launch rofi
chosen=$(echo "$options" | rofi sep-dmenu -p "Options" -theme /home/erwan/.config/rofi/waybar_custom_menu_style.rasi)

# Execute the action based on the chosen option
case $chosen in
    "WIFI") echo "WiFi";;
    "") echo "Bluetooth" ;;
    "") echo "Volume" ;;
    "") echo "Brightness" ;;
esac
