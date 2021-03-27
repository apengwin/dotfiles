set rtp+=~/.vim/bundle/Vundle.vim
:let mapleader = ","
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dense-analysis/ale'
call vundle#end()            " required
syntax on

set showcmd
set nu
set mouse=a
set mousehide
set ruler
set noswapfile
set nobackup
set scrolloff=5
set showmatch
set list
set listchars=tab:>-
set hls is
set noic
"filetype plugin indent on


map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>


inoremap <c-p> <Esc>:CtrlP .<CR>
let g:ctrlp_working_path_mode = 'ra'
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set scrolloff=2
set noerrorbells

match ErrorMsg '\%>120v.\+'
match ErrorMsg '\s\+$'

let b:ale_linters = ['flake8']


" make it easier to combine comments.
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif

nnoremap <BS> {
onoremap <BS> {
vnoremap <BS> {

nnoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
onoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
vnoremap <CR> }

set tabstop=4 shiftwidth=4 expandtab

filetype plugin on
augroup filetypedetect
    au! BufNewFile,BufRead *.jemdoc setf jemdoc
augroup END

" Last line is for proper wrapping of jemdoc lists, etc.
autocmd Filetype jemdoc setlocal comments=:#,fb:-,fb:.,fb:--,fb:..,fb:\:

let b:ale_linters = ['flake8']
set backspace=indent,eol,start

