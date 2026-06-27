#!/bin/bash

#
# *quick note*
# Just a master script for the orchestration of the installations.
# One should instann and reboot the ostree layering first, since
# some installations depend on the packages (e.g. make)
#

CMD=$1

#
# I put vscode inside the ostree section as well, 
# because I am OS layering it as well (rpm installation). 
#
if [ "$CMD" = "--ostree+vscode" ]; then
    echo Layering OStree.
    ./ostree/rpm_ostree_kargs.sh
    ./ostree/rpm_ostree_packages.sh
    ./apps/non-flatpaks/vscode/install.sh
    echo Layering OStree done. 
    echo You should do the reboot here.

elif [ "$CMD" = "--tools" ]; then
    echo Installing tools. 
    ./tools/cheat/install.sh
    ./tools/wikiman/install.sh
    ./tools/micromamba/install.sh
    ./tools/yt-dlp/install.sh
    ./tools/keyd/install.sh
    ./tools/keyd/enable_at_startup.sh
    ./tools/keyd/export_settings.sh
    ./tools/keyd/reload.sh
    echo Tools done.

elif [ "$CMD" = "--apps" ]; then
    echo Installing flatpaks.
    ./apps/flatpaks_user_remote_init.sh
    ./apps/flatpaks_install.sh
    ./apps/flatpaks/brave/post_install_extensions_install.sh
    ./apps/flatpaks/brave/post_install_config_cp.sh
    ./apps/flatpaks/konsole/post_install_fix_%d.sh
    ./apps/flatpaks/konsole/post_install_cp_config.sh
    ./apps/flatpaks/marktext/post_install_cp_config.sh
    ./apps/flatpaks/zed/post_install_config_cp.sh
    echo Installing flatpaks done. 
    echo Installing non-flatpaks. 
    ./apps/non-flatpaks/texstudio/install.sh
    ./apps/non-flatpaks/texstudio/post_install_config_cp.sh
    ./apps/non-flatpaks/texstudio/post_install_desktop.sh
    ./apps/non-flatpaks/vscode/post_install_config_cp.sh                # finalize vs code here 
    echo Installing non-flatpaks done.
    echo Uninstalling unecessary flatpaks.
    ./apps/flatpaks/flatpaks_uninstall.sh
    echo Uninstalling unecessary flatpaks done.
    ./apps/flatpaks_uninstall.sh
    echo Hiding firefox. 
    ./apps/hide_firefox.sh
    echo "Hiding ptyxis (terminal)."
    ./apps/hide_ptyxis.sh
    echo Apps done.

elif [ "$CMD" = "--gnome-tweaks" ]; then
    ./gnome-tweaks/gsettings_set_all.py
    ./gnome-tweaks/gsettings_set_all_post_script.sh
    ./gnome-tweaks/set_templates.sh
    echo Gnome-Tweaks done.

elif [ "$CMD" = "--gnome-extensions" ]; then
    ./gnome-extensions/install.sh
    ./gnome-extensions/install_post_dconf_loading.sh

else
    echo Undefined CMD
fi
