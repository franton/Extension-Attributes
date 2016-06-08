#!/bin/bash

# EA to check for auto update setting

check=$( defaults read /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled )

if [ $check = "1" ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>Disabled</false>"
fi