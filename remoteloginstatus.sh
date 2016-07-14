#!/bin/bash

# EA to check for remote login status

check=$( systemsetup -getremotelogin )

if [ "$check" = "Remote Login: On" ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi
