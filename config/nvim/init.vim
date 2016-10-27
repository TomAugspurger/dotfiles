set nocompatible

call plug#begin('~/.vim/plugged')

" Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'Shougo/deoplete.nvim'
Plug 'jmcantrell/vim-virtualenv'
Plug 'bling/vim-airline'
Plug 'JuliaLang/julia-vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
" Plug 'Raimondi/delimitmate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'joom/latex-unicoder.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'lepture/vim-jinja'
Plug 'vim-scripts/django.vim'
Plug 'dag/vim-fish'
Plug 'rking/ag.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'wellle/targets.vim'
Plug 'jpalardy/vim-slime'
Plug 'FooSoft/vim-argwrap'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'shime/vim-livedown'
Plug 'lervag/vimtex'
Plug 'junegunn/goyo.vim'
Plug 'rizzatti/dash.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'flazz/vim-colorschemes'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'hail2u/vim-css3-syntax'
Plug 'mattn/emmet-vim'
Plug 'zchee/deoplete-jedi'
" Plug 'davidhalter/jedi-vim'
" Plug 'davidhalter/jedi'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
" Plug 'bitc/vim-hdevtools'
Plug 'terryma/vim-expand-region'
Plug 'benmills/vimux'
Plug 'janko-m/vim-test'

Plug 'jgdavey/tslime.vim'
" Plug 'Shougo/vimproc.vim'
Plug 'vim-scripts/gitignore'

" Git
Plug 'int3/vim-extradite'

" Text manipulation
Plug 'michaeljsmith/vim-indent-object'
Plug 'easymotion/vim-easymotion'

" Allow pane movement to jump out of vim into tmux
Plug 'christoomey/vim-tmux-navigator'

"Python
Plug 'tmhedberg/SimpylFold'
Plug 'pearofducks/ansible-vim'
Plug 'vim-scripts/Vim-R-plugin'

" Haskell
" Plug 'neovimhaskell/haskell-vim'
" Plug 'enomsg/vim-haskellConcealPlus'
" Plug 'eagletmt/ghcmod-vim'
" Plug 'eagletmt/neco-ghc'
" Plug 'Twinside/vim-hoogle'

" R
Plug 'jalvesaq/Nvim-R'

" Neovim specific
" https://github.com/kassio/neoterm/issues/95
Plug 'kassio/neoterm', { 'commit': '9e33da0a' }
Plug 'alvan/vim-closetag'
Plug 'benekastah/neomake'
Plug 'gregsexton/MatchTag'

" javascript
Plug 'wookiehangover/jshint.vim'

" HTML
Plug 'mattn/emmet-vim'

call plug#end()

" Themeing
" always show airline
set laststatus=2
let g:airline_powerline_fonts=1
" set guifont=Source\ Code\ Pro\ For\ Powerline
colorscheme Monokai
set cc=80

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

au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

" unicode
let g:unicoder_cancel_normal = 1
let g:unicoder_cancel_insert = 1
let g:unicoder_cancel_visual = 1
nnoremap <C-u> :call unicoder#start(0)<CR>
inoremap <C-u> <Esc>:call unicoder#start(1)<CR>
vnoremap <C-u> :<C-u>call unicoder#selection()<CR>

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

map <Leader>s :SyntasticToggleMode<CR>

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

set backspace=2

" bash style completion
set wildmode=longest,list,full
set wildmenu

let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_python_flake8_args='--ignore=E302,E501,W391,E702,E731'
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_check_on_open=0

let g:syntastic_javascript_checkers = ['jshint']

" let g:syntastic_rst_checkers = ['sphinx']


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:latex_to_unicode_file_types = ".*"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_ignore_files = ['\.py$']  " while using python-mode


set runtimepath+=~/path/to/deoplete.nvim/
set runtimepath+=~/path/to/deoplete-jedi/
let g:deoplete#enable_at_startup = 1
call deoplete#custom#set('jedi', 'debug_enabled', 1)

let g:python_host_prog='/usr/local/bin/python'  " nevoim + python
let g:python3_host_prog='/Users/tom.augspurger/Envs/neovim/bin/python'  " nevoim + python

let g:pymode_rope = 0
let g:pymode_folding = 0

filetype plugin indent on
set clipboard=unnamed
set scrolloff=8
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*__pycache__,*/build/*,*/dist/*

" search

set hlsearch
set incsearch

let g:fzf_command_prefix = 'Fzf'
let g:fzf_layout = { 'window': 'enew' }

" Markdown / Pandoc
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 1

" let g:pandoc#command#autoexec_on_writes = 1

" let g:pymode_rope = 0
" let g:pymode_doc = 1
" let g:pymode_doc_key = 'K'

"Linting
" let g:pymode_lint = 1
" let g:pymode_lint_checkers = ['pyflakes']
" let g:pymode_lint_ignore = "E302,E501,W391,E702"

" Auto check on save
" let g:pymode_lint_write = 1

" Support virtualenv
" let g:pymode_virtualenv = 1

" Enable breakpoints plugin
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
" let g:pymode_syntax = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
" let g:pymode_folding = 1
let g:ctags_statusline=1

let g:TagbarToggle = '<leader>t'

" " Search API docs for query you type in:
" nnoremap <Leader>k :Dash<Space>

" " Search API docs for word under cursor:
" nnoremap <silent> <Leader>K :call Dash([expand('<cWORD>'), expand('<cword>')])<Return>

" " Search API docs for the selected text:
" vnoremap <silent> <Leader>K y:<C-U>call Dash(getreg(0))<Return>

:nmap <silent> <leader>k <Plug>DashSearch

let g:slime_target = "tmux"
let g:slime_python_ipython = 1
set mouse=a
set shell=/bin/bash

set visualbell
set noerrorbells

" python testing
"
let test#python#runner = 'pytest'
let test#strategy = 'neoterm'

nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ut :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVist<CR>

" let g:deoplete#enable_at_startup = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 1
let g:ycm_key_list_select_completion = ['<tab>', '<C-n>', '<Down>']
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Whitespace
" autocmd BufWritePre * StripWhitespace

" au BufNewFile,BufRead *.pymd setf markdown

let g:vim_markdown_math=1

" speed up ctrlp with ag
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif

" ctrlp + ctags
noremap <leader>. :CtrlPTag<cr>

" HTML

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"


" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

" From Haskell should mix it in

set formatprg="PARINIT='rTbgqR B=.,?_A_a Q=_s>|' par\ -w72"

" Use stylish haskell instead of par for haskell buffers
autocmd FileType haskell let &formatprg="stylish-haskell"

" Find custom built ghc-mod, codex etc
let $PATH = $PATH . ':' . expand("~/.haskell-vim-now/bin")

" Kill the damned Ex mode.
nnoremap Q <nop>

" Height of the command bar
set cmdheight=1

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

augroup sourcing
  autocmd!
  autocmd bufwritepost .vimrc source $MYVIMRC
augroup END

" Pretty unicode haskell symbols
let g:haskell_conceal_wide = 1
let g:haskell_conceal_enumerations = 1
let hscoptions="𝐒𝐓𝐄𝐌xRtB𝔻w"

" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk

" Disable highlight when <leader><cr> is pressed
" but preserve cursor coloring
nmap <silent> <leader><cr> :noh\|hi Cursor guibg=red<cr>
augroup haskell
  autocmd!
  autocmd FileType haskell map <silent> <leader><cr> :noh<cr>:GhcModTypeClear<cr>:SyntasticReset<cr>
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
augroup END

" Return to last edit position when opening files (You want this!)
augroup last_edit
  autocmd!
  autocmd BufReadPost *
       \ if line("'\"") > 0 && line("'\"") <= line("$") |
       \   exe "normal! g`\"" |
       \ endif
augroup END

" Enable some tabular presets for Haskell
" let g:haskell_tabular = 1

" }}}

" Tags {{{

set tags=tags;/,codex.tags;/

let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }

" Generate haskell tags with codex and hscope
map <leader>tg :!codex update --force<CR>:call system("git hscope -X TemplateHaskell")<CR><CR>:call LoadHscope()<CR>

map <leader>tt :TagbarToggle<CR>

set csprg=~/.haskell-vim-now/bin/hscope
set csto=1 " search codex tags first
set cst
set csverb
nnoremap <silent> <C-\> :cs find c <C-R>=expand("<cword>")<CR><CR>
" Automatically make cscope connections
function! LoadHscope()
  let db = findfile("hscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/hscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au BufEnter /*.hs call LoadHscope()

" Haskell Interrogation {{{

set completeopt+=longest

" Use buffer words as default tab completion
let g:SuperTabDefaultCompletionType = '<c-x><c-p>'

" But provide (neco-ghc) omnicompletion
if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

" Show types in completion suggestions
let g:necoghc_enable_detailed_browse = 1

" Type of expression under cursor
nmap <silent> <leader>ht :GhcModType<CR>
" Insert type of expression under cursor
nmap <silent> <leader>hT :GhcModTypeInsert<CR>
" GHC errors and warnings
nmap <silent> <leader>hc :SyntasticCheck ghc_mod<CR>

" Resolves ghcmod base directory
au FileType haskell let g:ghcmod_use_basedir = getcwd()

" Fix path issues from vim.wikia.com/wiki/Set_working_directory_to_the_current_file
let s:default_path = escape(&path, '\ ') " store default value of 'path'
" Always add the current file's directory to the path and tags list if not
" already there. Add it to the beginning to speed up searches.
autocmd BufRead *
      \ let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
      \ exec "set path-=".s:tempPath |
      \ exec "set path-=".s:default_path |
      \ exec "set path^=".s:tempPath |
      \ exec "set path^=".s:default_path


" Haskell Lint
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['haskell'] }
nmap <silent> <leader>hl :SyntasticCheck hlint<CR>

" Hoogle the word under the cursor
nnoremap <silent> <leader>hh :Hoogle<CR>

" Hoogle and prompt for input
nnoremap <leader>hH :Hoogle

" Hoogle for detailed documentation (e.g. "Functor")
nnoremap <silent> <leader>hi :HoogleInfo<CR>

" Hoogle for detailed documentation and prompt for input
nnoremap <leader>hI :HoogleInfo

" Hoogle, close the Hoogle window
nnoremap <silent> <leader>hz :HoogleClose<CR>

" }}}

" Conversion {{{

function! Pointfree()
  call setline('.', split(system('pointfree '.shellescape(join(getline(a:firstline, a:lastline), "\n"))), "\n"))
endfunction
vnoremap <silent> <leader>h. :call Pointfree()<CR>

function! Pointful()
  call setline('.', split(system('pointful '.shellescape(join(getline(a:firstline, a:lastline), "\n"))), "\n"))
endfunction
vnoremap <silent> <leader>h> :call Pointful()<CR>

" }}}

