#!/bin/bash
set -e

# run from this configuration directory

install_dir="$PWD/$(dirname -- "$0")"
target_dir="$HOME"
cd $install_dir

echo "lifting dot files to home"
stow -t "$target_dir" bash emacs git python vim tmux

if [ -f "$HOME/.ssh/id_rsa.pub" ]; then
	echo "ssh key found, skipping that setup"
else
	echo "setup ssh keys"
	ssh-keygen -t rsa -b 4096 -C "bearse.thomas@gmail.com"
	echo "cool, add the key to github and then run install/repos.sh"
fi
