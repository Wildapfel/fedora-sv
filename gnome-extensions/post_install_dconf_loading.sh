#!/bin/bash

INI_PATH=$PWD/gnome-extensions/dconf.ini
dconf load /org/gnome/shell/extensions/ < $INI_PATH
