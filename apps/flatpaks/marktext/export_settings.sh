#!/bin/bash

SRC="$HOME/.var/app/com.github.marktext.marktext/config/marktext/preferences.json"
DEST_DIR="$PWD/apps/flatpaks/marktext/var/app/com.github.marktext.marktext/config"

mkdir -p $DEST_DIR
cp $SRC $DEST_DIR