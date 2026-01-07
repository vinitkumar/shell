#!/bin/bash

# Sync terminal configs to git repo and push changes
REPO_DIR="/Users/vinitkumar/shell"
CONFIG_DIR="$HOME/.config"

cd "$REPO_DIR" || exit 1

# Copy configs
cp -r "$CONFIG_DIR/kitty"/* kitty/ 2>/dev/null
cp -r "$CONFIG_DIR/wezterm"/* wezterm/ 2>/dev/null
cp -r "$CONFIG_DIR/ghostty"/* ghostty/ 2>/dev/null

# Check for changes
if git diff --quiet; then
  exit 0
fi

# Commit and push
git add .
git commit -m "Auto-sync terminal configs"
git push origin main
