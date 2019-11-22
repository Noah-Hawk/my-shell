#!/bin/bash
#simple backup file script

FILES="$@"
for f in $FILES
do
	#if .bak file exists, skips file
	if [[ -f ~/backup/${f}.bak ]]
	then
		echo "Skipping $f file..."
		continue
	fi
	#if no backup exists, copies file with .bak and moves it to backup directory
	cp $f $f.bak | mv $f.bak ~/backup > /dev/null 2>&1
done
