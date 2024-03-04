#!/bin/bash

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # Pas de couleur

# Détermine le nom d'utilisateur actuel (ne fonctionne pas si exécuté en tant que root directement)
USER_NAME=$(whoami)

echo -e "${GREEN}Début du script d'installation...${NC}"

# Vérifie si le script est exécuté en tant que root
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}Erreur: Ce script doit être exécuté en tant que root.${NC}"
  exit
fi

echo -e "${GREEN}Installation de yay pour la gestion des paquets AUR...${NC}"
# Installation du gestionnaire de paquets AUR yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

echo -e "${GREEN}Mise à jour du système et installation des applications nécessaires...${NC}"
# Mise à jour du système et installation des paquets avec yay
yay -Syu hyprland swaylock vscodium n waybar wayshot hyprpaper thunar --noconfirm

mkdir /home/$USER_NAME/wallpaperls
cp -r ./hyprland-dots-files/conf/wallerd-fontspaper /home/$USER_NAME/wallpaper

echo -e "${GREEN}Copie des fichiers de configuration vers /home/${USER_NAME}/.config...${NC}"
# Copie des fichiers de configuration
cp -r ./hyprland-dots-files/conf/* /home/$USER_NAME/.config/

echo -e "${GREEN}Ajustement des permissions des fichiers...${NC}"
# Modification des permissions pour que l'utilisateur soit propriétaire des fichiers
chown -R $USER_NAME:$USER_NAME /home/$USER_NAME/.config

echo -e "${GREEN}Nettoyage post-installation...${NC}"
# Suppression du clone Git
cd ..
rm -rf hyprland-dots-files

echo -e "${GREEN}Installation terminée.${NC}"
