#!/bin/bash

# Is the .curlrc file present for the casper management account?
# If not create it!

# r.purves@arts.ac.uk

# Detect current OS version

osvers=$(sw_vers -productVersion | awk -F. '{print $2}')

# Is this 10.9? If so continue.

if [[ ${osvers} -ge 9 ]];
then

# Does /var/sshadmin/.curlrc exist?

	if [[ -f /var/sshadmin/.curlrc ]];
	then
		echo "Patched!"
# If not, create it!
	else
		touch /var/sshadmin/.curlrc
		echo "-3" >> /var/sshadmin/.curlrc
	fi

# Report if 10.8 or other OS.
else
	echo "<result>Not Required</result>"
    exit 0		

# All done!
fi

exit 0