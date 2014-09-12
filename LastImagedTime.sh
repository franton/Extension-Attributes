#!/bin/bash

# Script to report when the computer was last imaged
# This is reliant on a timestamp file created as part of the firstrun script.

# Author	 	: contact@richard-purves.com
# Version 1.0	: 09-08-2013 - Initial Version

if [ -z /usr/lastimaged ] ;
then
echo "<result>Not Available</result>"
else
echo "<result>`cat /usr/lastimaged`</result>"
fi
