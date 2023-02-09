#!/bin/bash
APP_NAME=$1
cd $(dirname $0)
INSTALLATION_DIR=$(realpath ..)
source config/config.txt
source config/window-dimensions.txt
cd "${INSTALLATION_DIR}"
JAR_PATH="file://$APPS_DIR/${APP_NAME}.jar"
echo "${JAR_PATH}"
#cat "config/$MOBAPP/game.conf"
java -cp lib/*:freej2me.jar org.recompile.freej2me.FreeJ2ME "${JAR_PATH}" $(( ${W}/${SCALE} )) $(( ${H}/${SCALE} )) ${SCALE}
