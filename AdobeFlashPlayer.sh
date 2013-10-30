#!/bin/sh

# Script to find if Adobe Flash Player is installed and report it's version number to an extension attribute.

# Author : r.purves@arts.ac.uk
# Version 1.0 : 14-12-2012 - Initial Version

# Use default read to get the version number from the expected location.

FlashVersion=$( /usr/bin/defaults read /Library/Internet\ Plug-Ins/Flash\ Player.plugin/Contents/Info CFBundleShortVersionString )

# Read the version number, then report it.
# Report "Not Installed" as it isn't present.

if [[ $FlashVersion != "" ]] ;
then
echo "<result>${FlashVersion}</result>"
else
echo "<result>Not Installed</result>"
fi
