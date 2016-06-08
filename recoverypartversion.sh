#!/bin/bash

# EA to determine the recovery partition version

recoverypart=$( diskutil list | grep "Recovery HD" | awk '{ print $7 }' )

mkdir /Volumes/Recovery\ HD
mount -t hfs -o nobrowse /dev/$recoverypart /Volumes/Recovery\ HD

version=$( defaults read /Volumes/Recovery\ HD/System/Library/CoreServices/SystemVersion.plist ProductVersion )

diskutil unmount $recoverypart

echo "<result>$version</result>"