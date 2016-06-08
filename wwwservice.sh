#!/bin/bash

# EA to check for HTTP server status

check=$( pgrep -o -l httpd | awk '{ print $2 }' )

if [ $check = "httpd" ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>Disabled</false>"
fi