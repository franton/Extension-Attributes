#!/bin/bash

# Script to check pmset settings.
# This will quickly show if the energy saver policy has been correctly set per policy.

# Author r.purves@arts.ac.uk
# Version 1.0 : 18-01-2013 - Initial Version

pmsetting=$( pmset -g | grep displaysleep )

echo "<result>"$pmsetting"</result>"

exit 0
