#!/bin/bash
cd $(dirname $0)
CONFIG_FILE=config/config.txt
if [ ! -s $CONFIG_FILE ]; then
    cat config/template-config.txt | sed "s#replace_with_install_dir#$(pwd)#g" > $CONFIG_FILE
fi

source config/config.txt
cat "${INSTALLATION_DIR}/wrapper-files/shortcuts/template-add-j2me-jar.desktop" | sed "s#replace_with_install_dir#$INSTALLATION_DIR#g" > "$INSTALLATION_DIR/wrapper-files/shortcuts/add-j2me-jar.desktop"
cat "${INSTALLATION_DIR}/wrapper-files/shortcuts/template-midlet-manager.desktop" | sed "s#replace_with_install_dir#$INSTALLATION_DIR#g" > "$INSTALLATION_DIR/wrapper-files/shortcuts/midlet-manager.desktop"
ln -sf "${INSTALLATION_DIR}/wrapper-files/shortcuts/add-j2me-jar.desktop" "${SYSTEM_SHORTCUTS_DIR}/add-j2me-jar.desktop"
ln -sf "${INSTALLATION_DIR}/wrapper-files/shortcuts/midlet-manager.desktop" "${SYSTEM_SHORTCUTS_DIR}/midlet-manager.desktop"
cd bin && java -jar j2me-wrapper.jar get-dimensions
s
