#!/usr/bin/env bash
#
# Author: Dragan Vujović <dvujovic@protonmail.ch>
# License: GNU GPL v3+
# URL: https://github.com/draganvu/dotfiles
#
# Commentary:
# Script for setting up my github projects
# Requires `git' package installed

echo "Preparing to clone..."

# Set variable
GIT_FOLDER="$HOME/github"

# Create directory if it doesn't exist
echo "Creating directory..."
mkdir -p "$GIT_FOLDER"

cd "$GIT_FOLDER"

# Clone my projects from github.com
echo "Cloning projects..."
git clone https://github.com/draganvu/emacs-config
git clone https://github.com/draganvu/draganvu.github.io
git clone https://github.com/draganvu/cv-latex

echo "Clone complete!..."

#EOF
