#!/bin/bash

OUTPUT_FILE="main.txt"

gsettings get org.gnome.desktop.interface gtk-theme > "$OUTPUT_FILE"
gsettings get org.gnome.desktop.interface icon-theme >> "$OUTPUT_FILE"
gsettings get org.gnome.desktop.interface cursor-theme >> "$OUTPUT_FILE"
gsettings get org.gnome.desktop.background picture-uri >> "$OUTPUT_FILE"
gsettings get org.gnome.desktop.interface text-scaling-factor >> "$OUTPUT_FILE"

PACKAGES=(
    "gnome-tweaks"  # Tool for Gnome tweaks
)

sudo apt update
sudo apt install "${PACKAGES[@]}"
