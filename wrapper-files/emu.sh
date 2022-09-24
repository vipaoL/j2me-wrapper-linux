#!/bin/bash
APP_NAME=$1
cd $(dirname $0)
source config/config.txt
source config/window-dimensions.txt
cd $INSTALLATION_DIR
JAR_PATH=file://$APPS_DIR/${APP_NAME}.jar
echo ${JAR_PATH}
rm config/*/game.conf # emulator ignores screen resolution provided in command-line arguments if it is already saved in the config. need to delete it if want to reconfigure the resolution
java -cp lib/*:freej2me.jar org.recompile.freej2me.FreeJ2ME ${JAR_PATH} $(( ${W}/${SCALE} )) $(( ${H}/${SCALE} )) ${SCALE}
