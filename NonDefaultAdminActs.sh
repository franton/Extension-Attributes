#!/bin/bash

# Script to detect non default admin accounts

# Lovingly stolen from https://jamfnation.jamfsoftware.com/discussion.html?id=6520

groupmember=`dscl /Local/Default read /Groups/admin GroupMembership | tr ' ' '\n' | grep -Ev 'root|uadmin|UAdmin|GroupMembership:|admin' | tr '\n' ' '`

if [ "$groupmember" == "" ] ;
then
  echo "<result>Default uadmin account</result>"
else
  echo "<result>$groupmember</result>"
fi

exit 0
