#!/bin/bash

# Script to report the utilised space on the / mount point

# Author      : contact@richard-purves.com
# Version 1.0 : 1-11-2013 - Initial Version

echo "<result>`df / | grep "/" | awk '{print $8}'`</result>"
