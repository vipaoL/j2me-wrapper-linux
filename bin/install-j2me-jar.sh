#!/bin/bash
cd $(dirname $0)
source ../config/config.txt

mkdir $APPS_DIR

java -jar j2me-wrapper.jar install "$@"

rm -rf $TMP_WORKDIR
sleep 1
