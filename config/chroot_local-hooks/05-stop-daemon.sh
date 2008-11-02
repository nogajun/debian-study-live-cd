#!/bin/sh

set -e

DAEMON="openbsd-inetd stop-bootlogd cron saned clamav-freshclam rsync samba cups portmap rsyslog openvpn"
for i in $DAEMON; do /usr/sbin/update-rc.d -f $i remove; done