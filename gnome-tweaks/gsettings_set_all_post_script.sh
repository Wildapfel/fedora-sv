#!/bin/bash

# fixing the background ...

WALLPAPER_DIR="$HOME/Pictures/wallpaper"
BACKGROUND_DIR="$PWD/gnome-tweaks/background-img"
BACKGROUND_NAME="stone_beach_aerial_green_ocean"

mkdir -p $WALLPAPER_DIR
cp "$BACKGROUND_DIR/$BACKGROUND_NAME" "$WALLPAPER_DIR/$BACKGROUND_NAME"

gsettings set org.gnome.desktop.background picture-uri "$WALLPAPER_DIR/$BACKGROUND_NAME"
gsettings set org.gnome.desktop.background picture-uri-dark "$WALLPAPER_DIR/$BACKGROUND_NAME"
