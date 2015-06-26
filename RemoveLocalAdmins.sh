#!/bin/bash

# EA to find non authorised local accounts. This will remove their admin privs but leave the accounts behind.

# Author  : contact@richard-purves.com
# Version : 1.0 - Initial Version

# Find all users on the computer between UID's 501 - 1000.
# Lower than 501 are system accounts plus ours.
# Greater than 1000 are Active Directory accounts. They may be authorised.

# I split these lines up for clarity. You could do it all on one line, but it works.

UserList=$( dscl . list /Users UniqueID )
UserList=$( echo $UserList | awk '$2 >= 501 {print $1}' )
UserList=$( echo $UserList | awk '$2 <= 1000 {print $1}' )

# Did we find anything? Quit if we did not.

if [ $UserList = "" ];
then
	echo "No local accounts found. Exiting"
	exit 0
fi

# Go through the user folder, find the uid of an account and process
# Let's make sure we exclude the Shared folder ;)

for Account in "$UserList"
do
	echo "ERROR: Removing admin rights from local account: $Account"
	/usr/sbin/dseditgroup -o edit -d $Account -t user admin
done
