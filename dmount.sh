#!/bin/bash
# ask_for_permissions() {
# }
do_mount() {
	for var in "$@"; do
		echo "$var"
	done
}
ask_for_permissions() {
# !!!!!!! START OF INNER BLOCK (If I indent this, it breaks)
echo "Enter sudo credentials"
IFS= read -rs PASSWD
sudo -k
if sudo -lS &> /dev/null << EOF
$PASSWD
EOF
then
	echo "Permission granted"
	do_mount $@
else
	echo 'Wrong password.'
fi
# !!!!!!! END OF INNER BLOCK (If I indent this, it breaks)
}
execute_command() {
	cmd=$1
	echo "Executing: \$$cmd"
	$cmd
}
if [ -z "$1" ]; then
	execute_command "lsblk -o NAME,LABEL"
	exit 1
fi
if sudo -n true; then
	echo "You have permissions"
	do_mount $@
else
	ask_for_permissions $@
fi
