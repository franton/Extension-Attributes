#!/bin/bash

# EA to check for FTP server status

check=$( launchctl list | grep ftp | awk '{ print $3 }' )

if [ "$check" = "com.apple.servermgrd.ftp" ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>Disabled</false>"
fi
