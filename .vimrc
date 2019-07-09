
"Plugin start"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'townk/vim-autoclose'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/c.vim'
Plug 'fatih/vim-go'
Plug 'cespare/vim-toml'
Plug 'valloric/youcompleteme'
Plug 'rust-lang/rust.vim'
Plug 'w0rp/ale'
"PLuginEnd

call plug#end()
"PLuging settings"
nnoremap <silent> <C-p> :FZF<CR>
map <F3> :NERDTreeToggle<CR>
let $FZF_DEFAULT_COMMAND = "find -L"
let g:AutoClosePreserveDotReg = 0

