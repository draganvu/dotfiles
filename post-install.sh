#!/usr/bin/env bash
#
# Author: Dragan Vujović <dvujovic@protonmail.ch>
# License: GNU GPL v3+
# URL: https://github.com/draganvu/dotfiles
#
# Commentary:
# A script to install software after Ubuntu installation
#

# Update the system
echo "Updating package list..."
sudo apt update

# Upgrade existing packages
echo "Upgrading existing packages..."
sudo apt upgrade -y

# Install Git (version control)
echo "Installing git..."
sudo apt install -y git

# Install Emacs editor
echo "Installing Emacs..."
sudo apt install -y emacs

# Install graphic/image software
echo "Installing Inkscape..."
sudo apt install -y inkscape
echo "Installing GIMP..."
sudo apt install -y gimp

# Install Terminal (Urxvt)
echo "Installing Terminal..."
sudo apt install -y rxvt-unicode
