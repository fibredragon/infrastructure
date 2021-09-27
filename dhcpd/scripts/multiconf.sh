#!/bin/bash
if ((EUID != 0)); then
    echo "You must run DHCP Multiconf as root!"
    exit 1
fi

RULESDIRECTORY=/etc/dhcp/rules.d

if [ ! -d "/etc/dhcp/rules.d" ]; then
    echo "/etc/dhcp/rules.d must exist!"
    exit 1
fi

cd /etc/dhcp/rules.d

echo > /etc/dhcp/dhcpd.conf
echo "subnet 0.0.0.0 netmask 0.0.0.0 {" >> /etc/dhcp/dhcpd.conf
echo "      authoritative;" >> /etc/dhcp/dhcpd.conf
echo "      default-lease-time 21600000;" >> /etc/dhcp/dhcpd.conf
echo "      max-lease-time 432000000;" >> /etc/dhcp/dhcpd.conf
echo "}" >> /etc/dhcp/dhcpd.conf
echo "" >> /etc/dhcp/dhcpd.conf

echo "Checking for rules.."
for filename in $RULESDIRECTORY/*; do
    cat $filename >> /etc/dhcp/dhcpd.conf
done