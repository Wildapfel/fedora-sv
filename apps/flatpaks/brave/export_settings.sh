#!/bin/bash

SRC_01=$HOME/.var/app/com.brave.Browser/config/BraveSoftware/Brave-Browser/Default/Bookmarks
SRC_02=$HOME/.var/app/com.brave.Browser/config/BraveSoftware/Brave-Browser/Default/Preferences
SRC_03=$HOME/.var/app/com.brave.Browser/config/BraveSoftware/Brave-Browser/Default/Shortcuts
DEST_DIR=$PWD/apps/flatpaks/brave/var/app/config/BraveSoftware/Brave-Browser/Default/

mkdir -p $DEST_DIR
cp $SRC_01 $DEST_DIR
cp $SRC_02 $DEST_DIR
cp $SRC_03 $DEST_DIR

# DEPRECATED
# SRC_04="$HOME/.var/app/com.brave.Browser/config/BraveSoftware/Brave-Browser/Default/Web Data"
# SRC_05="$HOME/.var/app/com.brave.Browser/config/BraveSoftware/Brave-Browser/Default/Web Data-journal"
# cp "$SRC_04" $DEST_DIR
# cp "$SRC_05" $DEST_DIR
