
colorscheme desert

"Vim settings"
syntax on
set autoindent
set number
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch
set showmatch
set cindent
set shiftwidth=4		"Number of auto-indent spaces
set smartindent			"Enable smart-indent
set smarttab			"Enable smart-tabs
set softtabstop=4		"Number of spaces per Tab
set ruler			"Show row and column ruler information
set undolevels=1000		"Number of undo levels
set backspace=indent,eol,start	"Backspace behaviour
 

"Removeing toolbar"
set guioptions-=T

"Setting gui font"
set guifont=Liberation\ Mono\ 13


"Copy/Cut/Paste"
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+"""

"Key changes"
inoremap <C-Z> <Esc>
inoremap <C-z> <Esc>

