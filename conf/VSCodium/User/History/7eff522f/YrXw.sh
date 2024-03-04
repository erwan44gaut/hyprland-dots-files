#!/bin/bash

# Define the options
options="\n
         \n
         \n
         Brightness"

# Launch rofi
chosen=$(echo -e "$options" | rofi -dmenu -p "Options" -theme /home/erwan/.config/rofi/waybar_custom_menu_style.rasi)

# Execute the action based on the chosen option
case $chosen in
    "") echo "WiFi";;
    "") echo "Bluetooth" ;;
    "Volume") echo "Volume" ;;
    "Brightness") echo "Brightness" ;;
esac
