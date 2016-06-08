#!/bin/bash

# EA to check for system data files and security updates

check=$( defaults read /Library/Preferences/com.apple.commerce | egrep '(ConfigDataInstall|CriticalUpdateInstall)' )

if [ $check = "ConfigDataInstall = 1; CriticalUpdateInstall = 1;" ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>Disabled</false>"
fi