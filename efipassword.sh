#!/bin/bash

# EA to check for EFI Password status

check=$( /usr/sbin/firmwarepasswd -mode )

if [ "$check" = "Mode: none" ]; then
	echo "<result>Disabled</false>"
elif [ "$check" = "Mode: command" ]; then
	echo "<result>Command</false>"
elif [ "$check" = "Mode: full" ]; then
  echo "<result>Full</false>"
fi
