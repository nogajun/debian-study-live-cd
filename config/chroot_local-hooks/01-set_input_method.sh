#!/bin/sh
set -e

if [ -n "$(dpkg -l | grep uim-gtk2.0)" ]; then
  # set uim-systray
  /usr/sbin/update-alternatives --set xinput-ja_JP /etc/X11/xinit/xinput.d/uim-systray
fi

# if [ -n "$(dpkg -l | grep scim-bridge-agent)" ]; then
#  # set scim-bridge
#  /usr/sbin/update-alternatives --install /etc/X11/xinit/xinput.d/ja_JP xinput-ja_JP /etc/X11/xinit/xinput.d/scim-bridge 0
#  /usr/sbin/update-alternatives --set xinput-ja_JP /etc/X11/xinit/xinput.d/scim-bridge
# fi

