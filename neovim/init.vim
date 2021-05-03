set scrolloff=8

" sets line numbers
set number

" sets relative numbers
set relativenumber

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set nowrap
set incsearch
set noshowmode

" shows special characters
set listchars=tab:\ \ ,trail:.
set list

" color column - sets a vertical column
set cc=80,100
" do not use swap file
set noswapfile
" do not create backup files
set nobackup
set nowritebackup

" set default encoding to UTF-8
set encoding=utf-8

" sets spellcheck
set spell
set spelllang=en_us

hi SpellBad cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellCap cterm=underline ctermfg=203 guifg=#ff5f5f

syntax enable
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
call plug#end()

let g:gruvbox_contrast_dark = 'hard'

colorscheme gruvbox

" remapping
let mapleader = " "

" shows tree view (tv) when you type <space> + tv
nnoremap <leader>tv :Vex<CR>

" updates vim config
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" removes highlighting
nnoremap <leader>nl :nohls<CR>

nnoremap <C-s> <C-^>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <leader>gg :GitGutterToggle<CR>
nnoremap <leader>rt :%s/\s\+$//e<CR>
nnoremap <leader>tl :%s#\($\n\s*\)\+\%$##<CR>

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
