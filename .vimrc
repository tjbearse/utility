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

inoremap jj <Esc>   """ jj key is <Esc> setting

" indents
set shiftwidth=4
set tabstop=4
set cindent

set hlsearch " makes highlight show up on search

colorscheme desert
