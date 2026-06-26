#!/bin/bash

SRC_01=$PWD/apps/flatpaks/zed/config/zed/keymap.json
SRC_02=$PWD/apps/flatpaks/zed/config/zed/settings.json
DEST=$HOME/.var/app/dev.zed.Zed-Preview/config/zed

cp $SRC_01 $DEST
cp $SRC_02 $DEST
