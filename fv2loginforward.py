#!/usr/bin/python

# EA to check for FV2 login forwarding

import CoreFoundation

domain = 'com.apple.loginwindow'
key = 'DisableFDEAutoLogin'

key_value = CoreFoundation.CFPreferencesCopyAppValue(key, domain)

if key_value == True:
    print "<result>Enabled</result>"
else:
    print "<result>Disabled</result>"
