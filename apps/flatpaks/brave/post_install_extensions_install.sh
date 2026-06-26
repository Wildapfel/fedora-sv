#!/usr/bin/env bash

#  source
# https://askubuntu.com/questions/1063331/how-to-install-google-chrome-extensions-though-terminal

declare -A EXTlist=(
    ["vimium"]="dbepggeogbaibhgnhhndojpepiihcmeb"
    ["youtube-short-block"]="jiaopdjbehhjgokpphdfgmapkobbnmjp"
    ["swipe-back"]="mkkcgajcpakpfjgikmekgnihlbhliodo"
    ["print-friendly"]="ohlencieiipommannpdfcmfdpjjmeolj"
    ["block-site"]="nkedbnokglppcmiencngilkkhhnpcfjb"
    ["medium-unlock"]="babnnfmbjokkeieobamoifmeapbbfhje"
)

EXT_DIR="$HOME/.var/app/com.brave.Browser/config/BraveSoftware/Brave-Browser/External Extensions"

mkdir -p "$EXT_DIR"

for id in "${EXTlist[@]}"; do
    cat > "$EXT_DIR/${id}.json" <<EOF
{
  "external_update_url": "https://clients2.google.com/service/update2/crx"
}
EOF
done

echo "Extension manifests installed."
