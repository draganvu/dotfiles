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

# Function to clone repostories
clone_repo() {
    REPO_URL=$1
    REPO_NAME=$(basename "$REPO_URL" .git)

    if [ -d "$REPO_NAME" ]; then
	echo "$REPO_NAME already exists. Skipping..."
    else
	echo "Cloning $REPO_NAME..."
	git clone "$REPO_URL"
    fi
}

# Clone repositories
clone_repo https://github.com/draganvu/dotfiles
clone_repo https://github.com/draganvu/emacs-config
clone_repo https://github.com/draganvu/draganvu.github.io
clone_repo https://github.com/draganvu/cv-latex

echo "Clone complete!..."

#EOF
