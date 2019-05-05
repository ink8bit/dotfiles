" use only improved version of vim
set nocompatible

" show line numbers
set number

" syntax highlighting
syntax on

set tabstop=2
set shiftwidth=2
set expandtab

set backspace=indent,eol,start

" set search highlighting
set hlsearch

" show the match while typing
set incsearch

" color column - sets a vertical column
set cc=80

" do not use swap file
set noswapfile

" do not create backup files
set nobackup
set nowritebackup

" set default encoding to UTF-8
set encoding=utf-8

" show the cursor position all the time
set ruler

" set spell checking
set spell
set spelllang=en_us
set spellfile=~/.vim/spell/en.utf-8.add
set spellfile+=~/.vim/spell/code.utf-8.add

filetype plugin indent on

" show whitespace characters
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
set list
