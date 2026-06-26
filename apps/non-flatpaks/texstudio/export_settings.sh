#!/bin/bash

SRC_01=$HOME/.config/texstudio/macro
SRC_02=$HOME/.config/texstudio/texstudio.ini
DEST_DIR=$PWD/apps/non-flatpaks/texstudio/config/texstudio

mkdir -p $DEST_DIR
cp -r $SRC_01 $DEST_DIR
cp $SRC_02 $DEST_DIR