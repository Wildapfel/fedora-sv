#!/bin/bash

# create custom .desktop entry
FILE_PATH="$HOME/.local/share/applications/texstudio.desktop"
ICON_PATH="$PWD/apps/non-flatpaks/texstudio/TeXstudio_Logo.svg"

touch $FILE_PATH

cat > $FILE_PATH << EOF
[Desktop Entry]
Name=TeXstudio
Exec=toolbox run -c tex-env texstudio
Type=Application
Terminal=false
Categories=Office;
Icon=$ICON_PATH
EOF
