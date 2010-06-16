#!/bin/bash -x
set -e

[ -f "/usr/bin/startlxde" -a -f "/usr/bin/pcmanfm" ] || exit 0

LXSESSION_DIR=/etc/xdg/lxsession/LXDE

if [ -f "${LXSESSION_DIR}/autostart" ]; then
        sed -i 's/-d$/-d\ --desktop/' ${LXSESSION_DIR}/autostart
fi

