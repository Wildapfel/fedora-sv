#!/bin/bash

git clone https://github.com/rvaiya/keyd.git $PWD/tools/keyd/keyd
cd $PWD/tools/keyd/keyd
make && sudo make install
sudo systemctl enable --now keyd
