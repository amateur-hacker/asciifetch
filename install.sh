#!/usr/bin/env bash

# Copying asciifetch script to the user's local bin directory
echo "Copying asciifetch script to $HOME/.local/bin"
sleep 1s
rsync -arvP ./asciifetch "$HOME/.local/bin/"

# Function to install boxes based on the package manager available
install_boxes() {
    local package_manager

    # Check if apt is available
    if command -v apt &>/dev/null; then
        package_manager="apt"
    # Check if dnf is available
    elif command -v dnf &>/dev/null; then
        package_manager="dnf"
    # Check if yay is available (Arch-based)
    elif command -v yay &>/dev/null; then
        package_manager="yay"
    # Check if paru is available (Arch-based)
    elif command -v paru &>/dev/null; then
        package_manager="paru"
    else
        echo "Error: No compatible package manager found." >&2
        exit 1
    fi

    # Install boxes based on the detected package manager
    case $package_manager in
        apt)
            sudo apt-get install -y boxes
            ;;
        dnf)
            sudo dnf install -y boxes
            ;;
        yay)
            yay -S boxes --noconfirm
            ;;
        paru)
            paru -S boxes --noconfirm
            ;;
    esac
}

# Installing boxes
echo "Installing boxes..."
install_boxes

# Displaying CLI name
tput setaf 12 && echo -ne "\nProgram CLI name: "
tput sgr0
tput bold setaf 7 && echo "asciifetch"
tput sgr0

# Running asciifetch with the random option
./asciifetch -r

# Installation complete message
echo -e "\nInstallation complete. Enjoy using asciifetch!"
