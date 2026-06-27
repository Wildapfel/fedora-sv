#!/bin/bash

toolbox create yt-dlp
toolbox run --container yt-dlp bash -c "sudo dnf install yt-dlp -y"
cp $PWD/tools/yt-dlp/yt_dlp.sh ~/.local/bin/yt-dlp