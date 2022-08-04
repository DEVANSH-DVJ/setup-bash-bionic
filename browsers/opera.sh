sudo apt update;
curl -fsSL https://deb.opera.com/archive.key | sudo gpg --dearmor -o /usr/share/keyrings/opera.gpg;
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/opera.gpg] https://deb.opera.com/opera-stable/ stable non-free" | sudo tee /etc/apt/sources.list.d/opera.list
sudo apt update;
sudo apt -y install opera-stable;
sudo rm -rf /etc/apt/sources.list.d/opera-stable.list;

## Test Opera once
# opera;

## Get the bookmarks and customize the settings
