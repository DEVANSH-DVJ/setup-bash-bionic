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
## Test
# cat ~/.vimrc;
