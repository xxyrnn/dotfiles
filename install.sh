#!/usr/bin/env bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

rsync -av \
    --exclude='.git' \
    --exclude='install.sh' \
    "$DOTFILES_DIR/" "$HOME/"

echo "Dotfiles installed"
