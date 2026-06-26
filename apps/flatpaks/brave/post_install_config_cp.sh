#!/bin/bash

SRC_01=$PWD/apps/flatpaks/brave/var/app/config/BraveSoftware/Brave-Browser/Default/Bookmarks
SRC_02=$PWD/apps/flatpaks/brave/var/app/config/BraveSoftware/Brave-Browser/Default/Preferences
SRC_03=$PWD/apps/flatpaks/brave/var/app/config/BraveSoftware/Brave-Browser/Default/Shortcuts
DEST_DIR=$HOME/.var/app/com.brave.Browser/config/BraveSoftware/Brave-Browser/Default/

mkdir -p $DEST_DIR
cp $SRC_01 $DEST_DIR
cp $SRC_02 $DEST_DIR
cp $SRC_03 $DEST_DIR

# DEPRECATED
# SRC_04="$PWD/apps/flatpaks/brave/var/app/config/BraveSoftware/Brave-Browser/Default/Web\ data"
# SRC_05="$PWD/apps/flatpaks/brave/var/app/config/BraveSoftware/Brave-Browser/Default/Web\ data.journal"
# cp "$SRC_04" $DEST_DIR
# cp "$SRC_05" $DEST_DIR
