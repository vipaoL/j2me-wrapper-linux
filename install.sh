#!/bin/bash
cd $(dirname $0)
CONFIG_FILE=config/config.txt
if [ ! -s $CONFIG_FILE ]; then
    cat config/template-config.txt | sed "s#replace_with_install_dir#$(pwd)#g" > $CONFIG_FILE
fi

source config/config.txt
mkdir -p ${SYSTEM_SHORTCUTS_DIR}
cat "${INSTALLATION_DIR}/wrapper-files/shortcuts/template-add-j2me-jar.desktop" | sed "s#replace_with_install_dir#$INSTALLATION_DIR#g" > "${SYSTEM_SHORTCUTS_DIR}/add-j2me-jar.desktop"
cat "${INSTALLATION_DIR}/wrapper-files/shortcuts/template-midlet-manager.desktop" | sed "s#replace_with_install_dir#$INSTALLATION_DIR#g" > "${SYSTEM_SHORTCUTS_DIR}/midlet-manager.desktop"
cat "${INSTALLATION_DIR}/wrapper-files/shortcuts/template-midlet-manager-get-window-dims.desktop" | sed "s#replace_with_install_dir#$INSTALLATION_DIR#g" > "${SYSTEM_SHORTCUTS_DIR}/midlet-manager-get-window-dims.desktop"
cd bin && manager.sh get-dimensions

