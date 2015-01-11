set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Bundle 'plasticboy/vim-markdown'

call vundle#end()
" end Vundle
filetype plugin indent on

inoremap jj <Esc>

noremap j gj
noremap k gk

" indents
set shiftwidth=4
set tabstop=4
set noexpandtab

set hlsearch " makes highlight show up on search

colorscheme desert
