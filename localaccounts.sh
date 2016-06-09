#!/bin/bash

# EA to detect all local accounts on a system that aren't the local admin

OIFS=$IFS
IFS=$'\t\n'

accounts=( $(dscl . -list /Users) )

for (( a=0; a < ${#accounts[@]}; a++ ));
do

	if [[ ${accounts[$a]} != "admin" ]];
	then
		AccountUID=($( dscl . -read /Users/${accounts[$a]} | grep UniqueID | awk '{print $2}' ))
		if [[ $AccountUID -gt 500 ]] && [[ $AccountUID -lt 1000 ]];
		then
			report=$report${accounts[$a]}" "
		fi
	fi 
done

IFS=$OIFS

if [[ $report = "" ]];
then
	echo "<result>None Detected</result>"
else
	echo "<result>$report</result>"
fi
