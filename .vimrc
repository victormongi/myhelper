set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'msanders/snipmate.vim'
Plugin 'jwalton512/vim-blade'
Plugin 'tpope/vim-surround'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"-------------Plugins--------------"
""/
"/ CtrlP
""/
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'
set wildignore+=*\\node_modules\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_clear_cache_on_exit = 0

nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>
nmap <D-t> <Plug>PeepOpen

syntax enable

set backspace=indent,eol,start
set linespace=15

"----------Visual-------------"

set guifont=Fira_Code:h17

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R



set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set mouse=a

map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

map <ScrollWheelUp> <nop>
map <S-ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>
map <S-ScrollWheelDown> <nop>



"----------Searching-------------"
set hlsearch
set incsearch

inoremap jk <esc>
inoremap kj <esc>

autocmd BufWritePre *.php :%s/\s\+$//e
set timeout timeoutlen=3000 ttimeoutlen=100

"-----------Mappings------------"
nmap ,ev :tabedit $MYVIMRC<cr>
" size of a hard tabstop
set tabstop=4

" always uses spaces instead of tab characters
set expandtab

" size of an indent
set shiftwidth=4




"--------AutoComands---------"
"Automatically source the Vimrc file on save.

if has("win32")
   set directory=c:\\tmp,c:\\temp
elseif has("unix")
   set directory=/tmp
endif

augroup autosourcing

    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

