#!/bin/bash

# Script to find the name of the current boot volume

# Author  : contact@richard-purves.com
# Version : 1.0 - Initial Version
# Version : 1.0 - Changed from reporting only to fixing

# Grab the current boot volume name (sanity check just in case smart group is inaccurate)

BootVolume=$( diskutil info / | grep "Volume Name" | cut -c 30- )

# Check and rename if necessary

if [ "$VolumeName" != "Macintosh HD" ];
then
	diskutil renameVolume "$BootVolume" "Macintosh HD"
fi

# Grab the current boot volume name again and report to the JSS.

BootVolume=$( diskutil info / | grep "Volume Name" | cut -c 30- )

echo "<result>$BootVolume</result>"

exit 0
