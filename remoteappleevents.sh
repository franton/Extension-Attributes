#!/bin/bash

# EA to check for Apple Remote Events status

check=$( systemsetup -getremoteappleevents )

if [ $check = "Remote Apple Events: Off" ];
then
	echo "<result>Disabled</false>"
else
	echo "<result>Enabled</false>"
fi