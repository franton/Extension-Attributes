#!/bin/bash

# Script to read MDM profile address into an Extension Attribute
# This is needed to make sure that our computers are pointing to the correct URL

# Author : r.purves@arts.ac.uk
# Version: 1.0 - Inital Version

# Read the current computer profile and grep for the organisation name

CurrentJSSURL=$( profiles -C -v | grep -m1 "organization:" | cut -d " " -f 4 )

# Check to see if a MDM cert is present

if [ -z $CurrentJSSURL ];
then
   echo "<result>No MDM Certificate</result>"
   exit 0
fi

# Since a cert is present, report it's address. Leave the checking to a smart group.

echo "<result>$CurrentJSSURL</result>"

exit 0
