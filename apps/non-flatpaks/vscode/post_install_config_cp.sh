#!/bin/bash

CONFIG_SRC=$PWD/apps/non-flatpaks/vscode/config/Code/User/
CONFIG_DEST=$HOME/.config/Code/User/

cp $CONFIG_SRC* $CONFIG_DEST
