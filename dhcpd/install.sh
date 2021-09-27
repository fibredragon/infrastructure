#!/bin/bash
rm -rf /usr/bin/start-dhcpd.sh
rm -rf /etc/dhcp/scripts/
mkdir -p /etc/dhcp/scripts/

curl -L -o /etc/dhcp/scripts/dhcpd.conf https://raw.githubusercontent.com/fibredragon/infrastructure/master/dhcpd/scripts/dhcpd.conf
curl -L -o /etc/dhcp/scripts/multiconf.sh https://raw.githubusercontent.com/fibredragon/infrastructure/master/dhcpd/scripts/multiconf.sh
curl -L -o /usr/bin/start-dhcpd.sh https://raw.githubusercontent.com/fibredragon/infrastructure/master/dhcpd/scripts/start-dhcpd.sh
curl -L -o /etc/systemd/system/dhcpd.service https://raw.githubusercontent.com/fibredragon/infrastructure/master/dhcpd/systemd.service

chmod +x /usr/bin/start-dhcpd.sh
chmod +x /etc/dhcp/scripts/multiconf.sh