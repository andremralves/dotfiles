imap jk <esc>

set number
set relativenumber

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set guifont=Monospace:h12

filetype plugin indent on
syntax on

colorscheme far

" brackets highlights
autocmd! FileType c,cpp,java,php call CSyntaxAfter()

" cp snippets
source ~/repos/competitiveProgramming/snippets.vim
