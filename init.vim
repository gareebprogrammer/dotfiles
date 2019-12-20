"Plugin's
call plug#begin('~/.vim/plugged')
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

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

"Auto close pair"
Plug 'jiangmiao/auto-pairs'

"Rip grep
Plug 'jremmen/vim-ripgrep'

"Json support"
Plug 'leshill/vim-json'

"Lint with ale"
Plug 'w0rp/ale'

"intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Setting color scheme
Plug 'morhetz/gruvbox'

call plug#end()

"Setting colorscheme
colorscheme gruvbox

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

"fzf call"
nnoremap <silent> <C-f> :FZF<CR>

"Ripgrep
nnoremap <silent> <C-s> :Rg<CR>

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
