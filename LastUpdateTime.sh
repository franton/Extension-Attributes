#!/bin/bash

# Script to report when the computer was last updated
# This is reliant on a timestamp file created as part of the update process

# Author	 	: contact@richard-purves.com
# Version 1.0	: 12-08-2013 - Initial Version

if [ -z /usr/lastupdated ] ;
then
echo "<result>Not Available</result>"
else
echo "<result>`cat /usr/lastupdated`</result>"
fi
