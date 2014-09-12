#!/bin/bash

# Script to check installed version of Java Applet Plugin
# returns values like "No Apple Java 6" or "14.x.x"

# Script based on http://derflounder.wordpress.com/2012/10/31/casper-extension-attribute-scripts-to-report-java-browser-plug-in-info/

# Implementation : contact@richard-purves.com
# Version 1.0	 : 28-02-2013 - Initial Version

# Set variables up here

javaVendor=$( defaults read /System/Library/Java/Support/CoreDeploy.bundle/Contents/JavaAppletPlugin.plugin/Contents/Info.plist CFBundleIdentifier )
pluginpath="/System/Library/Java/Support/CoreDeploy.bundle/Contents/JavaAppletPlugin.plugin"

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

if [ "$vendorresult" = "Apple" ];
then

	# Detect plugin version
	version=$( /usr/bin/defaults read "${pluginpath}/Contents/Info" CFBundleShortVersionString 2>/dev/null )

	# Echo this out to the Extension Attribute
	echo "<result>${version}</result>"
else
	echo "<result>No Apple Java 6</result>"
fi
