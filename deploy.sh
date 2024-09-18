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

# Download files from Github to directories
echo "Downloading files..."
wget -O -P "$FOLDER_URXVT" "$GITHUB_URL/.urxvt/ext/pasta"
wget -O -P "$FOLDER_URXVT" "$GITHUB_URL/.urxvt/ext/resize-font"
wget -O -P "$FOLDER_COLORS" "$GITHUB_URL/.colors/zemun"

# Download files from Github to ~/$HOME
wget -O -P "$HOME" "$GITHUB_URL/.Xresources"
wget -O -P "$HOME" "$GITHUB_URL/.gitconfig"

xrdb ~/.Xresources

echo "Deploy complete..."
