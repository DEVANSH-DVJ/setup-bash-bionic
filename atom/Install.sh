sudo apt update;
wget https://atom.io/download/deb -O atom-amd64.deb;
sudo dpkg -i atom-amd64.deb;
sudo apt install -fy;
sudo rm -rf atom-amd64.deb;
atom .;
