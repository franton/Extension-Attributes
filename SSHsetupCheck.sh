#!/bin/bash

# Script to determine if the UAL ssh script has been run or not.

test=$(dseditgroup -o read -t group com.apple.access_ssh | grep dsAttrTypeStandard:NestedGroups -A 1 | grep 03E0A4CA-C915-412C-9F1E-536DA4DB4C93 | wc -l | awk '{print $1}')

if [[ test -eq 0 ]]
then
   echo "<result>Incorrect</result>"
else
   echo "<result>Correct</result>"
fi

exit 0