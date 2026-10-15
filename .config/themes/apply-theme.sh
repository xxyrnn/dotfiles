#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <theme_name>"
    exit 1
fi

THEME="$1"
THEME_PATH="$XDG_CONFIG_HOME/themes/$THEME"

CONFIGS="$THEME_PATH/configs"
COLORSCHEMES="$THEME_PATH/colorschemes"
WALLPAPERS="$THEME_PATH/wallpapers"

notify-send "Changing Theme" "Applying: $THEME"

## change wallpaper
awww img "$WALLPAPERS/${THEME}1.jpg" --transition-type wipe --transition-angle 135 --transition-fps 60 --transition-step 255
ln -sf "$WALLPAPERS/${THEME}1.jpg" "$XDG_CONFIG_HOME/hypr/hyprlock/wallpaper" ## make it available to hyprlock

## hyprpm
## make sure to leave this before `hyprctl reload` so the plugin configuration also gets reloaded,
## otherwise it will use the previous theme's configuration
ln -sf "$CONFIGS/hypr/hyprbars.lua" "$XDG_CONFIG_HOME/hypr/modules/plugins/hyprbars.lua"

## hyprland
## TODO: finish configs
ln -sf "$CONFIGS/hypr/looks.lua" "$XDG_CONFIG_HOME/hypr/modules/looks.lua"
ln -sf "$COLORSCHEMES/hypr/colors.conf" "$XDG_CONFIG_HOME/hypr/modules/colors.conf" ## colors for hyprlock which is still using hyprlang
ln -sf "$COLORSCHEMES/hypr/colors.lua" "$XDG_CONFIG_HOME/hypr/modules/colors.lua" ## colors for the new lua config
hyprctl reload

## waybar
ln -sf "$CONFIGS/waybar/config.jsonc" "$XDG_CONFIG_HOME/waybar/config.jsonc"
ln -sf "$CONFIGS/waybar/style.css" "$XDG_CONFIG_HOME/waybar/style.css"
ln -sf "$COLORSCHEMES/waybar/colors.css" "$XDG_CONFIG_HOME/waybar/colors.css"
# pkill waybar && waybar &

## quickshell
PREV_THEME=$(cat "$XDG_CONFIG_HOME/themes/current_theme")
qs kill -c "$PREV_THEME" && qs -c "$THEME" -d

## kitty
ln -sf "$COLORSCHEMES/kitty/colors.conf" "$XDG_CONFIG_HOME/kitty/colors.conf"
pkill -SIGUSR1 kitty

## gtk
UPPERCASE_THEME=$(echo "$THEME" | awk '{print toupper(substr($0,1,1)) tolower(substr($0,2))}')
gsettings set org.gnome.desktop.interface gtk-theme "Colloid-Dark-$UPPERCASE_THEME"

## TODO: qt

## swaync
## TODO: swaync configs
# ln -sf "$CONFIGS/swaync/config.json" "$CONFIG_HOME/swaync/config.json"
# ln -sf "$CONFIGS/swaync/style.css" "$CONFIG_HOME/swaync/style.css"
ln -sf "$COLORSCHEMES/swaync/colors.css" "$XDG_CONFIG_HOME/swaync/colors.css"
# swaync-client -rs

## rofi
## TODO: rofi configs
# ln -sf "$CONFIGS/rofi/config.rasi" "$XDG_CONFIG_HOME/rofi/config.rasi"
# ln -sf "$CONFIGS/rofi/style.rasi" "$CONFIG_HOME/rofi/style.rasi"
ln -sf "$COLORSCHEMES/rofi/colors.rasi" "$XDG_CONFIG_HOME/rofi/colors.rasi"

## TODO: nvim

## helix
ln -sf "$COLORSCHEMES/helix/colors.toml" "$XDG_CONFIG_HOME/helix/themes/xyrn.toml"

## micro
ln -sf "$COLORSCHEMES/micro/colors.micro" "$XDG_CONFIG_HOME/micro/colorschemes/xyrn.micro"

## zed
ln -sf "$COLORSCHEMES/zed/colors.json" "$XDG_CONFIG_HOME/zed/themes/colors.json"

## pywalfox
ln -sf "$COLORSCHEMES/pywalfox/colors.json" "$HOME/.cache/wal/colors.json"
pywalfox update

## spotify
## TODO: spicetify config switcher
# spicetify config current_theme "$THEME"
# spicetify refresh

echo "$THEME" > "$XDG_CONFIG_HOME/themes/current_theme"

notify-send "Theme Applied" "New theme: $THEME"
