#!/bin/bash

# EA to check for Internet Sharing status

check=$( /usr/libexec/PlistBuddy -c "print :NAT:Enabled:" /Library/Preferences/SystemConfiguration/com.apple.nat.plist )

if [ $check = "0" ];
then
	echo "<result>Disabled</false>"
else
	echo "<result>Enabled</false>"
fi