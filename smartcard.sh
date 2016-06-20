#!/bin/bash

# EA to determine if smartcard access is enabled

test="Current smartcard login state: enabled (system.login.console enabled, authentication rule enabled)"
check=$( security authorizationdb smartcard status 2>/dev/null | grep -c "^$test" )

if [ "$check" = 1 ];
then
	echo "<result>Enabled</result>"
else
	echo "<result>Disabled</result>"
fi
