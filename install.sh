#!/bin/bash
x = 0
z = 0
echo "do you want to install hyprland and copy dots?" 
select y in yes onlydots no 
do
case $y in
"yes") x = $x + 1 ;;
"onlydots") z = $z + 1 ;; 
"no") echo "Jak nie to nie" && exit ;;
*) echo "chose an valid option" ;;
esac
if [ $x -eq 1 ]
then
echo "Instaling"
sudo pacman -Syu #updating system
sudo pacman -S wireplumber pipewire sddm hyprpolkitagent xdg-desktop-portal-hyprland qt6-wayland noto-fonts hyprpaper cliphist iwgtk hyprland hyprlancher #instaling system packages
sudo yay -S nordzy-cursors nordzy-hyprcursors ags-hyprpanel-git hyprls-git #installing AUR packages
echo "coping dots"
cp -r ~/myhyprlanddocs/*.conf ~/.config/hypr/ #copying hyprland dots 
hyprpanel useTheme "/usr/share/hyprpanel/themes/macchiato.json"
fi
if [ $z -eq 1 ]
then
echo "coping dots"
cp -r ~/myhyprlanddocs/*.conf ~/.config/hypr/ #copying hyprland dots 
hyprpanel useTheme "/usr/share/hyprpanel/themes/macchiato.json"
fi
done
