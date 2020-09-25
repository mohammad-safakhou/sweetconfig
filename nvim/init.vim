set nu
" Syntax highlight
syntax on
" enable filetype plugin loading
filetype indent plugin on

" Case insensitive
set ignorecase
" ??
set modeline

" Highlight current line 
set cursorline

" vi Incompatible defaults 
set nocompatible

" Default encoding to UTF-8
set encoding=utf-8

" Highlight search result in pattern search
set hlsearch

" Command history capacity
set history=700

" Maximum number of tabs to be opened
set tabpagemax=100

" Show column and line number in status bar
set ruler

" Enable mouse support
set mouse=a

" Enable line numbers
set nu 

" Set <leader> to SPC
let mapleader = " "

" Disable line wrapping in long lines
set nowrap

" Start new line with same indent level as current line
set autoindent

noremap j gj
noremap k gk

" Relative line numbers
set relativenumber
" Terminal Colors
set termguicolors

" General Tab settings {{{
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" }}}

" vim plug
call plug#begin('~/.config/nvim/plugged')
Plug  'airblade/vim-gitgutter'
    Plug  'rafi/awesome-vim-colorschemes' 
Plug  'overcache/NeoSolarized'
    Plug  'whatyouhide/vim-gotham'
    Plug  'arcticicestudio/nord-vim'
    Plug  'gosukiwi/vim-atom-dark'
    Plug  'morhetz/gruvbox'
    Plug  'tpope/vim-surround'
    Plug  'tpope/vim-jdaddy'
    Plug  'tpope/vim-commentary' 
    Plug  'tpope/vim-fugitive' 
    Plug  'lambdalisue/fern.vim'
    Plug  'vimlab/split-term.vim'
    Plug  'junegunn/fzf.vim'
    Plug  'junegunn/fzf'
    Plug  'nathanaelkane/vim-indent-guides'
    Plug  'michaeljsmith/vim-indent-object'
    Plug  'honza/dockerfile.vim'
    Plug  'LnL7/vim-nix'
    Plug  'ziglang/zig.vim'
    Plug  'dag/vim-fish'
    Plug  'rust-lang/rust.vim'
    Plug  'fatih/vim-go' 
    Plug  'nvim-lua/completion-nvim'
    Plug  'tjdevries/nlua.nvim'
    Plug  'nvim-lua/plenary.nvim'
    Plug  'tjdevries/express_line.nvim'
    Plug  'mhinz/vim-startify' 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

map Q <nop>

" Map ; to : for simpler command execuation
map ; :

" Disable highlight after search
nmap <leader>/ :nohl<CR>

" Exit Insert mode more easily {{{
    inoremap jk <esc>
    inoremap kj <esc> 
    inoremap kk <esc>
    inoremap jj <esc>
" }}}

" Make copy/paste from system clipboard normal
set clipboard=unnamedplus

if has('nvim')
    set splitbelow
    set splitright
endif

" edit configuration
let g:config_location = "~/w/dotfiles"
command! Config FZF ~/w/dotfiles 
map <f9> :Config<CR>

" Tabs {{{
    nnoremap tn :tabnext<CR>
    nnoremap tp :tabprevious<CR>
    nnoremap tc :tabclose<CR>
    nnoremap tt :tabnew<CR>
" }}}
" FZF {{{

    nnoremap <leader><leader> :Files<CR>
    nnoremap \\ :BLines<CR>
    nnoremap ?? :Rg<CR>
    let g:fzf_layout = { 'window': { 'width': 0.90, 'height': 0.90 } }
    let g:fzf_preview_window = 'right:40%'

" }}}

" no backup files
set nobackup
set nowritebackup
set noswapfile

" Project Explorer
map <f8> :Fern . -drawer -toggle<CR>
"Easier window navigation {{{
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
    map <C-h> <C-w>h
" }}}
" key mappppppppppping
map <C-n> :NERDTreeToggle<CR>

" my sources
source $HOME/.config/nvim/coc/coc.vim

colorscheme atom-dark

let g:coc_global_extensions = ['coc-go', 'coc-python']
