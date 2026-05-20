#!/bin/bash

# Define the directory (defaults to current directory)
# Change this to DIR="$HOME" if your config is always in your home folder.
DIR="."
cd "$DIR" || exit 1

if [[ -f ".skhdrc_home" ]]; then
    echo "Switching to HOME profile..."
    
    # Rename the currently active config to office
    if [[ -f ".skhdrc" ]]; then
        mv .skhdrc .skhdrc_office
    fi
    
    # Make the home config the active one
    mv .skhdrc_home .skhdrc
    echo "Done! Home profile is now active."

elif [[ -f ".skhdrc_office" ]]; then
    echo "Switching to OFFICE profile..."
    
    # Rename the currently active config to home
    if [[ -f ".skhdrc" ]]; then
        mv .skhdrc .skhdrc_home
    fi
    
    # Make the office config the active one
    mv .skhdrc_office .skhdrc
    echo "Done! Office profile is now active."

else
    echo "Error: Neither .skhdrc_home nor .skhdrc_office found in $(pwd)."
    echo "Are you sure you are in the right directory?"
    exit 1
fi

# Reload skhd so the new keybindings take effect.
# Uncomment the line below that matches your installation method.

# If running directly:
# skhd --restart

# If running via Homebrew services:
# brew services restart skhd
