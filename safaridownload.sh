#!/bin/bash

# EA to check for Safari's opening "safe" files on download

check=$( defaults read com.apple.Safari AutoOpenSafeDownloads )

if [ $check = "0" ];
then
	echo "<result>Disabled</false>"
else
	echo "<result>Enabled</false>"
fi