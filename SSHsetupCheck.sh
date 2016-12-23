#!/bin/bash

# Script to determine if the ssh script has been run or not.

test=$( dseditgroup -o read -t group com.apple.access_ssh | awk '/dsAttrTypeStandard:GroupMembership/{y=1;next}y' | xargs )

echo "<result>$test</result>"
