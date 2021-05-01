
" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Apparently some security bug.
set modelines=0

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
" shown in any window) that has unsaved changes. This is to prevent you from
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Make replacing all occurrences on a line the default.
set gdefault

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support.
set mouse+=a

set showcmd

" auto-indent for newlines.
set autoindent

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

" List buffers at top.
let g:airline#extensions#tabline#enabled = 1
" buffer naming.
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" Set airline theme.
" let g:airline_theme = 'luna'

" Shortcut to toggle NERDTree.
nnoremap <C-t> :NERDTreeToggle<CR>

" Make all tabs 4 spaces.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Something  to do with tab completion of commands, i think.
set wildmenu
set wildmode=longest:full,full

let mapleader = ","
nnoremap "\<Space>" \"

" Use tab to jump across bracket pairs.
nnoremap <tab> %
vnoremap <tab> %

" line wrap instead of pushing to new buffer.
set wrap
set formatoptions=qrn1
" Mark text that goes beyond 100 char limit.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Strip all trailing whitespace.
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Clear search highlights.
nnoremap <leader><space> :noh<cr>

filetype plugin on

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" fzf integration.
set rtp+=/opt/homebrew/opt/fzf

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
nmap <C-P> :ProjectFiles<CR>
