" use only improved version of vim
set nocompatible

" show line numbers
set number

" show relative number
set relativenumber

" syntax highlighting
syntax on

filetype plugin indent on

" find
set path+=**

" autocomplete
set omnifunc=syntaxcomplete#Complete

"display all matching file when we tab complete
set wildmenu

" current file name
set laststatus=2

" file browser
" disable annoying banner
let g:netrw_banner=0

" open in prior window
let g:netrw_browse_split=4

" open splits to the right
let g:netrw_altv=1

" tree view
let g:netrw_liststyle=3

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

" show whitespace characters
" set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
set listchars=trail:•
set list
