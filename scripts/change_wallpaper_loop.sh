
# Directory containing wallpapers
WALLPAPER_DIR="/home/saiatama1784/Pictures/wallpapers/"

# Infinite loop to change wallpaper every 10 minutes
while true; do
    # Get a random wallpaper from the directory
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

    # Preload the wallpaper
    hyprctl hyprpaper preload "$WALLPAPER"

    # Set the wallpaper using hyprpaper
    hyprctl hyprpaper wallpaper "DP-1,$WALLPAPER"

    # Log the change
    echo "Wallpaper changed to $WALLPAPER at $(date)" >> /home/saiatama1784/.config/hypr/wallpaper.log

    # Wait for 10 minutes
    sleep 600
done
