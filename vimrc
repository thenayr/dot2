call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
call pathogen#infect()

 	
set background=light
colorscheme solarized
set encoding=utf-8
syntax enable
filetype on                   " Enable filetype detection
filetype plugin indent on
set number
set autoindent
set smartindent
set backspace=indent,eol,start 
set tabstop=2
set shiftwidth=2
set pastetoggle=<F12>
set expandtab
set smarttab
set ruler
set nocompatible
set showcmd             " Show (partial) command in status line.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hidden              " Hide buffers when they are abandoned
set ignorecase
set cursorline
au BufNewFile,BufReadPost *.html setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.haml setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.scss setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.css setl shiftwidth=2 expandtab
nnoremap ; :
inoremap jj <Esc>
let mapleader=","
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>
noremap <CR>s :CommandTAcceptSelectionSplitMap<CR>
set list
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen=
"folding settings
set laststatus=2 " Always show the statusline"

let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="normal"
let g:solarized_visibility="high"

" Bubble single lines  	
nmap <C-j> ddp
" Bubble multiple lines
vmap <C-k> xkP`[V`]
vmap <C-j> xp`[V`]"

"Ctrlp
noremap <leader>o <Esc>:CtrlP<CR>
noremap <leader>m <Esc>:CtrlPMRU<CR>

"Powerline
let g:Powerline_symbols = 'fancy'
set guifont=Inconsolata-dz-Powerline

set clipboard=unnamed
