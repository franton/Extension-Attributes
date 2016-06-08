#!/bin/bash

# EA to check for Bluetooth Discoverability

check=$( system_profiler SPBluetoothDataType | grep -i discoverable | awk '{ print $1 $2 }' )

echo "<result>$check</false>"
