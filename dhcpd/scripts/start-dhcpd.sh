#!/bin/bash
SCRIPT_DIR=/etc/dhcp/scripts 
"$SCRIPT_DIR"/multiconf.sh

/etc/init.d/isc-dhcp-server stop
/etc/init.d/isc-dhcp-server start