set backspace=indent,eol,start
set autoindent
"set backup
set history=50
set noincsearch
set nohlsearch
syntax enable
set relativenumber
set number

filetype plugin indent on

autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

map <C-H> :set hlsearch!<Enter>
