#!/bin/bash
cd $(dirname $0)
source ../config/config.txt

APP_NAME=$1
rm $APPS_DIR/$APP_NAME.jar
rm $APPS_DIR/$APP_NAME.png
rm $SYSTEM_SHORTCUTS_DIR/$APP_NAME-j2mew.desktop
echo Uninstalled $APP_NAME
