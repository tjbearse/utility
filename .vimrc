set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Bundle 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on

inoremap jj <Esc>   """ jj key is <Esc> setting
