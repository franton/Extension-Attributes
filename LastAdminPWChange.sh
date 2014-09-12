#!/bin/bash

# Script to report the last time the local account had it's password changed.

# Author : contact@richard-purves.com
# Version: 1.0 - Initial Version

# In order this will read the admin account record
# grep the last password set time field plus the line after it.
# delete the first line to remove the xml header field
# remove all spaces
# strip off the <date> and </date> tags
# replace the T and Z characters with spaces to make things readable.

lastdate=$( dscl . read /Users/admin | grep -A1 passwordLastSetTime | sed '1d' | sed 's/ $//g' | sed -e "s/<date>\(.*\)<\/date>/\1/" | tr "|" " " | sed 's/T/\ /' | sed 's/Z/\ /' )

# Now report to the JSS

echo "<result>$lastdate</result>"
