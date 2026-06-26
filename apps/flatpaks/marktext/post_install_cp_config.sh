#!/bin/bash

SRC=$PWD/apps/flatpaks/marktext/config/marktext/preferences.json
DEST=$HOME/.var/app/com.github.marktext.marktext/config/marktext/preferences.json

mkdir -p $(dirname $DEST)
cp $SRC $DEST
