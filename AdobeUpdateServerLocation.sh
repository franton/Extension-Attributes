#!/bin/sh

# Report the address of the configured Adobe Update Server for CS/CC.

# Author: r.purves@arts.ac.uk

updaterConfigFile="/Library/Application Support/Adobe/AAMUpdater/1.0/AdobeUpdater.Overrides"

if [ -f "$updaterConfigFile" ]; then
result=`/bin/cat "$updaterConfigFile" | grep -m 1 "Domain" | sed -e 's/<[^>]*>//g' | cut -f 1,2,3 -d'/' | awk '{print $1}'`
echo "<result>$result</result>"
else
echo "<result>No Adobe Update Server Set</result>"
fi
