set nocompatible	" be iMproved
filetype off 


call plug#begin('~/.vim/plugged')

" Syntastic is a syntax checking plugin
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug 'ekalinin/dockerfile.vim'
Plug 'paredit.vim'
Plug 'matze/vim-move'
Plug 'valloric/youcompleteme'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'kien/rainbow_parentheses.vim'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-classpath'
Plug 'clojure-emacs/cider-nrepl'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-cljfmt'

call plug#end()

" Airline
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs"

" Other ...
set rnu

set noswapfile
set t_Co=256

" Syntax highlighting enables.
if has("syntax")
  syntax on
  set background=dark
  if !has('gui_running')
	  let g:solarized_termcolors=256
	  let g:solarized_termtrans=1
  endif
  colorscheme solarized
endif

" indent config
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

set smartcase	" Do smart case matching
set autowrite	" Automatically save before commands like :next and :make

" size of a hard tabstop
set tabstop=4

" size of an indent
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4
set expandtab

set number

set textwidth=80

let g:paredit_leader = '\'

"move plugin
let g:move_map_keys = 0
let g:move_key_modifier = 'C'

"rainbow
let g:rainbow_active = 1

"syntax for clojure boot
au BufNewFile,BufRead build.boot setf clojure
