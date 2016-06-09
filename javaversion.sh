#!/bin/bash

# EA to show Java version

pluginpath="/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/"

if [ -d "$pluginpath" ];
then
	javaVendor=$( /usr/bin/defaults read "${pluginpath}/Contents/Info" CFBundleIdentifier )
	version=$( /usr/bin/defaults read "${pluginpath}/Contents/Info" CFBundleShortVersionString )
 
	if [ "$javaVendor" = "com.oracle.java.JavaAppletPlugin" ];
	then
		echo "<result>Oracle $version</result>"
	else
		echo "<result>Apple $version</result>"
	fi
else
	echo "<result>No Java Detected</result>"
fi
