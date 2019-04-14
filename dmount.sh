#!/bin/bash
execute_command() {
	cmd=$1
	echo "Executing: \$$cmd"
	$cmd
}
if [ -z "$1" ]; then
	execute_command "lsblk -o NAME,LABEL"
	exit 1
fi
for var in "$@"; do
	echo "$var"
done
if sudo -n true
then
	echo "You have permissions"
else
	echo "sorry, but did not want to bother you"
fi
# CONF_FILE=$1
# ROUTE="/etc/wpa_supplicant/wlp2s0-$CONF_FILE.conf"
# if [ -f "$ROUTE" ]; then
# 	echo "File exists"
# else
# 	echo "Missing configuration file: $ROUTE!"
# 	exit 1
# fi
# sudo pkill wpa_supplicant;
# sudo wpa_supplicant -B -c "$ROUTE" -i wlp2s0;
# echo "Initializing dhclient"
# sudo dhclient

