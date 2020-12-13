set nocompatible
filetype off

"=====================================================
"Vim-Plug settings
"=====================================================

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


"=====================================================
"Vundle settings
"=====================================================
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'gmarik/Vundle.vim'      " let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
"Plugin 'scrooloose/nerdtree'           " Project and file navigation
"Plugin 'majutsushi/tagbar'             " Class/module browser
"
"""------------------=== Other ===----------------------
"Plugin  'vim-airline/vim-airline'  " Lean & mean status/tabline for vim
"Plugin  'vim-airline/vim-airline-themes'
"Plugin 'fisadev/FixedTaskList.vim'      " Pending tasks list
"Plugin 'rosenfeld/conque-term'          " Consoles as buffers
"Plugin 'tpope/vim-surround'     " Parentheses, brackets, quotes, XML tags, and more

"--------------=== Snippets support ===---------------
"Plugin 'garbas/vim-snipmate'       " Snippets manager
"Plugin 'MarcWeber/vim-addon-mw-utils'  " dependencies #1
"Plugin 'tomtom/tlib_vim'       " dependencies #2
"Plugin 'honza/vim-snippets'        " snippets repo
"
""---------------=== Languages support ===-------------
" --- Python ---
"  Plugin 'klen/python-mode'            " Python mode (docs, refactor, lints,
"  highlighting, run and ipdb and more)
"  Plugin 'davidhalter/jedi-vim'        " Jedi-vim autocomplete plugin
"  Plugin 'mitsuhiko/vim-jinja'     " Jinja support for vim
"  Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim
"
"  call vundle#end()                    " required
"  filetype on
"  filetype plugin on
"  filetype plugin indent on
"=======================================================


"=======================================================
"General settings
"=======================================================
set number
set numberwidth=1
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
let python_highlight_all =1
set t_Co=256
syntax on
set mousehide
set mouse=a
set termencoding=utf-8
set novisualbell
set t_vb=
set visualbell t_vb=
set wrap
set linebreak
set nobackup
set noswapfile
set encoding=utf-8
set fileencoding = "utf-8,cp1251"
colorscheme industry
inoremap jk <esc>
vnoremap jk <esc>
 
let mapleader = ","
let maplocalleader = "j"


"=========================================================
"Airline settings
"=========================================================
set laststatus=2
let g:airline_theme = 'badwolf'
let g:airline_powrline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'


"=========================================================
"python-mode settings
"=========================================================
"disable autocomplete for code (will be using jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

"Documentation
let g:pymode_doc = 0
let g:pymode_doc_key = 'k'
"Code check
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore = "E501,W601,C0110"
"Code check after saveing
let g:pymode_lint_write = 1
"Virtualenv support
let g:pymode_virtualenv = 1
"Breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
"Syntax highliht
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"Disable autofold 
let g:pymode_folding = 0
"Support to run code
let g:pymode_run = 0
