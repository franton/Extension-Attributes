#!/bin/bash

# Script to report the Volume Name on disk0

# Author      : r.purves@arts.ac.uk
# Version 1.0 : 3-11-2013 - Initial Version

echo "<result>`diskutil info / | grep "Volume Name" | cut -c 30-`</result>"
