#!/bin/bash

# EA to check for passwords required on wake

check=$( defaults read com.apple.screensaver askForPassword )

if [ $check = "1" ];
then
	echo "<result>Enabled</false>"
else
	echo "<result>Disabled</false>"
fi