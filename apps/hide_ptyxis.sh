#!/bin/bash

FILE=org.gnome.Ptyxis.desktop
DESKTOP_SYSTEM=/usr/share/applications/$FILE  # system-wide
DESKTOP_USER=$HOME/.local/share/applications/  # user-space

cp "$DESKTOP_SYSTEM" "$DESKTOP_USER/$FILE"

cat > "$DESKTOP_USER/$FILE" << EOF
[Desktop Entry]
NoDisplay=true
EOF
