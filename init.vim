filetype off 

call plug#begin('~/.config/nvim/plugged/')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}
Plug 'gavocanov/vim-js-indent', {'for': 'javascript'}
Plug 'maksimr/vim-jsbeautify'
Plug 'mxw/vim-jsx'

"dark powered neo-completion
Plug 'shougo/deoplete.nvim'

"typescript
Plug 'herringtondarkholme/yats.vim'
Plug 'mhartington/nvim-typescript'


"Plug 'leafgarland/typescript-vim'
"Plug 'quramy/tsuquyomi'


"elm
Plug 'elmcast/elm-vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug 'ekalinin/dockerfile.vim'
Plug 'paredit.vim'
Plug 'matze/vim-move'
"Plug 'kien/rainbow_parentheses.vim'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-classpath'
Plug 'clojure-emacs/cider-nrepl'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-cljfmt'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
"Plug 'raimondi/delimitmate'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'lifepillar/pgsql.vim'
Plug 'klen/python-mode'
Plug 'google/yapf'
Plug '~/.config/nvim/plugged/yapf/plugins/vim'

call plug#end()

" Airline
set laststatus=2   " Always show the statusline
"set encoding=utf-8 " Necessary to show Unicode glyphs"

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
let g:move_map_keys = 1
let g:move_key_modifier = 'A'

"rainbow
let g:rainbow_active = 1

"syntax for clojure boot
au BufNewFile,BufRead build.boot setf clojure

"format clojure file
"map <C-f> :silent !cljfmt %<CR>
".vimrc
"map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType typescript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

let g:editorconfig_Beautifier = '~/.editorconfig'

"jsx config
let g:jsx_ext_required = 0

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

nmap <C-p> :FZF<CR>

"elm
let g:elm_format_autosave = 1
let g:elm_make_output_file = "/dev/null"
let g:elm_syntastic_show_warnings = 1

"Syntastic support should work out of the box, but we recommend the following settings:
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1


"By default python-mode uses python 2 syntax checking. To enable python 3 syntax checking (e.g. for async) add:
let g:pymode_python = 'python3'

"yapf
map <C-Y> :call yapf#YAPF()<cr>
imap <C-Y> <c-o>:call yapf#YAPF()<cr>

" Use deoplete.
let g:deoplete#enable_at_startup = 1
