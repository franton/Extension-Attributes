#!/bin/bash

# EA to check for SSH service status

check=$( systemsetup -getremotelogin )

if [ $check = "Remote Login: On" ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>Disabled</false>"
fi