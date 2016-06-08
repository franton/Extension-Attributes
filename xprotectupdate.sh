#!/bin/bash

# EA to determine the last xprotect update

XPROTECT=`ls -l /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/XProtect.meta.plist | awk '{print $6,$7,$8}'`

echo "<result>$XPROTECT</result>"