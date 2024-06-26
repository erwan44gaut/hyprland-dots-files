#!/bin/bash

# Détermine le nom d'utilisateur actuel (ne fonctionne pas si exécuté en tant que root directement)
USER_NAME=$(whoami)

# Vérifie si le script est exécuté en tant que root
if [ "$EUID" -ne 0 ]
  then echo "Veuillez exécuter en tant que root"
  exit
fi

# Mise à jour du système et installation des applications nécessaires
echo "Mise à jour du système et installation des paquets requis..."
pacman -Syu rofi swaylock codium nerd-fonts-complete waybar --noconfirm

# Copie des fichiers de configuration
echo "Copie des fichiers de configuration vers /home/$USER_NAME/.config..."
cp -r ./hyprland-dots-files/conf/* /home/$USER_NAME/.config/

# Modification des permissions pour que l'utilisateur soit propriétaire des fichiers
chown -R $USER_NAME:$USER_NAME /home/$USER_NAME/.config

# Suppression du clone Git
echo "Suppression du répertoire du clone Git..."
cd ..
rm -rf hyprland-dots-files

echo "Installation terminée."
