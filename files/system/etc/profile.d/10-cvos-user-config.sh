#!/usr/bin/env bash
set -euo pipefail

[ -n "${HOME:-}" ] || exit 0
[ -d "/etc/skel/.config" ] || exit 0

# Seed a new user home from the system template once, without overwriting
# any existing user config. This ensures the default Hyprland / Quickshell
# stubs appear in ~/.config for current users as well as brand-new ones.
if [ ! -d "$HOME/.config" ]; then
    mkdir -p "$HOME/.config"
fi

for item in /etc/skel/.config/*; do
    [ -e "$item" ] || continue
    target="$HOME/.config/$(basename "$item")"
    if [ ! -e "$target" ] && [ ! -L "$target" ]; then
        cp -a "$item" "$target"
    fi
done
