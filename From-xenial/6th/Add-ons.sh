source ~/virtualenvs/3.8.2/bin/activate;

sudo apt update;
cd ~;
wget https://atom.io/download/deb -O atom-amd64.deb;
sudo dpkg -i atom-amd64.deb;
sudo apm install goto-definition;
sudo rm -rf atom-amd64.deb;
atom .;

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
sudo rm -rf pdfsam-3.1.0.RELEASE-1_all.deb;

wget http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader2.4.1.0609_Server_x64_enu_Setup.run.tar.gz;
tar xzvf FoxitReader*.tar.gz;
sudo chmod a+x FoxitReader*.run;
sudo ./FoxitReader.*.run;
sudo rm -rf Foxit*;

sudo snap install telegram-desktop;
sudo snap install discord;

sudo apt install -y texlive-full;
sudo snap install okular;
sudo apt install -y vlc;
