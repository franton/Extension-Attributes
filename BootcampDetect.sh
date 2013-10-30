#!/bin/sh

# Script to detect if a Bootcamp partition is present
# Returns "Present" or "Not Present" for clarity.

# Implemented : r.purves@arts.ac.uk
# Version 1.0 : 18-12-2012 - Initial Version

# Shamelessly stolen from http://derflounder.wordpress.com/2012/12/17/detecting-boot-camp-partitions-with-casper/

# Using diskutil list to check for disk partitions reporting as "Microsoft Basic Data"

BOOTCAMP_DETECT=$( /usr/sbin/diskutil list | grep -c "Microsoft Basic Data" )

# If Microsoft Basic Data partition is reported by diskutil, 
# script reports "Present" else it reports "Not Present"

if [[ "${BOOTCAMP_DETECT}" == "1" ]]; then
      result="Present"
   else
      result="Not Present"
fi
echo "<result>${result}</result>"

exit 0
