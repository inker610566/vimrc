" margin
set nu

" syntax color
syntax on

" indent
filetype plugin indent on
set autoindent
set cindent

" tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" file
set nobackup
set nowb
set noswapfile
set autoread
"set autochdir

" search
set hlsearch
set incsearch

" editor
set showmatch

" bottom margin
set wildmenu
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set laststatus=2

set tags=./tags;/

" key
set backspace=indent,eol,start
nnoremap x "_x
vnoremap x "_x
vnoremap > >gv
vnoremap < <gv

" move
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nmap J 5j
nmap K 5k
vmap J 5j
vmap K 5k

" buffer 
nnoremap <tab> gt
nnoremap <s-tab> gT

" binary edit
command Hexedit %!xxd
command Hexsave %!xxd -r

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'posva/vim-vue'
Plugin 'chazy/cscope_maps'
Plugin 'davidhalter/jedi-vim'
call vundle#end()

let g:jedi#documentation_command = "D"

" file type
autocmd Filetype python so ~/.vim/filetype/python.vim
autocmd BufNewFile,BufRead *.smali so ~/.vim/filetype/smali.vim
autocmd BufNewFile,BufRead *.htmld set ft=htmldjango

