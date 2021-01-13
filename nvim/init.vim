syntax on
" enable filetype plugin loading
filetype indent plugin on

" colorscheme
colorscheme challenger_deep

" Case insensitive
set ignorecase
" ??
set modeline
set autoread
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
set wrap 

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

" Install/Load plugins
lua require'plugins'

" no backup files
set nobackup
set nowritebackup
set noswapfile

" Fern {{{
map <f8> <cmd>Fern -toggle -drawer .<CR>
" }}}

"Easier window navigation {{{
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
    map <C-h> <C-w>h
" }}}

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

" statusline {{{
let g:enable_express_line = 1
" }}}

" Make copy/paste from system clipboard normal
set clipboard=unnamedplus

set splitbelow
set splitright

" FZF
 nnoremap <leader><leader> :Files <CR>
 nnoremap \\ :BLines <CR>
 nnoremap ?? :Rg <CR>


" Tabs {{{
    nnoremap tn :tabnext<CR>
    nnoremap tp :tabprevious<CR>
    nnoremap tc :tabclose<CR>
    nnoremap tt :tabnew<CR>
" }}}

" Netrw {{{
    let g:netrw_banner = 0
" }}}

" Which Key {{{
    nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
" }}}

" Lua {{{
    autocmd BufEnter *.lua set ts=3 sw=3 sts=3 expandtab
" }}}

" Lazy Git
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " for neovim-remote support
nnoremap <silent> <leader>lg :LazyGit<CR>

" Nvim-tree
let g:nvim_tree_width = 30 "30 by default
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_quit_on_open = 0 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 0,
    \ 'files': 0,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath

" You can edit keybindings be defining this variable
" You don't have to define all keys.
" NOTE: the 'edit' key will wrap/unwrap a folder and open a file
let g:nvim_tree_bindings = {
    \ 'edit':            ['<CR>', 'o'],
    \ 'edit_vsplit':     '<C-v>',
    \ 'edit_split':      '<C-x>',
    \ 'edit_tab':        '<C-t>',
    \ 'close_node':      ['<S-CR>', '<BS>'],
    \ 'toggle_ignored':  'I',
    \ 'toggle_dotfiles': 'H',
    \ 'refresh':         'R',
    \ 'preview':         '<Tab>',
    \ 'cd':              '<C-]>',
    \ 'create':          'a',
    \ 'remove':          'd',
    \ 'rename':          'r',
    \ 'cut':             'x',
    \ 'copy':            'c',
    \ 'paste':           'p',
    \ 'prev_git_item':   '[c',
    \ 'next_git_item':   ']c',
    \ }

" Disable default mappings by plugin
" Bindings are enable by default, disabled on any non-zero value
" let nvim_tree_disable_keybindings=1

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '🤜',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'symlink': "",
    \   }
    \ }

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue


" Neovim tree-sitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF
