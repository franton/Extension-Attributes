#!/bin/bash

# Script to report the SMART status on disk0

# Author                 : r.purves@arts.ac.uk
# Version 1.0        : 1-11-2013 - Initial Version

echo "<result>`diskutil info disk0 | grep SMART | awk '{print $3}'`</result>"
