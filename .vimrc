" My vimrc File "

"Plugin init start()
call plug#begin('~/.vim/plugged')
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
Plug 'morhetz/gruvbox'
call plug#end()
"Plugin init end()

set background=dark 

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
"Search highlight
set hlsearch

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
let $FZF_DEFAULT_COMMAND = "find -L"
noremap <C-C> <esc>
cnoremap <C-C> <esc>
let g:AutoClosePreserveDotReg = 0
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
