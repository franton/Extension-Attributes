#!/bin/bash

# Extension attribute to warn if updates are required because none have been done for 30 days.
# Change the "updatelimit" variable to define the amount of days a computer can go without updating.

updatelimit="30"

# Does lastupdated file exist?
if [ -a /usr/lastupdated ] ;
then

	# Read lastupdated file entry into date and store in variable
	lastupdate=$(date -j -f '%a %d %b %Y %T %Z' "`cat /usr/lastupdated`" '+%s')

	# Read current date as total number of seconds
	currentepochtime="$(date "+%s")"
	
	# Work out how many seconds difference there are between them
	DIFF=$(expr $currentepochtime - $lastupdate)
	
	# Convert no. of seconds into minutes, hours and days.
	m=`expr $DIFF / 60`
	h=`expr $m / 60`
	d=`expr $h / 24`
	
	# Is number of days greater than the update policy threshold?
	if [ $d -gt $updatelimit ];
	then
		echo "<result>Warning</result>"
	else
		echo "<result>Don't Warn</result>"
	fi
		
# However ...
else

	# Nope its not there. Return error.
	echo "<result>Data Not Available</result>"

# Close if statement
fi

# All done!
exit 0