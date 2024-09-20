#!/usr/bin/env bash
#
# Author: Dragan Vujović <dvujovic@protonmail.ch>
# License: GNU GPL v3+
# URL: https://github.com/draganvu/dotfiles
#
# Commentary:
# Deploy script for setting up my dotfiles
#

echo "Preparing to deploy..."

# Set variables
FOLDER_URXVT="$HOME/.urxvt/ext"
FOLDER_COLORS="$HOME/.colors"
FOLDER_ICON="$HOME/.local/share/applications"

GITHUB_URL="https://raw.githubusercontent.com/draganvu/dotfiles/master"

# Create directory
echo "Creating directories..."
mkdir -p "$FOLDER_URXVT"
mkdir -p "$FOLDER_COLORS"
mkdir -p "$FOLDER_ICON"

# Download files from Github to directories
echo "Downloading files..."
wget -O "$FOLDER_URXVT/pasta" "$GITHUB_URL/.urxvt/ext/pasta"
wget -O "$FOLDER_URXVT/resize-font" "$GITHUB_URL/.urxvt/ext/resize-font"
wget -O "$FOLDER_COLORS/zemun" "$GITHUB_URL/.colors/zemun"
wget -O "$FOLDER_ICON/rxvt-unicode.desktop" "$GITHUB_URL/.urxvt/rxvt-unicode.desktop"

# Download files from Github to ~/$HOME
wget -O "$HOME/.Xresources" "$GITHUB_URL/.Xresources"
wget -O "$HOME/.gitconfig" "$GITHUB_URL/.gitconfig"

xrdb ~/.Xresources

echo "Deploy complete..."
