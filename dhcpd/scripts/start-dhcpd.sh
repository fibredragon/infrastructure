#!/bin/bash
SCRIPT_DIR=/etc/dhcp/scripts 
"$SCRIPT_DIR"/multiconf.sh

sudo systemctl stop isc-dhcp-server.service
wait $!
sudo systemctl start isc-dhcp-server.service