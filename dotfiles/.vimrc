" Setup vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Manage vundle itself
Bundle 'gmarik/vundle'

" My modules
Bundle 'dbext.vim'
Bundle "Raimondi/delimitMate"
Bundle "http://git.devnull.li/ikiwiki-nav.git"
Bundle "http://git.devnull.li/ikiwiki-syntax.git/"
Bundle "Shougo/neocomplcache"
Bundle "scrooloose/nerdtree"
Bundle "cakebaker/scss-syntax.vim"
Bundle "msanders/snipmate.vim"
Bundle "vim-scripts/TailMinusF"
Bundle "tpope/vim-abolish"
Bundle "kchmck/vim-coffee-script"
Bundle "tpope/vim-cucumber"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-haml"
Bundle "plasticboy/vim-markdown"
Bundle "tpope/vim-rake"
Bundle "tpope/vim-rails"
Bundle "tpope/vim-bundler"
Bundle "tpope/vim-repeat"
Bundle "nelstrom/vim-textobj-rubyblock"
Bundle "kana/vim-textobj-user"
Bundle "bronson/vim-trailing-whitespace"
Bundle "e2/vim-vimoutliner"
Bundle "sukima/xmledit"
Bundle "tpope/vim-surround"
Bundle "git://repo.or.cz/vcscommand"
Bundle "sjl/gundo.vim"
Bundle "tpope/vim-endwise"
Bundle "tsaleh/vim-matchit"
Bundle "shemerey/vim-peepopen"
Bundle "vim-scripts/Color-Sampler-Pack"
Bundle "vim-scripts/winmanager"
Bundle "ciaranm/securemodelines"
Bundle "vim-scripts/bufexplorer.zip"
Bundle "vim-scripts/pylint.vim"
Bundle "majutsushi/tagbar"
Bundle "tpope/vim-rvm"
Bundle "chrisbra/SudoEdit.vim"
Bundle "scrooloose/syntastic"
Bundle "Lokaltog/vim-powerline"

" tComment
Bundle "tComment"
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" Zoomwin
Bundle "ZoomWin"
noremap <LocalLeader>o :ZoomWin<CR>
vnoremap <LocalLeader>o <C-C>:ZoomWin<CR>
inoremap <LocalLeader>o <C-O>:ZoomWin<CR>
noremap <C-W>+o :ZoomWin<CR>

" vundle required setting (and good to have)
filetype plugin indent on

set helplang=en

" Command history should be 50 lines
set history=50

" Always use a4 when printing
set printoptions=paper:a4

" Show line numbers in the statusline
set ruler

" I like shiftwidth and tabstop of 2
set shiftwidth=2
set tabstop=2

" Per default we want to expand tabs and use smarttab
set expandtab smarttab

" Store global variables
set viminfo^=!

" Set filetype plugin on if autocmd is available
if has("autocmd")
  filetype plugin indent on
else
	set smartindent
endif

" Use wilmenu, it's handy
set wildmode=longest:full
set wildmenu

" Enable syntax if supported
if has("syntax")
  syntax on
  " Define colorscheme only if we have syntax enabled. Otherwise there is no
  " need
  set background=dark
  colorscheme blacksea
endif

if has("gui_running")
	set guifont="Droid Sans Mono"
endif

" Set statusline to always show
set laststatus=2

" Search options
" - Use hilighted search as well as incremental search
" - Ignore case in searches and use smartcase when needed
set hlsearch incsearch
set ignorecase smartcase

" Show file numbers
set number

" Show command and mode in the statusline
set showcmd showmode

" Allow hidden and modified buffers
set hidden

" Open buffers in tabs
set switchbuf=usetab,newtab

"Make NERC_commenter shut up about unkown filetypes
let NERDShutUp=1

"Map Function keys
map <silent> <F2> :WMToggle<CR>
map <silent> <F3> :TlistToggle<CR>

" Enable spell checking
set spell
" set spelllang=en,fi

" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

" Edit vimrc \ev
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>

" Taglist configuration
let Tlist_Use_Right_Window = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_SingleClick = 1
let Tlist_Inc_Winwidth = 0

" enable neocomplcache
let g:neocomplcache_enable_at_startup = 1

" Map <Leader>cd to something useful
nnoremap <silent> <Leader>cd :lcd %:h<CR>

" vim: set ft=vim :
