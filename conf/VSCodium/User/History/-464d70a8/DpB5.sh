#!/bin/bash

# Définir les options
options="WiFi On\nWiFi Off\nBluetooth On\nBluetooth Off"

# Lancer rofi
chosen=$(echo -e "$options" | rofi -dmenu -p "Options")

# Exécuter l'action en fonction de l'option choisie
case $chosen in
    "WiFi On") nmcli radio wifi on ;;
    "WiFi Off") nmcli radio wifi off ;;
    "Bluetooth On") bluetoothctl power on ;;
    "Bluetooth Off") bluetoothctl power off ;;
esac
