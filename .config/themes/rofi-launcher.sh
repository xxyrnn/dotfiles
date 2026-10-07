#!/bin/bash

THEMES_DIR="$HOME/.config/themes"
CWD="$(pwd)"

cd "$THEMES_DIR" || exit 1

IFS=$'\n'
SELECTED_THEME=$(for theme in */; do echo "${theme%/}"; done | rofi -dmenu -p "Choose Theme")

if [ -n "$SELECTED_THEME" ]; then
    ./apply-theme.sh "$SELECTED_THEME"
fi

cd "$CWD" || exit 1
