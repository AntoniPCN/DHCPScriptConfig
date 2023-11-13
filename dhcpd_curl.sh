#!/bin/bash

# Purpose: Config ubuntu DHCP server
# https://ubuntu.com/server/docs/network-dhcp
# Author: Antoni Alvarez Garcia
# ------------------------------------------

headerToken=""
OWNER="AntoniPCN"
REPO="DHCPScriptConfig"
PATHFILE="main/dhcpd.conf" 
f_dchpd_conf="https://raw.githubusercontent.com/$OWNER/$REPO/$PATHFILE"

echo $f_dchpd_conf

sudo apt update -y
apt install isc-dhcp-server -y

curl $headerToken -O -L $f_dchpd_conf

cp dhcpd.conf /etc/dhcp

systemctl restart isc-dhcp-server
