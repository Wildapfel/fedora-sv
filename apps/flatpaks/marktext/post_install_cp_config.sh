#!/bin/bash

SRC="$PWD/apps/flatpaks/marktext/var/app/com.github.marktext.marktext/config/preferences.json"
DEST="$HOME/.var/app/com.github.marktext.marktext/config/marktext"

mkdir -p $(dirname $DEST)
cp $SRC $DEST
