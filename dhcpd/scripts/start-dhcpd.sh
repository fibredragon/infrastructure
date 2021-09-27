#!/bin/bash
SCRIPT_DIR=/etc/dhcp/scripts 
"$SCRIPT_DIR"/multiconf.sh

/etc/init.d/isc-dhcp-server stop
sudo systemctl stop isc-dhcp-server.service
/etc/init.d/isc-dhcp-server start
sudo systemctl start isc-dhcp-server.service