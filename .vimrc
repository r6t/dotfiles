"first things first, vundle setup
set nocompatible "req for vundle
filetype off "req for vundle
set rtp+=~/.vim/bundle/Vundle.vim "include vundle in runtime path
call vundle#begin()
"plugins
Plugin 'gmarik/Vundle.vim'
"end plugins
call vundle#end()
filetype plugin indent on "req for vundle

"with vundle/plugins set, on to the regular vimrc stuff
set autoread
set history=500
set nu " show line numbers
set ruler
set wildmenu " graphical menu of matches
set showmatch " highlight other bracket
set lazyredraw " avoids some screen redraws for speed
set incsearch " search as characters are entered
set hlsearch " highlight search matched
set ignorecase " ignore case when searching
set wrap " wrap long lines to multiple visual lines
set noerrorbells " no error bells means no errors ;)
set noswapfile " trade some risk for less clutter
set splitbelow
set splitright
command W w !sudo tee % > /dev/null
syntax enable "enable syntax highlighting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number or spaces per tab when writing
set expandtab " tabs are (softtabstop) spaces rather than tabs
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
