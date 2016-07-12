#!/usr/bin/python

# EA to check if the do not update JAMF binary is set

import CoreFoundation

domain = 'com.jamfsoftware.jamf'
key = 'do_not_upgrade_jamf'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>" 
