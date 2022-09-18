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

**Set dimensions of your window's working area in emu.sh.** In my case (720x1280px screen and gnome mobile) working area is 720x1118px
![image](https://user-images.githubusercontent.com/59665125/190923896-3a51b244-7096-47ea-b67d-45f0d1625529.png)![image](https://user-images.githubusercontent.com/59665125/190923964-e2887d39-4a45-4a77-b029-04c56d7e6531.png)



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
