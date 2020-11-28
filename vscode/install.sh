sudo apt update;
sudo apt -y install software-properties-common apt-transport-https wget;
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main";
sudo apt update;
sudo apt -y install code;

## Extensions:
# Beautify
# Bash Beautify
# C/C++
# C++ Intellisense
# Clang-Format
# Code-Runner
# Code Spell Checker
# ES Lint
# Excel Viewer
# Git History
# Jupyter
# LaTeX Workshop
# Markdown Shortcuts
# Prettier - Code formatter
# Python
# shell-format
# Trailing Spaces
# vscode-icons
