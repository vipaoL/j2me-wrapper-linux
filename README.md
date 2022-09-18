# Installation
```
cd ~ && git clone https://github.com/vipaoL/j2me-linux-integration.git
```
```
mv j2me-linux-integration ~/freej2me # it's hardcoded path (for now), do not change
```
```
ln -s ~/freej2me/add-j2me-jar.desktop ~/.local/share/applications/add-j2me-jar.desktop
```
# Usage
GUI:
Right click on j2me-application, choose "open with "Add-J2ME-to-apps"". The app will appear in your applications menu
CLI:
~/freej2me/install_j2me_jar.sh /path/to/j2me-app.jar
# Full uninstall
Delete ~/freej2me folder, ~/.local/share/applications/add-j2me-jar.desktop and ~/.local/share/applications/*_J2ME.desktop
