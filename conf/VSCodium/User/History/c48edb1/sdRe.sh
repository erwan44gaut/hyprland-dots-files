#!/bin/bash

# Fonction pour vérifier l'état du WiFi
check_wifi() {
    wifi_state=$(nmcli radio wifi)
    if [ "$wifi_state" = "enabled" ]; then
        echo "0"
    else
        echo "1"
    fi
}

# Fonction pour vérifier l'état du Bluetooth
check_bluetooth() {
    bluetooth_state=$(bluetoothctl show | grep "Powered: yes")
    if [ "$bluetooth_state" = "enabled" ]; then
        echo "1"
    else
        echo "0"
    fi
}

# Exécutez les vérifications
check_wifi
check_bluetooth
