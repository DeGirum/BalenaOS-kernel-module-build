#!/usr/bin/env sh

if lsmod | grep -q "cdapci"; then
	echo "Module correctly loaded"
	if [ -e '/dev/cda00' ]; then
		echo "ORCA device found and the driver binded to it"
	else
		echo "No ORCA device found!"
		exit 1
	fi
else
	echo "Something went wrong!"
	exit 1
fi

# A background sleep allows to handle signals
exec /bin/sh -c "trap : TERM INT; sleep 9999999999d & wait"
