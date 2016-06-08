#!/bin/bash

# EA to check for Remote Login status

check=$( systemsetup -getremotelogin )

if [ $check = "Remote Login: Off" ];
then
	echo "<result>Disabled</false>"
else
	echo "<result>Enabled</false>"
fi