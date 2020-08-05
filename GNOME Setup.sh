## Ubuntu 18 misses the New Document feature on right click.
touch ~/Templates/"Untitled Document";

## For Screenshot option to save like Ubuntu 16
# sudo apt install mate-tools

## For now, I would use dconf for all the key binding changes and their screenshots are present in the ss/dconf/ directory.
sudo apt install -y dconf gnome-tweak-tool;
## I would use "Workspace Matrix" GNOME extension (can be installed from the Ubuntu Software)
## Use org.desktop.wm.keybindings and org.mutter.keybindings to make changes
## Use Extensions in Tweaks (Gnome Tweaks) to change the settings of Workspaces, Clock, Calender, Font Size and more

## Reboot once to check the conditions
# sudo reboot;
