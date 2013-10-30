#!/bin/bash

# Script to check pmset schedule.
# This will quickly show if the energy saver policy has been correctly set.

# Author r.purves@arts.ac.uk
# Version 1.0 : 16-01-2013 - Initial Version

pmsetting=$( pmset -g sched | tail +2 )

echo "<result>"$pmsetting"</result>"

exit 0
