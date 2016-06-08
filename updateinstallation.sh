#!/bin/bash

# EA to check for OS X update installation

check=$( defaults read /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired )

if [ $check = "1" ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>Disabled</false>"
fi