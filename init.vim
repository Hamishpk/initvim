set number
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab 
" Copy to clipboard when yanking
set clipboard=unnamedplus

call plug#begin('~/.local/share/nvim/plugged')

" Nerdtree
Plug 'scrooloose/nerdtree'
autocmd vimenter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

Plug 'cocopon/iceberg.vim' 
" vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" automatic import management
let g:go_fmt_command = "goimports"
" syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
" status bar
let g:go_auto_type_info = 1
" matching identifiers
let g:go_auto_sameids = 1
let g:go_fmt_command = "gofmt"

" Terraform
Plug 'hashivim/vim-terraform'

" FuzzFox
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
map <C-f> :Files<CR>

" Sliver searcher
Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'
map <C-S> :Ag<CR>

" Git
Plug 'tpope/vim-fugitive'

Plug 'vim-scripts/tComment'

call plug#end()

set background=dark
colorscheme iceberg
