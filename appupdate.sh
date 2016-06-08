#!/bin/bash

# EA to check for auto app update setting

check=$( defaults read /Library/Preferences/com.apple.commerce AutoUpdate )

if [ $check = "1" ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>Disabled</false>"
fi