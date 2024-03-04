#!/bin/bash

# Utilisez nmcli pour vérifier l'état du WiFi
wifi_state=$(nmcli radio wifi)
if [ "$wifi_state" = "enabled" ]; then
    nmcli radio wifi off
else
    nmcli radio wifi on
fi
