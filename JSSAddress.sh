#!/bin/bash

# EA to determine the JSS address on a target mac

result=$( defaults read /Library/Preferences/com.jamfsoftware.jamf.plist jss_url )

echo "<result>${result}</result>"