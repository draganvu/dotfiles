#!/usr/bin/env bash

# Deploy script for setting up my dotfiles

echo "Preparing to deploy..."

# Set variables
FOLDER_URXVT="$HOME/.urxvt/ext"
FOLDER_COLORS="$HOME/.colors"

GITHUB_URL="https://raw.githubusercontent.com/draganvu/dotfiles/master/"

# Create directory
echo "Creating directories..."
mkdir -p "$FOLDER_URXVT"
mkdir -p "$FOLDER_COLORS"

# Download files from Github
wget -P "$FOLDER_URXVT" "$GITHUB_URL/.urxvt/ext/pasta"
wget -P "$FOLDER_URXVT" "$GITHUB_URL/.urxvt/ext/resize-font"
#wget -P "$FOLDER2" "$GITHUB_URL/.urxvt/ext/resize-font"

xrdb ~/.Xresources

echo "Deploy complete..."
