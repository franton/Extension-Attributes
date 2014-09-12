#!/bin/bash

# Script to determine the JSS address on a target mac

# Author : contact@richard-purves.com
# Version 1.0 : 21-2-2013 - Initial Version.

result=$( defaults read /Library/Preferences/com.jamfsoftware.jamf.plist jss_url )

echo "<result>${result}</result>"
