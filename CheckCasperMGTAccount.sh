#!/bin/bash

# Script to detect if the Casper remote management account is present

# Modified from https://jamfnation.jamfsoftware.com/discussion.html?id=6520

groupmember=$( dscl /Local/Default read /Groups/admin GroupMembership | tr ' ' '\n' | grep -c 'sshadmin' | tr '\n' ' ' )

if [ $groupmember == 1 ] ;
then
  echo "<result>Present</result>"
else
  echo "<result>Missing</result>"
fi
