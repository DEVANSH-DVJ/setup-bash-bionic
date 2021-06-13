bash ./gnome/install.sh;
bash ./dconf/install.sh;

bash ./atom/install.sh;
bash ./atom/configurations.sh;

bash ./vscode/install.sh;

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -;
sudo apt -y install apt-transport-https;
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list;
sudo apt update;
sudo apt -y install sublime-text;
sudo apt -y install sublime-merge;
# sudo apt -y install pdfsam;

bash vpn_setup.sh;

sudo add-apt-repository ppa:pinta-maintainers/pinta-stable # You get an ENTER prompt
# sudo apt update; # Not needed
sudo apt -y install pinta;
sudo apt -y install vlc;
sudo snap install telegram-desktop;
sudo snap install discord;
sudo snap install --classic heroku;
# sudo apt -y install okular;

sudo apt -y upgrade;
# bash ./large/nvidia.sh;
# bash ./large/texlive.sh;
# bash ./large/ros.sh;
