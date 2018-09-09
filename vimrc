set autoread
set history=500
set nu " show line numbers
set cursorline " highlight current line
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
command W w !sudo tee % > /dev/null
syntax enable "enable syntax highlighting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number or spaces per tab when writing
set expandtab " tabs are (softtabstop) spaces rather than tabs
