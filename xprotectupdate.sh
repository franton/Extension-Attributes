#!/bin/bash

# EA to determine the last xprotect update

date=$( ls -lT /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/XProtect.meta.plist | awk '{ print $6,$7,$8,$9 }' )

format=$( date -j -f "%d %b %H:%M:%S %Y" "$date" +"%Y-%m-%d %T" )

echo "<result>$format</result>"
