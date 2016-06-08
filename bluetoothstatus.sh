#!/bin/bash

# EA to check for Bluetooth Status

check=$( defaults read /Library/Preferences/com.apple.Bluetooth ControllerPowerState )

if [ $check = "0" ];
then
	echo "<result>Disabled</false>"
else
	echo "<result>Enabled</false>"
fi