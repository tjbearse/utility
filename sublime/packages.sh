#!/usr/bin/env bash
#
#
# pulls useful package repos for submlime

#packages
packages=( "git://github.com/jisaacks/GitGutter.git" )

sublime_dir="$HOME/.config/sublime-text-3/Packages"
# setup bin
if [ ! -d $sublime_dir ]; then
	echo "sublime package directory \"$sublime_dir\" not found"
else
	(	
		cd $sublime_dir
		for var in "${packages[@]}"
		do
			git clone $var
		done
	)
fi
