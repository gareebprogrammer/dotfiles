" My vimrc File "

"Plugin init start()
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'townk/vim-autoclose'
Plug 'honza/vim-snippets'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'valloric/youcompleteme'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()
"Plugin init end()

set background=dark 
colorscheme gruvbox
let g:rustfmt_autosave = 1
nnoremap <silent> <C-p> :FZF<CR>
map <F3> :NERDTreeToggle<CR>
set number
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_scope_highlight = 1

