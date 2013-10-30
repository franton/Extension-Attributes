#!/bin/bash

# Script to interrogate computer on the last time it started up
# Author:  r.purves@arts.ac.uk
# Version 1.0 : 9-1-2013 - Initial Version

time=$( sysctl kern.boottime | cut -c46- )

echo "<result>${time}</result>"
