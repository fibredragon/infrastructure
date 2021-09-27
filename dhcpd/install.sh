#!/bin/bash
rm -rf /usr/bin/start-dhcpd.sh
rm -rf /etc/dhcp/scripts/
mkdir -p /etc/dhcp/scripts/

curl -L -o /etc/dhcp/scripts/dhcpd.conf https://raw.githubusercontent.com/fibredragon/infrastructure/master/dhcpd/scripts/dhcpd.conf
curl -L -o /etc/dhcp/scripts/start-dhcpd.sh https://raw.githubusercontent.com/fibredragon/infrastructure/master/dhcpd/scripts/start-dhcpd.sh
