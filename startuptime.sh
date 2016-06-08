#!/bin/bash

# EA to determine the last startup time

lastBootRaw=$(sysctl kern.boottime | awk '{print $5}' | sed 's/,$//')
lastBootFormat=$(date -jf "%s" "$lastBootRaw" +"%Y-%m-%d %T")

echo "<result>$lastBootFormat</result>"