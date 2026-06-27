#!/bin/bash

SRC_01=$HOME/.var/app/org.kde.konsole/config
SRC_02=$HOME/.var/app/org.kde.konsole/data
DEST_DIR=$PWD/apps/flatpaks/konsole/var/app/org.kde.konsole

mkdir -p $DEST_DIR
cp -r $SRC_01 $DEST_DIR
cp -r $SRC_02 $DEST_DIR