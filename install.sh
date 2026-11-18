#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

rsync -av \
    --exclude='.git' \
    --exclude='etc' \
    --exclude='install.sh' \
    "$DOTFILES_DIR/" "$HOME/"

cp "$DOTFILES_DIR/etc/*" "/etc/"

echo "Dotfiles installed"
