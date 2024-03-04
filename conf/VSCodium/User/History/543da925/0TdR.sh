#!/bin/bash

# Utilisez nmcli pour vérifier l'état du WiFi
wifi_state=$(nmcli radio wifi)
if [ "$wifi_state" = "enabled" ]; then
    echo "WiFi is enabled"
else
    echo "WiFi is disabled"
fi
