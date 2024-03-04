#!/bin/bash

# Fonction pour vérifier l'état du WiFi
check_wifi() {
    wifi_state=$(nmcli radio wifi)
    if [ "$wifi_state" = "enabled" ]; then
        return true
    else
        return false
    fi
}

# Fonction pour vérifier l'état du Bluetooth
check_bluetooth() {
    bluetooth_state=$(bluetoothctl show | grep "Powered: yes" > /dev/null 2>&1 && echo "enabled" || echo "disabled")
    echo "Bluetooth: $bluetooth_state"
}

# Exécutez les vérifications
check_wifi
check_bluetooth
# check_other_service
