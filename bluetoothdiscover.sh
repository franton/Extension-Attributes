#!/bin/bash

# EA to check for Bluetooth Discoverability

check=$( system_profiler SPBluetoothDataType | grep -i discoverable | awk '{ print $1 $2 }' )

if [ "$check" = "" ];
then
    echo "<result>Missing Bluetooth Device</result>"
else
    echo "<result>$check</result>"
fi
