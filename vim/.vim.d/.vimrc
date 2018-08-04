filetype plugin indent on
set nocompatible " be iMproved, required
filetype off " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

set splitbelow
set splitright

""" Auto things
set autoread
set foldmethod=indent
set nofoldenable
au BufRead *.txt setlocal spell

set directory=$HOME/.vim/swapfiles//

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_max_depth=20
let g:ctrlp_max_files=400
let g:ctrlp_working_path_mode = 'ra'


Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
if executable('rg')
	let g:ackprg = 'rg -s --vimgrep'
	let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
endif
"ca Ack Ack!
cnoreabbrev ag Ack!
cnoreabbrev Ag Ack!
cnoreabbrev rg Ack!


Plugin 'airblade/vim-gitgutter'
"avoid gutter popping in and out
set signcolumn=yes

" Git commands (G<something>)
Plugin 'tpope/vim-fugitive'

" rainbow parens
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 0 "enable it later via :RainbowToggle
"color needs work here
let g:rainbow_conf = {
\	'guifgs': ['RoyalBlue3', 'SeaGreen3', 'DarkOrchid3', 'firebrick3', 'RoyalBlue3',
\ 'SeaGreen3', 'DarkOrchid3', 'firebrick3', 'RoyalBlue3', 'SeaGreen3',
\ 'DarkOrchid3', 'firebrick3', 'RoyalBlue3', 'SeaGreen3', 'DarkOrchid3',
\ 'firebrick3'],
\	'ctermfgs': ['lightyellow'],
\	'operators': 0,
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold']
\}

Plugin 'ap/vim-css-color'

Plugin 'easymotion/vim-easymotion'

" Bundle 'ervandew/supertab'


" Plugin 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" Plugin 'SirVer/ultisnips'
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories=$HOME.'/.vim.d/UltiSnips'
let g:UltiSnipsSnippetsDir=$HOME.'/.vim.d/UltiSnips'

" indents
set shiftwidth=4
set tabstop=4
set noexpandtab
Plugin 'tpope/vim-sleuth' " indent


Plugin 'pangloss/vim-javascript'
Plugin 'fatih/vim-go'
"Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'

Plugin 'scrooloose/syntastic'
"" suggested starters
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"" end suggestions
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = '~/bin/qualtrics/eslint-wrapper.sh'
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_go_check_on_open = 0
let g:syntastic_go_checkers = ['go', 'gofmt', 'govet']
let g:syntastic_html_checkers=[]

" Js formatting
Plugin 'maksimr/vim-jsbeautify'

" Plugin 'chrisbra/csv.vim' kind of annoying
Plugin 'kshenoy/vim-signature'


source ~/.vim.d/.vimrc_visual
source ~/.vim.d/.vimrc_mapping

" function! FindConfig(prefix, what, where)
" 	let cfg = findfile(a:what, escape(a:where, ' ') . ';')
" 	return cfg !=# '' ? ' ' . a:prefix . ' ' . shellescape(cfg) : ''
" endfunction
" 
" autocmd FileType javascript let b:syntastic_javascript_jhint_args = 
" 			\ get(g:, 'syntastic_javascript_jhint_args', '') .
" 			\ FindConfig('-c', '.jshintrc', expand('<afile>:p:h', 1))
" autocmd FileType javascript let b:syntastic_javascript_jscs = 
" 			\ get(g:, 'syntastic_javascript_jscs_args', '') .
" 			\ FindConfig('-c', '.jscs.json', expand('<afile>:p:h', 1))

call vundle#end()            " required vundle
filetype plugin indent on    " required vundle
syntax on
