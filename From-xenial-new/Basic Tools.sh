sudo apt -y install tree;
sudo apt -y install terminator;
sudo apt -y install bash-completion;
sudo apt -y install flake8 isort;

bash ./vim/Install.sh;
bash ./vim/Configurations.sh;

bash ./browsers/Chrome.sh;
bash ./browsers/Opera.sh;

sudo apt -y install curl;
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -;
sudo apt -y install nodejs;

sudo apt -y install gcc g++ make;

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -;
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list;
sudo apt update;
sudo apt -y install yarn;

echo "
alias sb='source ~/.bashrc';
" >> ~/.bashrc;

## Reboot once to be safe
# sudo reboot;
