#!/bin/bash
cd $(dirname $0)
if [ ! -f wrapper-files/config/config.txt ]; then
    cat wrapper-files/config/template-config.txt | sed "s#replace_with_install_dir#$(pwd)#g" > wrapper-files/config/config.txt
fi

source wrapper-files/config/config.txt
cat $INSTALLATION_DIR/wrapper-files/shortcuts/template-add-j2me-jar.desktop | sed "s#replace_with_install_dir#$INSTALLATION_DIR#g" > $INSTALLATION_DIR/wrapper-files/shortcuts/add-j2me-jar.desktop
cat $INSTALLATION_DIR/wrapper-files/shortcuts/template-midlet-manager.desktop | sed "s#replace_with_install_dir#$INSTALLATION_DIR#g" > $INSTALLATION_DIR/wrapper-files/shortcuts/midlet-manager.desktop
ln -sf $INSTALLATION_DIR/wrapper-files/shortcuts/add-j2me-jar.desktop $SYSTEM_SHORTCUTS_DIR/add-j2me-jar.desktop
ln -sf $INSTALLATION_DIR/wrapper-files/shortcuts/midlet-manager.desktop $SYSTEM_SHORTCUTS_DIR/midlet-manager.desktop
cd wrapper-files && java -jar j2me-wrapper-linux.jar get-dimensions

