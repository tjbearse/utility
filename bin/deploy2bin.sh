#!/bin/bash
#
# deploy2bin
#
# copies file arguments to ~/bin
# adds executable privilege to new file

status=0

for path in "$@"
do
    if [ -e "$path" ]
    then	
	file=$(basename $path);
	cp -i "$path" ~/bin;
	chmod a+x ~/bin/$file;
    else
	echo "$path not found" >&2
	status=1
    fi
done

exit $status
