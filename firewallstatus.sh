#!/bin/bash

# EA to check for Firewall status

check=$( defaults read /Library/Preferences/com.apple.alf.plist globalstate )

if [ $check = "0" ];
then
	echo "<result>Disabled</false>"
else
	echo "<result>Enabled</false>"
fi