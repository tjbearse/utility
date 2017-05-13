ex -n -es -c 'PluginInstall' -c 'exit'
(cd ~/.vim/bundle/YouCompleteMe && \
   git submodule update --init --recursive && \
   ./install.py)
