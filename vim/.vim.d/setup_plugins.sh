mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
mkdir -p ~/.vim/bundle/YouCompleteMe
(cd ~/.vim/bundle/YouCompleteMe && \
   git submodule update --init --recursive && \
   ./install.py)
