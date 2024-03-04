#!/bin/bash

# Define the options
# WIFI | Bluetooth | Volume | Brightness 
options="WIFI|Bluetooth|Volume|Brightness"

# Launch rofi
chosen=$(echo "WIFI|Bluetooth|Volume|Brightness" | rofi -sep '|' -dmenu -p -theme /home/erwan/.config/rofi/waybar_custom_menu_style.rasi)

# Execute the action based on the chosen option

esac
