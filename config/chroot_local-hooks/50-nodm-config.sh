#!/bin/bash -x
set -e

DEFAULT_DIR=/etc/default
[ -f "${DEFAULT_DIR}/nodm" ] || exit 0

sed -i 's/NODM_ENABLED=false/NODM_ENABLED=true/' ${DEFAULT_DIR}/nodm
sed -i 's/NODM_USER=root/NODM_USER=user/' ${DEFAULT_DIR}/nodm

