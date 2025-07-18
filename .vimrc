" vim config file
" to be plaed in ~/.vimrc 

syntax on
set mouse=a

" Ctrl+c to yank to system clipboard
vmap <C-c> "+y

" Use spaces for indent
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Treat four spaces as a tab
set tabstop=8 softtabstop=0
