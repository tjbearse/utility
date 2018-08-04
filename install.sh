#!/bin/bash

# run from this configuration directory

install_dir="$PWD/$(dirname -- "$0")"
cd $install_dir

stow bash
stow emacs
stow git
stow python
stow vim
stow tmux
