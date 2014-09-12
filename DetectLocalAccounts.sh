#!/bin/bash

# Detects all local accounts on a system that aren't admin

# Author      : contact@richard-purves.com

# Version 1.0 : 27-01-2014 - Initial Version

# Backup IFS and set it not to split on spaces

OIFS=$IFS
IFS=$'\t\n'

# Read all user accounts into a variable for later processing

accounts=( $(dscl . -list /Users) )

# Get a list of all users on the computer, read it into variable and loop through them.

for (( a=0; a < ${#accounts[@]}; a++ ));
do

# Local uadmin account is to be excluded from this list

	if [[ ${accounts[$a]} != "admin" ]];
	then
		
# Get UniqueID of current user in list
		
		AccountUID=($( dscl . -read /Users/${accounts[$a]} | grep UniqueID | awk '{print $2}' ))
		
# If UniqueID is over 1000 then account will be a network account, less than 500 is a local system account.
		
		if [[ $AccountUID -gt 500 ]] && [[ $AccountUID -lt 1000 ]];
		then
				
# Add current username to reporting variable and finish this if statement

			report=$report${accounts[$a]}" "

		fi
	
# End the uadmin check here.
	
	fi 

# Complete the main loop

done

# Set IFS back to default

IFS=$OIFS

# Report account findings

if [[ $report = "" ]];
then
	echo "<result>No unauthorised local accounts</result>"
else
	echo "<result>$report</result>"
fi
	
# All done, finished!

exit 0
