#!/bin/sh
set -e

[ -f "/usr/bin/gnome-do" ] || exit 0

GNOMEDO_CONF=/usr/share/gconf/defaults/10_gnome-do
cat << _EOL_ >>${GNOMEDO_CONF}
/apps/gnome-do/preferences/Do/Platform/Linux/TrayIconPreferences/StatusIconVisible	true
/apps/gnome-do/preferences/Do/CorePreferences/QuietStart	true
_EOL_

