#!/bin/bash

SRC_01=$HOME/.config/Code/User/keybindings.json
SRC_02=$HOME/.config/Code/User/settings.json
DEST_DIR=$PWD/apps/non-flatpaks/vscode/config/Code/User/

mkdir -p $DEST_DIR
cp $SRC_01 $DEST_DIR
cp $SRC_02 $DEST_DIR
