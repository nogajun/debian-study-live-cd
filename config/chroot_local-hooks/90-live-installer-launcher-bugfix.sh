#!/bin/bash -x
set -e

APPLICATIONS_DIR=/usr/share/applications

if [ -f "${APPLICATIONS_DIR}/live-installer-launcher.desktop" ]; then
	sed -i '/^TryExec/d' ${APPLICATIONS_DIR}/live-installer-launcher.desktop
fi
