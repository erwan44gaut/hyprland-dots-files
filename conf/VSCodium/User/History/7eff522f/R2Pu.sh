#!/bin/bash

# Define the options
# WIFI | Bluetooth | Volume | Brightness 
options="WIFI|Bluetooth|Volume|Brightness"

# Launch rofi
chosen=$(echo "$options" | rofi -sep '|' -dmenu -p)

# Execute the action based on the chosen option
case $chosen in
    "WIFI")
        # Utilisez nmcli pour vérifier l'état du WiFi
        
    "Bluetooth") echo "Bluetooth" ;;
    "Volume") echo "Volume" ;;
    "Brightness") echo "Brightness" ;;
esac
