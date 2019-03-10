#!/bin/bash
if [ -z "$1" ]; then
	echo "Missing argument!"
	exit 1
fi
CONF_FILE=$1
ROUTE="/etc/wpa_supplicant/wlp2s0-$CONF_FILE.conf"
if [ -f "$ROUTE" ]; then
	echo "File exists"
else
	echo "Missing configuration file: $ROUTE!"
	exit 1
fi
sudo pkill wpa_supplicant;
sudo wpa_supplicant -B -c "$ROUTE" -i wlp2s0;
echo "Initializing dhclient"
sudo dhclient

