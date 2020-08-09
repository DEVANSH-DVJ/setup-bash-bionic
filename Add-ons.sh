bash ./gnome/Install.sh;
bash ./dconf/Install.sh;

bash ./atom/Install.sh;
bash ./atom/Configurations.sh;

bash ./vscode/Install.sh;

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -;
sudo apt -y install apt-transport-https;
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list;
sudo apt update;
sudo apt -y install sublime-text;
sudo apt -y install sublime-merge;

sudo apt -y install openjdk-8-jre libopenjfx-jni libopenjfx-java openjfx;
sudo echo "JAVA_HOME=\"/usr/lib/jvm/java-8-openjdk-amd64\"" >> /etc/environment;
source /etc/environment;
echo $JAVA_HOME;
wget https://github.com/torakiki/pdfsam/releases/download/v3.1.0.RELEASE/pdfsam-3.1.0.RELEASE-1_all.deb -O pdfsam-3.1.0.RELEASE-1_all.deb;
sudo dpkg -i pdfsam-3.1.0.RELEASE-1_all.deb;
sudo apt install -fy;
sudo rm -rf pdfsam-3.1.0.RELEASE-1_all.deb;

# wget http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader2.4.1.0609_Server_x64_enu_Setup.run.tar.gz;
# tar xzvf FoxitReader*.tar.gz;
# sudo chmod a+x FoxitReader*.run;
# sudo ./FoxitReader.*.run;
# sudo rm -rf Foxit*;

bash ./Microsoft Teams.sh;
bash ./VPN Setup.sh;

sudo add-apt-repository ppa:pinta-maintainers/pinta-stable # You get an ENTER prompt
# sudo apt update; # Not needed
sudo apt -y install pinta;
sudo apt -y install vlc;
sudo snap install telegram-desktop;
sudo snap install discord;
# sudo apt -y install okular;

bash ./big-installs/NVIDIA.sh;
bash ./big-installs/texlive.sh;
bash ./big-installs/ros.sh;
