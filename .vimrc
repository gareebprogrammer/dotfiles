"Using vimplug as my plugin manager"
call plug#begin('~/.vim/plugged')

"Fuzzy finder"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"Colorscheme"
Plug 'ajmwagar/vim-deus'


"Airline and airline themes"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"async lint"
Plug 'dense-analysis/ale'

"Go plugin for vim"
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Auto complete plugins"
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

"Python plugin"
Plug 'davidhalter/jedi-vim'

"Rust plugin"
Plug 'rust-lang/rust.vim'

"Cmake support"
Plug 'vhdirk/vim-cmake'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:airline_theme='bubblegum'
let g:rustfmt_autosave = 1

set background=dark 
set hlsearch
set smartcase
set ignorecase
set incsearch
set number
set autoindent
set linebreak	
set showbreak=+++
set textwidth=100
set showmatch


colorscheme deus
let g:deus_termcolors=256
nnoremap <c-p> :Files<CR>
