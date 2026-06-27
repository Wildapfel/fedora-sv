#!/bin/bash

# *quick note*
# - 'parallel --citation' removes some weird citation note

toolbox create wikiman
toolbox run --container wikiman bash -c "
    sudo dnf install -y make man fzf ripgrep awk w3m coreutils parallel &&
    git clone https://github.com/filiparag/wikiman.git $PWD/tools/wikiman/wikiman &&
    cd $PWD/tools/wikiman/wikiman &&
    make all &&
    sudo make install
"

# make binary visible
echo $PWD
cd $PWD/tools/wikiman
cp wikiman.sh ~/.local/bin/wikiman

# remove the citation request parallel --citation  -c "echo hello from inside toolbox"
# toolbox run -it --container wikiman bash
