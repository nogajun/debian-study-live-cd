#!/bin/sh
set -e

[ -n "$(dpkg -l | grep rhythmbox)" ] || exit 0

apt-get -y --purge remove rhythmbox

