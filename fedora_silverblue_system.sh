 #!/bin/bash

# quick note:
# Just a master script for the orchestration of the installations.
# One should instann and reboot the ostree layering first, since
# some installations depend on the packages (e.g. make)

CMD=$1

if [ "$CMD" = "--ostree" ];then
    ./ostree/rpm_ostree_kargs.sh
    ./ostree/rpm_ostree_packages.sh

else
    echo Undefined CMD
fi
