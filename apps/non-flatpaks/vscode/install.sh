#!/bin/bash
echo *quick note:* This installation needs a reboot.
RPM="$HOME/Downloads/vscode.rpm"
URL="https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64"
wget -O $RPM $URL
rpm-ostree install $RPM
rm $RPM