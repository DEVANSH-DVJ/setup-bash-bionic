wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -;
sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free";
sudo apt update;
sudo apt -y install opera-stable;
## Test Opera once
# opera;
## Get the bookmarks and customize the settings
