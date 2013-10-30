#!/bin/bash

# Script to check Gatekeeper status on a mac and report via Extension Attribute
# Lovingly stolen and modified from http://derflounder.wordpress.com/2012/09/20/gatekeeper-status-check-script/

# Implemented : r.purves@arts.ac.uk
# Version : 1.0 - Initial Version

# Check for current OS version. We're only looking at 10.8 right now.

osvers=$( sw_vers -productVersion | awk -F. '{print $2}' )

# If 10.8, check status and report.

if [[ ${osvers} -eq 8 ]]; then
    gatekeeper_status=$( spctl --status | grep "assessments" | cut -c13- )
   if [ $gatekeeper_status = "disabled" ]; then
      result=Disabled
   else
      result=Active
   fi
   echo "<result>${result}</result>"
fi

# If not 10.8 then report failure.

if [[ ${osvers} -lt 7 ]]; then
  echo "<result>Unavailable</result>"
fi
 
if [[ ${osvers} -ge 9 ]]; then
  echo "<result>Unavailable</result>"
fi
