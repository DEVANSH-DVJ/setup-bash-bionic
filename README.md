# setup-bash-bionic
Bash scripts for setting up the environment in Ubuntu 18.04.4 Bionic Beaver

Order: (Yet to be Tested)
1. Primary Setup
   1. Make changes to the Settings (settings/)
   2. Run Primary Setup.sh
   3. Continue to Step 2
2. Windows connection
   1. Run windows/Windows-1.sh
   2. Run lid_close_bug.sh, this will automatically **Reboot**.
   3. After restarting, Run windows/Windows-2.sh
   4. Configure Rhythmbox
   5. Continue to Step 3
3. Basic Tools
   1. Run git.sh and configure ssh key.
   2. Run Basic Tools.sh
   3. Once terminator is installed, customize the Prefernces
   4. Once Chrome is installed, sync the account and customize the settings.
   5. Once Opera is installed, get the bookmarks and customize the settings
   6. **Reboot** and move to Step 4
4. Python
   1. Run python.sh
   2. Check each environment during Step 5.
5. Add-ons
   1. Run Add-ons.sh
   2. Check packages and update config.cson in Atom
   3. Install Extensions and settings.json update for VSCode
   4. While the big installs happen,
      1. Install and configure Workspace Matrix from Ubuntu Software
      2. Configure gnome-tweak-tool (gnome/)
      3. Configure dconf (dconf/)
      4. Configure the VPN
      5. Login into Microsoft Teams
   5. Once the driver is installed, configure the changes.
   6. **Reboot**
6. Dockers
   1. Run docker.sh
   2. Setup all the necessary dockers from cse_dockers.sh

Note: Run all bash scripts from the base directory of this repo.
