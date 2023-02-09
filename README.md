<img src="https://user-images.githubusercontent.com/59665125/191324141-fbf88cd3-b9b9-4cb7-a3e2-71fca2eeaa7c.png" width="300"><img src="https://user-images.githubusercontent.com/59665125/191324339-cb580a37-f0c4-4621-92e8-d239c2083821.png" width="300">


# Installation (also works on the desktop)
```
cd ~ && wget https://github.com/vipaoL/j2me-wrapper-linux/archive/refs/heads/master.zip
```
```
unzip master.zip && rm master.zip
```
```
mv j2me-wrapper-linux-master j2me # you can rename it as you want
```
```
cd j2me && ./install.sh
```
# Usage
## GUI:

Right click on a j2me application, choose "open with "Install J2ME app"". The app will appear in your system's applications list

## CLI:
```
./wrapper-files/install-j2me-jar.sh -y path/to/j2me-app.jar
```
you can install my game for test: https://github.com/vipaoL/mobap-game/releases
# Full uninstall
Delete "j2me" folder, ~/.local/share/applications/add-j2me-jar.desktop, ~/.local/share/applications/midlet-manager.desktop and ~/.local/share/applications/*_J2ME.desktop
