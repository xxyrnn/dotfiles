#!/usr/bin/env bash

########################
### rofi-launcher.sh ###
########################

THEMES_PATH="$XDG_CONFIG_HOME/themes"
CWD="$(pwd)"

cd "$THEMES_PATH" || exit 1

IFS=$'\n'
SELECTED_THEME=$(for theme in */; do [[ $theme != theme_generator/ ]] && echo "${theme%/}"; done | rofi -dmenu -p "Choose Theme")

if [ -n "$SELECTED_THEME" ]; then
    ./apply-theme.sh "$SELECTED_THEME"
fi

cd "$CWD" || exit 1
