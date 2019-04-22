"first things first, vundle setup
set nocompatible "req for vundle
filetype off "req for vundle
set rtp+=~/.vim/bundle/Vundle.vim "include vundle in runtime path
call vundle#begin()
"plugins
Plugin 'gmarik/Vundle.vim'
"Plugin 'tmhedberg/SimplyFold'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
"end plugins
call vundle#end()
filetype plugin indent on "req for vundle
"""""""""""""""""""""""""""""
"with vundle/plugins set, on to the regular vimrc stuff
set autoread
set history=500
set nu "show line numbers
set ruler
set encoding=utf-8 "formatting
set wildmenu "graphical menu of matches
set showmatch "highlight other bracket
set lazyredraw "avoids some screen redraws for speed
set incsearch "search as characters are entered
set hlsearch "highlight search matched
set ignorecase "ignore case when searching
set wrap "wrap long lines to multiple visual lines
set noerrorbells "no error bells means no errors ;)
set noswapfile "trade some risk for less clutter
set splitbelow
set splitright
command W w !sudo tee % > /dev/null
syntax enable "enable syntax highlighting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number or spaces per tab when writing
set expandtab " tabs are (softtabstop) spaces rather than tabs
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white
"""""""""""""""""""""""""""""
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"""""""""""""""""""""""""""""
"enable folding and fold with space
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
"""""""""""""""""""""""""""""
"PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
"""""""""""""""""""""""""""""
" whitespace filter
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"""""""""""""""""""""""""""""
" youcompleteme settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"""""""""""""""""""""""""""""
" nerdtree settings
autocmd vimenter * NERDTree
"""""""""""""""""""""""""""""
" python
let python_highlight_all=1
syntax on
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
