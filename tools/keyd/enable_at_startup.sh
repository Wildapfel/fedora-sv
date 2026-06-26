#!/bin/bash

#
# *quick note*
# - Low-level hardware communication = root/System service 
#   required (not user-wide)
#

CUSTOM_KEY_SERVICE="/etc/systemd/system/custom-keyd.service" 

sudo sh -c "cat > $CUSTOM_KEY_SERVICE << EOF
[Unit]
Description=Custom key remapping daemon
After=systemd-udev-settle.service
Wants=systemd-udev-settle.service

[Service]
Type=simple
ExecStart=/usr/local/bin/keyd
Restart=always
RestartSec=2
User=root
Group=root

[Install]
WantedBy=multi-user.target
EOF"

# wrap up
sudo systemctl daemon-reload
sudo systemctl enable custom-keyd.service
sudo systemctl start custom-keyd.service