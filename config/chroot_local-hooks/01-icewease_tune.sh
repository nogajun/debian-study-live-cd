#!/bin/bash -x
set -e

[ -f /usr/bin/iceweasel ] || exit 0

ICEWEASEL_PREFS=/etc/iceweasel/profile/prefs.js
cat << _EOL_ >>${ICEWEASEL_PREFS}
/* Debian Live tune */
user_pref("browser.cache.disk.parent_directory","/tmp");
user_pref("browser.cache.disk.capacity", 5000);
user_pref("browser.startup.homepage", "http://www.debian.or.jp/");
_EOL_

# gnash
if [ -f /usr/lib/gnash/libgnashplugin.so ]; then
/usr/sbin/update-alternatives --set flash-mozilla.so /usr/lib/gnash/libgnashplugin.so
fi

