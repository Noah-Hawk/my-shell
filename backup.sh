#!/bin/bash

FILES="$@"
for f in $FILES
do
	#if .bak backup file exists, read next file
	if [[ -f ~/backup/${f}.bak ]]
	then
		echo "Skipping $f file..."
		continue
	fi
	#we are here means no backup file exists, just use cp command to copy file
	cp $f $f.bak | mv $f.bak ~/backup > /dev/null 2>&1
done
