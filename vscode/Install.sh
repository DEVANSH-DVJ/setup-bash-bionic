sudo apt update;
sudo apt -y install software-properties-common apt-transport-https wget;
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main";
sudo apt update;
sudo apt -y install code;

## Extensions:
# Bash Beautify
# Docker
# Git History
# Markdown Shortcuts
# Python
# Remote Development
# shell-format
# Trailing Spaces
