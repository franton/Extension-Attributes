#!/bin/bash

# Script to interrogate computer on the last time it started up
# Author:  contact@richard-purves.com
# Version 1.0 : 9-1-2013 - Initial Version
# Version 2.0 : 26-1-2015 - Ripped off mm2270 on https://jamfnation.jamfsoftware.com/discussion.html?id=13122
# This variant is superior to my version as it allows use of the JSS EA date reporting rather than text field.
# Now you can far more easily use smart groups to keep track of this. Thanks Mikey!

lastBootRaw=$(sysctl kern.boottime | awk '{print $5}' | sed 's/,$//')
lastBootFormat=$(date -jf "%s" "$lastBootRaw" +"%Y-%m-%d %T")

echo "<result>$lastBootFormat</result>"
