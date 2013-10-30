#!/bin/bash

# Script to check installed version of Java Applet Plugin
# returns values like "No Oracle Java 7" or "Java 7 Update ??"

# Script based on http://derflounder.wordpress.com/2012/10/31/casper-extension-attribute-scripts-to-report-java-browser-plug-in-info/

# Implementation : r.purves@arts.ac.uk
# Version 1.0	 : 12-12-2012 - Initial Version

# Set variables up here

javaVendor=$( /usr/bin/defaults read /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Info.plist CFBundleIdentifier )
pluginpath="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin"

# See if Java is made by Apple or Oracle.

if [ "$javaVendor" = "com.oracle.java.JavaAppletPlugin" ]; 
then
	vendorresult="Oracle"
elif [ "$javaVendor" = "com.apple.java.JavaAppletPlugin" ];
then
	vendorresult="Apple"
elif [ "$javaVendor" = "" ]; then
	vendorresult=None
fi

echo $javaVendor
echo $vendorresult

# If Oracle Java is present report it's version number.

if [ "$vendorresult" = "Oracle" ];
then

	# Detect plugin version
	version=$( /usr/bin/defaults read "${pluginpath}/Contents/Info" CFBundleShortVersionString 2>/dev/null )

	# Echo this out to the Extension Attribute
	echo "<result>${version}</result>"
else
	echo "<result>No Oracle Java 7</result>"
fi
