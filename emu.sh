APP_NAME=$1
SCREEN_W=720
SCREEN_H=1118
SCALE=2
cd ~/freej2me
JAR_PATH=file://${HOME}/freej2me/apps/${APP_NAME}.jar
echo ${JAR_PATH}
#rm -r ../freej2me/config
java -cp freej2me.jar:lib/microemu-jsr-75.jar org.recompile.freej2me.FreeJ2ME ${JAR_PATH} $(( ${SCREEN_W}/${SCALE} )) $(( ${SCREEN_H}/${SCALE} )) ${SCALE}
