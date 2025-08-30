#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="/home/saiatama1784/Pictures/wallpapers/"

# Get a random wallpaper from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the wallpaper using hyprpaper
hyprctl hyprpaper wallpaper "DP-1,$WALLPAPER"

# Log the change
echo "Wallpaper changed to $WALLPAPER at $(date)" >> /home/saiatama1784/.config/hypr/wallpaper.log
