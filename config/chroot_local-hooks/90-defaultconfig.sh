#!/bin/bash -x
set -e

DEFAULT_DIR=/etc/default

#[ -f ${DEFAULT_DIR}/bluetooth ] && sed -i 's/BLUETOOTH_ENABLED=1/BLUETOOTH_ENABLED=0/' ${DEFAULT_DIR}/bluetooth
#[ -f ${DEFAULT_DIR}/gpsd ] && sed -i 's/START_DAEMON="true"/START_DAEMON="false"/' ${DEFAULT_DIR}/gpsd

if [ -f "${DEFAULT_DIR}/libvirt-bin" ]; then
	sed -i 's/start_libvirtd="yes"/start_libvirtd="no"/' ${DEFAULT_DIR}/libvirt-bin
fi

if [ -f "${DEFAULT_DIR}/smartmontools" ]; then
	echo "start_smartd=no" >> ${DEFAULT_DIR}/smartmontools
fi

