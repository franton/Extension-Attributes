#!/bin/bash

# Script to report the utilised space on the / mount point
# Based on work by j.durler@arts.ac.uk

# Author      : r.purves@arts.ac.uk
# Version 1.0 : 1-11-2013 - Initial Version

echo "<result>`df / | grep "/" | awk '{print $8}'`</result>"
