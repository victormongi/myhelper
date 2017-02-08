set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
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





"----------Searching-------------"
set hlsearch
set incsearch

autocmd BufWritePre *.php :%s/\s\+$//e





"-----------Mappings------------"
nmap ,ev :tabedit $MYVIMRC<cr>
" size of a hard tabstop
set tabstop=4

" always uses spaces instead of tab characters
set expandtab

" size of an indent
set shiftwidth=4




"--------AutoComands----------"
"Automatically source the Vimrc file on save.


augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

