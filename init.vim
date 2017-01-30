call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'https://github.com/sheerun/vim-polyglot.git'
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/dracula/vim.git'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

filetype plugin indent on
syntax enable

set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set clipboard=unnamed

set number

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

let g:lightline = { 'colorscheme': 'onedark' }

" colorscheme onedark
color dracula

let g:javascript_plugin_jsdoc = 1

" # nerdtree "
map <C-n> :NERDTreeToggle<CR>


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
