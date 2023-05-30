#!/bin/bash
cd $(dirname $0)
source ../config/config.txt
source ../config/window-dimensions.txt

APP_NAME=$1
JAR_PATH="$APPS_DIR/${APP_NAME}.jar"
echo "${JAR_PATH}"

$EMULATORS_DIR/$EMU/run-app.sh "${JAR_PATH}" $W $H $(( ${W}/${SCALE} )) $(( ${H}/${SCALE} )) ${SCALE}
