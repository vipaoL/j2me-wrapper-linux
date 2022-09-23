#!/bin/bash
#echo Uninstalling $1... Press Ctrl+C to cancel
#for i in {5..1} do
#	echo $i...
#	sleep 1
#done
rm ~/freej2me/apps/$1.jar
rm ~/freej2me/apps/$1.png
rm ~/.local/share/applications/$1_J2ME.desktop
#echo Uninstalled $1
