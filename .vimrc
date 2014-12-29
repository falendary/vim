set nocompatible              " be iMproved, required
filetype off                  " required
set t_Co=256

 if !1 | finish | endif

 if has('vim_starting')
 if &compatible
  set nocompatible               " Be iMproved
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  call neobundle#begin(expand('~/.vim/bundle/'))

"Vim snippets
NeoBundle 'honza/vim-snippets'
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
"Stylus
NeoBundle 'wavded/vim-stylus'
"HTML5
NeoBundle 'othree/html5.vim'
"Highlights matching html tag
NeoBundle 'gregsexton/MatchTag'
"CSS3
NeoBundle 'hail2u/vim-css3-syntax'
"Airline
NeoBundle 'bling/vim-airline'
"Javascript
NeoBundle 'jelera/vim-javascript-syntax'
"JSON
NeoBundle 'elzr/vim-json'
"Emmet
NeoBundle 'mattn/emmet-vim'
"NERDTree
NeoBundle 'scrooloose/nerdtree'
"web indent
NeoBundle 'lukaszb/vim-web-indent'
"syntastic
NeoBundle 'scrooloose/syntastic'
"Neocomplcache
NeoBundle 'Shougo/neocomplcache.vim'
"Nerdcomment
NeoBundle 'scrooloose/nerdcommenter'
"XML plugin
NeoBundle 'othree/xml.vim'
"matchit
NeoBundle 'tmhedberg/matchit'
"ctrlp
NeoBundle 'kien/ctrlp.vim'
"Fugitivi
NeoBundle 'tpope/vim-fugitive'
call neobundle#end()

"If there are uninstalled bundles found on startup,
"this will conveniently prompt you to install them.
NeoBundleCheck
set title

filetype plugin on
set omnifunc=syntaxcomplete#Complete
" Enable smart indent, it add additional indents whe necessary
set smartindent
" Replace tabs with spaces
set expandtab
" Whe you hit tab at start of line, indent added according to shiftwiwth value
set smarttab
" Number of spaces to use for each step of indent
set shiftwidth=4
" Number of spaces that a Tab in the file counts for
set tabstop=4
"line width
set textwidth=80
" Display line numbers
set number
" Disable wrapping long string
set nowrap
" The cursor should stay where you leave it, instead of moving to first non
" blan of the line
set nostartofline
" Higliht line with cursor
set cursorline
" Higlight column right after max textwidth
set colorcolumn=+1

"-------------------------
" Search option
" add the g flag to search/replace by default
set gdefault
" Highlight search results
set hlsearch
" Live search
set incsearch

"--------------------------
" Colorscheme
syntax enable
colorscheme monokai
"--------------------------

"--------------------------
" NERDTreee
autocmd vimenter * NERDTree
let NERDTreeMinimalUI=1
let g:nerdtree_tabs_open_on_console_startup=1
"---------------------------
