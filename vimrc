
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

set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" source ~/.python_vimrc

au BufRead,BufNewFile *.thrift set filetype=thrift
au! Syntax thrift source ~/.vim/thrift.vim

let g:rbpt_colorpairs = [
  \ [ '13', '#6c71c4'],
  \ [ '5',  '#d33682'],
  \ [ '1',  '#dc322f'],
  \ [ '9',  '#cb4b16'],
  \ [ '3',  '#b58900'],
  \ [ '2',  '#859900'],
  \ [ '6',  '#2aa198'],
  \ [ '4',  '#268bd2'],
  \ ]
 

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

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
set background=dark
colorscheme solarized

set visualbell
