call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'jpalardy/vim-slime'
Plug 'pedrohdz/vim-yaml-folds'

Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'


" Initialize plugin system
call plug#end()


let mapleader = "\<Space>"
inoremap jj <Esc>
inoremap jk <Esc>
nnoremap ; :

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" folding
nnoremap <leader>f za

" long lines
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set smartindent
set expandtab
set relativenumber
set number

" bash style completion
set wildmode=longest,list,full
set wildmenu

let g:ale_fixers=['black']

set backspace=indent,eol,start
