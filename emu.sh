APP_NAME=$1
./export-properties.sh
SCALE=2
cd ~/freej2me
JAR_PATH=file://${HOME}/freej2me/apps/${APP_NAME}.jar
echo ${JAR_PATH}
rm ../freej2me/config/*/game.conf # emulator ignores screen resolution provided in command-line arguments if it is already saved in the config. need to delete it if want to reconfigure the resolution
java -cp lib/*:freej2me.jar org.recompile.freej2me.FreeJ2ME ${JAR_PATH} $(( ${W}/${SCALE} )) $(( ${H}/${SCALE} )) ${SCALE}
