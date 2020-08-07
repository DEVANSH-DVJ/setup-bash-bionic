source ~/virtualenvs/3.8.2/bin/activate;

sudo apt -y remove vim-tiny;
sudo apt -y install vim;
echo "set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set hlsearch
set incsearch
set colorcolumn=80
set number
nnoremap zn :set number<CR>
nnoremap znn :set nonu<CR>
nnoremap zp :set paste<CR>
nnoremap zpp :set nopaste<CR>
nnoremap rm :nohlsearch<CR>
highlight ExtraWhitespace ctermbg=red guibg=yellow
match ExtraWhitespace /\s\+$/
" > ~/.vimrc;
cat ~/.vimrc;

sudo apt -y install terminator;
sudo apt -y install bash-completion;

sudo apt update;

sudo apt -y install curl;
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -;
sudo apt -y install nodejs;

sudo npm install -g @angular/cli;

sudo npm install -g browser-sync;

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O google-chrome-stable_current_amd64.deb;
sudo dpkg -i google-chrome-stable_current_amd64.deb;
sudo rm -rf google-chrome-stable_current_amd64.deb;

wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -;
sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free";
sudo apt update;
sudo apt -y install opera-stable;
sudo rm -rf /etc/apt/sources.list.d/opera*;

