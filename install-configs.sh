#!/bin/bash

# Install terminal configs from repo to ~/.config

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config"

# Backup existing configs
for terminal in kitty wezterm ghostty; do
  if [ -d "$CONFIG_DIR/$terminal" ]; then
    backup_dir="$CONFIG_DIR/${terminal}.backup.$(date +%s)"
    echo "Backing up $CONFIG_DIR/$terminal to $backup_dir"
    mv "$CONFIG_DIR/$terminal" "$backup_dir"
  fi
done

# Copy configs from repo
mkdir -p "$CONFIG_DIR"
cp -r "$REPO_DIR/kitty" "$CONFIG_DIR/"
cp -r "$REPO_DIR/wezterm" "$CONFIG_DIR/"
cp -r "$REPO_DIR/ghostty" "$CONFIG_DIR/"

echo "Configs installed to $CONFIG_DIR"
echo "Original configs backed up with .backup.* suffix if they existed"
