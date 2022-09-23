<img src="https://user-images.githubusercontent.com/59665125/191324141-fbf88cd3-b9b9-4cb7-a3e2-71fca2eeaa7c.png" width="300"><img src="https://user-images.githubusercontent.com/59665125/191324339-cb580a37-f0c4-4621-92e8-d239c2083821.png" width="300">


# Installation (you can also try it on the desktop)
```
cd ~ && git clone https://github.com/vipaoL/j2me-linux-integration.git
```
```
mv j2me-linux-integration ~/freej2me # it's hardcoded path (for now), do not change
```
```
cd ~/freej2me && ./install.sh
```
Change my (vipaol) home folder to your in "add-j2me-jar.desktop". I forgot to fix it, i'll do it later

**Set dimensions of your window's working area in emu.sh.** In my case (720x1280px screen and gnome mobile) working area is 720x1118px. Virtual screen will be twice smaller (if scale is set to 2)

<img src="https://user-images.githubusercontent.com/59665125/190923964-e2887d39-4a45-4a77-b029-04c56d7e6531.png" width="300">
<img src="https://user-images.githubusercontent.com/59665125/191327031-1a775106-5865-471e-bdfd-830d18383fa6.png" width="300">
# Usage
**GUI:**

Right click on j2me-application, choose "open with "Add-J2ME-to-apps"". The app will appear in your applications menu

you can try to install my game for test :) https://github.com/vipaoL/mobap-game/releases

**CLI:**
```
~/freej2me/install_j2me_jar.sh /path/to/j2me-app.jar
```
# Full uninstall
Delete ~/freej2me folder, ~/.local/share/applications/add-j2me-jar.desktop and ~/.local/share/applications/*_J2ME.desktop


# Some plans for future
Maybe i'll fully rewrite it in other language. Writing on bash is pain
