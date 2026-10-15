#!/usr/bin/env bash

if ! [ -f "$XDG_CONFIG_HOME/themes/current_theme" ]; then
    exit 1
fi

CURRENT_THEME=$(cat "$XDG_CONFIG_HOME/themes/current_theme")

WALLPAPERS_PATH="$XDG_CONFIG_HOME/themes/$CURRENT_THEME/wallpapers"
CWD="$(pwd)"

cd "$WALLPAPERS_PATH" || exit 1

IFS=$'\n'
SELECTED_WALLPAPER=$(for wallpaper in *.*; do echo "${wallpaper}"; done | rofi -dmenu -p "Select Wallpaper")

if [ -n "$SELECTED_WALLPAPER" ]; then
    awww img "$WALLPAPERS_PATH/$SELECTED_WALLPAPER" --transition-type wipe --transition-angle 135 --transition-fps 60 --transition-step 255
    ln -sf "$WALLPAPERS_PATH/$SELECTED_WALLPAPER" "$XDG_CONFIG_HOME/hypr/hyprlock/wallpaper" ## make it available to hyprlock
fi

cd "$CWD" || exit 1
