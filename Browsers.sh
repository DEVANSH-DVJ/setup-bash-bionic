sudo apt update;

## Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O google-chrome-stable_current_amd64.deb;
sudo dpkg -i google-chrome-stable_current_amd64.deb;
sudo apt install -fy;
sudo rm -rf google-chrome-stable_current_amd64.deb;
## Test Chrome once
# google-chrome;
## Sync the account and customize the settings

## Opera
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -;
sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free";
sudo apt update;
sudo apt -y install opera-stable;
sudo rm -rf /etc/apt/sources.list.d/opera*;
echo "alias rmo='sudo rm -rf /etc/apt/sources.list.d/opera*;'
" >> ~/.bashrc;
## Test Opera once
# opera;
## Get the bookmarks and customize the settings

## Reboot once to be safe
# sudo reboot;
