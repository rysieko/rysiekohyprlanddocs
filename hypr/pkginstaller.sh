#!/bin/bash 
cd ${HOME}
sudo pacman -Syu
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
sudo pacman -S hyprland hyprpaper hyprpicker hyprlauncher kitty nemo hyprlock cachyos/umu-launcher cliphist hypridle xdg-desktop-portal-hyprland protonup-qt xdg-desktop-portal-gtk pipewire wireplumber udiskie nemo-fileroller nemo-fileroller gnome-disk-partition-utility spotify spotify-cli hyprpicker matugen brightnessctl vesktop nwg-look cachyos-gaming-meta cachyos-gaming-applications
yay -S millennium ags-hyprpanel-git ttf-noto-nerd nordzy-cursor nordzy-hyprcursor   
cd /usr/share/themes && sudo wget https://github.com/EliverLara/Nordic/releases/download/v2.2.0/Nordic.tar.xz && sudo tar -xf Nordic.tar.xz && sudo rm Nordic.tar.xz
cd ${HOME}
echo "its fucking done" 
echo "move the dotfiles now bitchass"
echo "also add PROTON_ENABLE_WAYLAND=1 PROTON_FSR4_UPGRADE=1 PROTON_NO_WM_DECORATION=1 you fucking idiot"