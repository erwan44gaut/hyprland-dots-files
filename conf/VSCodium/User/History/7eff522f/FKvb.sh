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
        wifi_state=$(nmcli radio wifi)
        if [ "$wifi_state" = "enabled" ]; then
            echo "WiFi is enabled"
        else
            echo "WiFi is disabled"
        fi
        ;;
    "Bluetooth") echo "Bluetooth" ;;
    "Volume") echo "Volume" ;;
    "Brightness") echo "Brightness" ;;
esac
