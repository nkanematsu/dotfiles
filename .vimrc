set nocompatible
filetype off

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'https://github.com/Shougo/vimfiler.git'
NeoBundle 'thinca/vim-ref'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'matchit.zip'
NeoBundle 'Shougo/neocomplcache'
call neobundle#end()

filetype plugin on
filetype indent on

set backspace=indent,eol,start

" syntax on
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

" neocomplcache設定
autocmd BufRead *.php\|*.ctp\|*.tpl\|*.html :set dictionary=~/.vim/dictionary/php.dict filetype=php
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'
