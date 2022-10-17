let mapleader =","

set title
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set noshowmode
set noruler
set noshowcmd
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

set encoding=utf-8
set number
set wildmode=longest,list,full
set nocompatible
filetype plugin on
syntax on

call plug#begin()

Plug 'preservim/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'wojciechkepka/vim-github-dark'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
call plug#end()
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
map <leader>o :setlocal spell! spelling=en_us<CR>
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"if (has("termguicolors"))
"    set termguicolors
"endif
"if $term =~# '256color' && ( $TERM =~# '^screen'  || $TERM =~# '^tmux' )
"    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"    set termguicolors
"endif
colorscheme molokai
"colorscheme ghdark
"colorscheme gruvbox
set background=dark
""""""""""""""""""""""""""
" VIM AIRLINE CONFIURATION
""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"let g:airline_theme='dark'  //default one
let g:airline_theme='minimalist'
" powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.colnr = ' :'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.dirty='⚡'
""""""""""""
" SET PAIRS
""""""""""""
inoremap ' ''<ESC>ha
inoremap " ""<ESC>ha
inoremap ( ()<ESC>ha
inoremap { {}<ESC>ha
inoremap [ []<ESC>ha
inoremap /* /** */<ESC>2ha

