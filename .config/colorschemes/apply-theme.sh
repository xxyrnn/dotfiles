#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <theme_name>"
    exit 1
fi

THEME="$1"
THEME_PATH="$HOME/.config/colorschemes/$THEME"

notify-send "Changing Theme" "Applying: $THEME"

## change wallpaper
WALLPAPER="$THEME_PATH/wallpaper"

if [ -d "$WALLPAPER" ]; then
    ## TODO: multiple wallpapers
    echo "dir"
fi

awww img "$WALLPAPER" --transition-type wipe --transition-angle 135 --transition-fps 60 --transition-step 255
ln -sf "$WALLPAPER" "$HOME/.config/hypr/hyprlock/wallpaper" ## make it available to hyprlock

## hyprland
ln -sf "$THEME_PATH/hypr/colors.lua" "$HOME/.config/hypr/modules/colors.lua"
ln -sf "$THEME_PATH/hypr/colors.conf" "$HOME/.config/hypr/modules/colors.conf"
hyprctl reload

## waybar
## TODO: waybar config switcher
ln -sf "$THEME_PATH/waybar/colors.css" "$HOME/.config/waybar/colors.css"
pkill cava.sh
pkill waybar; waybar &

## kitty
ln -sf "$THEME_PATH/kitty/colors.conf" "$HOME/.config/kitty/colors.conf"
pkill -SIGUSR1 kitty

## gtk
UPPERCASE_THEME=$(echo "$THEME" | awk '{print toupper(substr($0,1,1)) tolower(substr($0,2))}')
gsettings set org.gnome.desktop.interface gtk-theme "Colloid-Dark-$UPPERCASE_THEME"

## swaync
## TODO: swaync config switcher
ln -sf "$THEME_PATH/swaync/colors.css" "$HOME/.config/swaync/colors.css"
swaync-client -rs

## rofi
## TODO: rofi config switcher
ln -sf "$THEME_PATH/rofi/colors.rasi" "$HOME/.config/rofi/colors.rasi"

## TODO: nvim

## micro
ln -sf "$THEME_PATH/micro/colors.micro" "$HOME/.config/micro/colorschemes/xyrn.micro"

## zed
ln -sf "$THEME_PATH/zed/colors.json" "$HOME/.config/zed/themes/colors.json"

## pywalfox
ln -sf "$THEME_PATH/pywalfox/colors.json" "$HOME/.cache/wal/colors.json"
pywalfox update

## spotify
## TODO: spicetify config switcher
spicetify config current_theme "$THEME"
spicetify refresh

notify-send "Theme Applied" "New theme: $THEME"
