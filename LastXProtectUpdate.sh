#!/bin/sh

# Script to find the last time Apple updated Xprotect on a target computer.

# Lovingly stolen from https://jamfnation.jamfsoftware.com/discussion.html?id=6521

XPROTECT=`defaults read /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/XProtect.meta LastModification`

echo "<result>$XPROTECT</result>"

exit 0
