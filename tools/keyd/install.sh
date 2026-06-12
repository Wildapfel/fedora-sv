#!/bin/bash

ROOT=$PWD
git clone https://github.com/rvaiya/keyd.git $PWD/tools/keyd/keyd
cd $PWD/tools/keyd/keyd
make && sudo make install
sudo systemctl enable --now keyd

sudo cp $ROOT/tools/keyd/default.conf /etc/keyd/default.conf
