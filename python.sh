mkdir ~/virtualenvs;
cd ~/virtualenvs;

sudo add-apt-repository ppa:deadsnakes/ppa;
sudo apt update;
sudo apt -y install python3.8 python3.8-venv python3.8-tk python-tk;
python3.8 -m venv 3.8;
python3.8 -m venv auv;
python3.8 -m venv unplag;

sudo apt -y install virtualenv;
virtualenv -p python2.7 2.7;

source 2.7/bin/activate;
pip install --upgrade pip;
pip install setuptools==44.1.1 pathlib;
pip install Django numpy scipy matplotlib;
deactivate;

source 3.8/bin/activate;
pip install --upgrade pip;
pip install wheel pathlib;
pip install Django numpy scipy matplotlib ipython jupyter pandas bs4 requests astropy wget lxml xlrd pyyaml flake8 pylint autopep8;
deactivate;

source auv/bin/activate;
pip install --upgrade pip;
pip install wheel pathlib;
pip install numpy scipy matplotlib ipython pyyaml rospkg;
deactivate;

echo "alias 2='source ~/virtualenvs/2.7/bin/activate';
alias 3='source ~/virtualenvs/3.8/bin/activate';
alias auv='source ~/virtualenvs/auv/bin/activate';
alias 0='deactivate';
alias jp='source ~/virtualenvs/3.8/bin/activate; jupyter-notebook;';
alias pm='python manage.py makemigrations; python manage.py migrate; python manage.py runserver';
" >> ~/.bashrc;

source ~/.bashrc;
