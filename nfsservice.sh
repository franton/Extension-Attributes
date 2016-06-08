#!/bin/bash

# EA to check for NFS server status

check=$( launchctl list | grep nfs | awk '{ print $3 }' )

if [ $check = "com.apple.nfsd" ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>Disabled</false>"
fi