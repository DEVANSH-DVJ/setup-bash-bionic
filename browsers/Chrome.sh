sudo apt update;

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O google-chrome-stable_current_amd64.deb;
sudo dpkg -i google-chrome-stable_current_amd64.deb;
sudo apt install -fy;
sudo rm -rf google-chrome-stable_current_amd64.deb;
## Test Chrome once
# google-chrome;
## Sync the account and customize the settings
