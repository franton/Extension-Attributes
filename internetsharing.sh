#!/bin/bash

# EA to check for Internet Sharing status

check=$( /usr/libexec/PlistBuddy -c "print :NAT:Enabled:" /Library/Preferences/SystemConfiguration/com.apple.nat.plist )

if [ $check = "1" ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>Disabled</false>"
fi
