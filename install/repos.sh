#!/usr/bin/env bash
#
#
# pulls useful repos

install_dir="$PWD/$(dirname -- "$0")"

# setup bin
(cd $HOME
if [ ! -d "bin" ]; then
	git clone git@github.com:tjbearse/bin.git
	cd 'bin'
	git submodule init
	git submodule update
else
	echo "bin already exists"
fi)


# setup prompt
echo $(cd $install_dir
git submodule init
git submodule update
)
