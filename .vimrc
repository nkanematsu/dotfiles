" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'Shougo/unite.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'itchyny/lightline.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set backspace=indent,eol,start

set number

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

" タブ
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set tabstop=4

set laststatus=2
set t_Co=256

" 空白文字
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

" Color
syntax enable
set background=dark
colorscheme solarized
