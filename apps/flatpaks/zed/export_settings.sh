#!/bin/bash

SRC_01=~/.var/app/dev.zed.Zed-Preview/config/zed/keymap.json
SRC_02=~/.var/app/dev.zed.Zed-Preview/config/zed/settings.json
DEST=$PWD/apps/flatpaks/zed/config/zed/

mkdir -p $DEST
cp $SRC_01 $DEST
cp $SRC_02 $DEST
