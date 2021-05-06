" scroll offset - 8 lines
set scrolloff=8

" sets line numbers
set number

" sets relative numbers
set relativenumber

" formatting
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set nowrap
set hidden
set nocompatible

" color column - sets a vertical column
set cc=80,100

" do not use swap file
set noswapfile

" do not create backup files
set nobackup
set nowritebackup

" set default encoding to UTF-8
set encoding=utf-8

set incsearch
set noshowmode

" always show a signcolumn
set signcolumn=yes

syntax enable
filetype plugin indent on

set listchars=tab:\ \ ,trail:.
set list

" spell checking highlighting
hi SpellBad cterm=strikethrough
"hi SpellBad cterm=strikethrough ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellCap cterm=underline ctermfg=203 guifg=#ff5f5f

"set spell
set spelllang=en_us
nnoremap <leader>sc :setlocal spell<CR>
nnoremap <leader>so :setlocal nospell<CR>

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'prettier/vim-prettier'

" syntax highlighting for TOML files
Plug 'cespare/vim-toml'

" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Extensions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'

" Autocompletion framework for built-in LSP
Plug 'nvim-lua/completion-nvim'

" code comments
Plug 'preservim/nerdcommenter'
call plug#end()

colorscheme gruvbox

" remapping
let mapleader = " "

" shows tree view (tv) when you type <space> + tv
nnoremap <leader>tv :Vex<CR>

" updates vim config
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" removes highlighting
nnoremap <leader>nl :nohls<CR>
" format code
nnoremap <leader>p :Prettier<CR>
" show buffers
nnoremap <leader>b :Buffers<CR>
nnoremap <C-s> <C-^>
" search in project files
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
" go to the next file
nnoremap <C-j> :cnext<CR>
" got to the previous file
nnoremap <C-k> :cprev<CR>
" toggle git gutter
nnoremap <leader>gg :GitGutterToggle<CR>

" code navigation shortcuts
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

" status line settings
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

nnoremap <leader>rt :%s/\s\+$//e<CR>
nnoremap <leader>tl :%s#\($\n\s*\)\+\%$##<CR>

set completeopt=menuone,noinsert,noselect
set shortmess+=c

"set completeopt=menu,menuone,preview,noselect,noinsert

let g:ale_completion_enabled = 1
let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'javascript': ['prettier', 'eslint'],
            \ 'typescript': ['prettier', 'eslint'],
            \ 'css': ['prettier']
            \}
"let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'

nmap <silent> [e <Plug>(ale_previous_wrap)
nmap <silent> ]e <Plug>(ale_next_wrap)

nnoremap <leader>d :ALEGoToDefinition<CR>

"let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }
"let g:ale_linters = {'rust': ['analyzer']}
"let g:completion_matching_startegy_list = ['exact', 'substring', 'fuzzy']

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
"lua require'lspconfig'.svelte.setup{on_attach=require'completion'.on_attach}

" LSP
" https://github.com/neovim/nvim-lspconfig#rust_analyzer
lua <<EOF

local nvim_lsp = require'lspconfig'
local on_attach = function(client)
    require'completion'.on_attach(client)
end

-- Enable rust_analyzer
nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
EOF

autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
\ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }

" go to previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" use <Tab> as trigger keys
imap <Tab> <Plug>(completion_smart_tab)
imap <S-Tab> <Plug>(completion_smart_s_tab)

" git
nnoremap <leader>st :Git<CR>
nnoremap <leader>co :Git commit<CR>
nnoremap <leader>pu :Git push<CR>

" use rustfmt on save
let g:rustfmt_autosave = 1

" code comments
" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" disable file browser banner
let g:netrw_banner=0
