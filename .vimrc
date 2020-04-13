"Plugin's
call plug#begin('~/.vim/plugged')


"Code completion"
Plug 'ycm-core/YouCompleteMe'

"Rust support"
Plug 'rust-lang/rust.vim'

"Golang support"
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"FZF"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"Toml support"
Plug 'cespare/vim-toml'

"Yaml support"
Plug 'stephpy/vim-yaml'

"Javascript support
Plug 'pangloss/vim-javascript'

"VueJs cupport
Plug 'posva/vim-vue'

"Auto close pair"
Plug 'jiangmiao/auto-pairs'

"Rip grep
Plug 'jremmen/vim-ripgrep'

"Json support"
Plug 'leshill/vim-json'

"Lint with ale"
Plug 'w0rp/ale'

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Setting color scheme
Plug 'morhetz/gruvbox'

call plug#end()

"Setting colorscheme

set background=dark
"set background=light
let g:gruvbox_contrast_light="hard"
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox


let g:vue_pre_processors = []
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"Start ale on save
let g:ale_fix_on_save = 1

"Airline theme setup
let g:airline_theme='angr'

"Rust plugin setup"
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

"Go lang plugin setup"
let g:go_fmt_command = "goimports"
let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1

"Autocomplete"
let g:deoplete#enable_at_startup = 1

"Start completion
inoremap <silent><expr> <c-.> coc#refresh()

"fzf call"
nnoremap <silent> <C-f> :FZF<CR>

"Ripgrep
nnoremap <silent> <C-s> :Rg <space>

"Save file
nnoremap <Leader>w :w<CR>

"Remove selected lines
nnoremap <Leader><space> :noh<cr>

"Editor Configs"
set background=dark
set number		"Show line numbers
set linebreak		"Break lines at word (requires Wrap lines)
set showbreak=+++	"Wrap-broken line prefix
set textwidth=100	"Line wrap (number of cols)
set showmatch		"Highlight matching brace

set hlsearch		"Highlight all search results
set smartcase		"Enable smart-case search
set ignorecase		"Always case-insensitive
set incsearch		"Searches for strings incrementally
 
set autoindent		"Auto-indent new lines
set shiftwidth=4	"Number of auto-indent spaces
set smartindent		"Enable smart-indent
set smarttab		"Enable smart-tabs
set softtabstop=4
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>


""""""""""""""""""""""""""""""""""""""""""
"	    Keyboard shortcuts	         "
""""""""""""""""""""""""""""""""""""""""""
" Neat X clipboard integration
" ,p will paste clipboard into buffer
" ,c will copy entire buffer into clipboard
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>c :w !xsel -ib<cr><cr>

" Ctrl+c and Ctrl+j as Esc
" https://github.com/neovim/neovim/issues/5916
" So we also map Ctrl+k
inoremap <C-j> <Esc>

nnoremap <C-k> <Esc>
inoremap <C-k> <Esc>
vnoremap <C-k> <Esc>
snoremap <C-k> <Esc>
xnoremap <C-k> <Esc>
cnoremap <C-k> <Esc>
onoremap <C-k> <Esc>
lnoremap <C-k> <Esc>
tnoremap <C-k> <Esc>

nnoremap <C-c> <Esc>
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>
snoremap <C-c> <Esc>
xnoremap <C-c> <Esc>
cnoremap <C-c> <Esc>
onoremap <C-c> <Esc>
lnoremap <C-c> <Esc>
tnoremap <C-c> <Esc>


" Left and right can switch buffers
nnoremap <leader>o :bp<CR>
nnoremap <leader>n :bn<CR>

" Move by line
nnoremap j gj
nnoremap k gk

" YCM
" " The best part.
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>"
set completeopt-=preview

