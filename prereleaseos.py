#!/usr/bin/python

# EA to check for macOS beta disable key

import CoreFoundation

domain = 'com.apple.SoftwareUpdate'
key = 'AllowPreReleaseInstallation'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == 1:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>" 
