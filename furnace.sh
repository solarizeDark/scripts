#!/usr/bin/bash

# removes all file and dirs in given path

cleaner()
{
	for file in `ls $1`
	do
		[ -f $1/$file ] && `rm $1/$file`
		[ -d $1/$file ] && `rm -r $1/$file`
		cleaner $1/$file
	done
}

[ ! $# -eq 1 ] && echo wrong args && exit 1 
[ ! -e $1 ] && echo path doesnt exist && exit 2
[ ! -d $1 ] && echo arg is not path to dir && exit 3

cleaner $1

