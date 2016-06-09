#!/bin/bash

# EA to check for Remote Management status

check=$( pgrep -l ARDAgent | awk '{ print $2 }' )

if [ "$check" = "ARDAgent" ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>Disabled</false>"
fi
