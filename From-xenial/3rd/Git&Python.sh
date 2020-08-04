sudo apt update;
sudo apt -y install git;
git config --global user.name "devansh-dvj";
git config --global user.email "devansh.dvj@gmail.com";
echo "[alias]
  co = checkout
  ci = commit
  st = status
  br = branch
  hist = log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short
" >> ~/.gitconfig;
cat ~/.gitconfig;

ln -s ~/Windows/Users/devan/Desktop/EVERYTHING/ ~/Desktop/EVERYTHING;
ln -s ~/Windows/Users/devan/Desktop/EVERYTHING/IITB/ ~/Desktop/IITB;
ln -s ~/Windows/Users/devan/Desktop/EVERYTHING/BOOKS/ ~/Desktop/BOOKS;
ln -s ~/Windows/Users/devan/Desktop/EVERYTHING/PROJECTS/ ~/Desktop/PROJECTS;

ssh-keygen -t rsa -b 4096 -C "devansh.dvj@gmail.com";
ssh-add ~/.ssh/id_rsa;
sudo apt -y install xclip;
xclip -sel clip < ~/.ssh/id_rsa.pub;

mkdir ~/virtualenvs;
cd ~/virtualenvs;

sudo add-apt-repository ppa:deadsnakes/ppa;
sudo apt update;
sudo apt -y install python3.8 python3.8-venv python3.8-tk;
sudo apt -y install python3-tk python-tk;
python3.8 -m venv 3.8.2;

sudo apt -y install virtualenv;
virtualenv -p python3.5 3.5.2;

virtualenv -p python2.7 2.7.12;

source 2.7.12/bin/activate;
pip install --upgrade pip;
pip install setuptools==44.0.0 Django numpy scipy matplotlib pygame channels pathlib;
deactivate;

source 3.5.2/bin/activate;
pip install --upgrade pip;
pip install Django numpy scipy matplotlib ipython jupyter pandas astropy pygame wget lxml xlrd;
deactivate;

source 3.8.2/bin/activate;
pip install --upgrade pip;
pip install Django numpy scipy matplotlib ipython jupyter pandas wheel bs4 requests astropy wget lxml xlrd yaml;
deactivate;

echo "alias 2='source ~/virtualenvs/2.7.12/bin/activate';
alias 5='source ~/virtualenvs/3.5.2/bin/activate';
alias 3='source ~/virtualenvs/3.8.2/bin/activate';
alias 0='deactivate';
alias jp='source ~/virtualenvs/3.8.2/bin/activate; jupyter-notebook';
alias jp2='source ~/virtualenvs/2.7.12/bin/activate; jupter-notebook';
" >> ~/.bashrc

