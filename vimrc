
" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support.
set mouse+=a

set showcmd

" Don't leave swapfiles and stuff.
set noswapfile
set nobackup

" Don't need to scroll to top or bottom.
set scrolloff=5

" Highlighting in search.
set hls is

" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" When invoked without an explicit starting directory
" CtrlP will set its local working directory
" to the nearest ancestor with any one of these:
" .git .hg .svn .bzr _darcs
let g:ctrlp_working_path_mode = 'ra'
" Honestly don't know what this does.
let g:ctrlp_user_command = 'find %s -type f'     

" List buffers at top.
let g:airline#extensions#tabline#enabled = 1
" buffer naming.
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" Set airline theme.
" let g:airline_theme = 'luna'

" Shortcut to toggle NERDTree.
nnoremap <C-t> :NERDTreeToggle<CR>

