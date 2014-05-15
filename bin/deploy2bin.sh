#!/bin/bash

for path in "$@"
do
    if [ -e "$path" ]
    then	
	file=$(basename $path);
	cp -i "$path" ~/bin;
	chmod a+x ~/bin/$file;
    fi
done
