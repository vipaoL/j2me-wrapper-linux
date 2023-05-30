#!/bin/bash
JAR_PATH=$1
WINDOW_W=$2
WINDOW_H=$3
VIRTSCREEN_W=$4
VIRTSCREEN_H=$5
SCALE=$6

FULL_JAR_PATH="file://$JAR_PATH"
echo $VIRTSCREEN_W

cd $(dirname $0)
java -cp lib/*:freej2me.jar org.recompile.freej2me.FreeJ2ME "$FULL_JAR_PATH" $VIRTSCREEN_W $VIRTSCREEN_H ${SCALE}
