mkdir -p ~/.vim
mkdir -p ~/.vim/ftdetect

echo "au BufRead,BufNewFile *.spec.js		set filetype=javascript.spec" > ~/.vim/ftdetect/spec.vim
