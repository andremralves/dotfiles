" ---- GENERAL SETTINGS ----

let mapleader=" " 			        " map leader to space
set number				            " show numbers
set laststatus=2			        " show status
set showcmd                 		" show commands 
set wildmenu                		" show menu

" ---- FIND FILES ----
set path+=**

" ---- TABS ----
set wrap
set textwidth=79
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround


" ---- PACKAGE MANAGER ----
call plug#begin('~/.vim/plugged')

" Explorer
Plug 'preservim/nerdtree'

" Statusline
Plug 'itchyny/lightline.vim'

" Comments
Plug 'tpope/vim-commentary'

" Colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }

" Completition plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" ---- PLUGINS CONFIG ----
source ~/.vim/plugins-config/coc-nvim.vim

" ---- COLOR ----

set hlsearch				" Highlight on search
let g:dracula_colorterm=0
let g:dracula_italic = 0
color dracula				" Set colorscheme
highlight Normal ctermbg=None

" ---- MAPPINGS ----

" NERDTree mappings
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" MY LEADER MAPS 
" Reload working file
nnoremap <leader>r :edit <bar> echo "File reloaded!"<CR> 
" Source vimrc
nnoremap <leader>s :source $MYVIMRC <bar> echo "vimrc sourced!"<CR> 
" Open terminal
nnoremap <leader><CR> :terminal<CR>
