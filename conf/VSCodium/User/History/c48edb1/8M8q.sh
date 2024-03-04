#!/bin/bash

# Fonction pour vérifier l'état du WiFi
check_wifi() {
    wifi_state=$(nmcli radio wifi)
    if [ "$wifi_state" = "enabled" ]; then
        echo "WiFi: enabled"
    else
        echo "WiFi: disabled"
    fi
}

# Fonction pour vérifier l'état du Bluetooth
check_bluetooth() {
    bluetooth_state=$(bluetoothctl show | grep "Powered: yes" > /dev/null 2>&1 && echo "enabled" || echo "disabled")
    echo "Bluetooth: $bluetooth_state"
}

# Fonction pour vérifier d'autres statuts...
# check_other_service() {
#     # Commandes pour vérifier le service
# }

# Exécutez les vérifications
check_wifi
check_bluetooth
# check_other_service