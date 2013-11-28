
set nocompatible

set backspace=indent,eol,start
set nobackup
set incsearch
set hlsearch

filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

set guioptions-=rL

" source ~/.python_vimrc

au BufRead,BufNewFile *.thrift set filetype=thrift
au! Syntax thrift source ~/.vim/thrift.vim

set tags=./tags;/
set nu

set autoread

if has("cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
      cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
    endif
endif

set t_Co=256
colorscheme zenburn

