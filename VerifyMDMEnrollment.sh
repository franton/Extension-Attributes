#!/bin/sh

# Script to check if the Casper MDM profile has been installed.
# This is needed to make sure that our computers are able to receive configuration profiles.

# Author : r.purves@arts.ac.uk
# Version: 1.0 - Inital Version

mdmEnrollmentProfileID="00000000-0000-0000-A000-4A414D460003"
enrolled=`/usr/bin/profiles -C | /usr/bin/grep "$mdmEnrollmentProfileID"`

if [ "$enrolled" != "" ]; then
	echo "<result>Enrolled</result>"
else
	echo "<result>Not Enrolled</result>"
fi
