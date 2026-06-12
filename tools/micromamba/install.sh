#!/bin/bash

toolbox create micromamba
toolbox run --container micromamba bash -c '

MAMBA_BIN="$HOME/.local/bin/micromamba" &&
MAMBA_ROOT_PREFIX="$HOME/.micromamba" &&

curl -Ls "https://micro.mamba.pm/api/micromamba/linux-64/latest" \
    | tar -xvj -C "$(dirname $MAMBA_BIN)" --strip-components=1 bin/micromamba &&

eval $($MAMBA_BIN shell hook -s posix) &&

$MAMBA_BIN shell init -s bash -r $MAMBA_ROOT_PREFIX
'
