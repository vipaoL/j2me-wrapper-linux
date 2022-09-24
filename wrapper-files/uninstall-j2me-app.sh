#!/bin/bash
#echo Uninstalling $1... Press Ctrl+C to cancel
#for i in {5..1} do
#	echo $i...
#	sleep 1
#done
cd $(dirname $0)
source config/config.txt
rm $APPS_DIR/$1.jar
rm $APPS_DIR/$1.png
rm $SYSTEM_SHORTCUTS_DIR/$1_J2ME.desktop
#echo Uninstalled $1
