#!/bin/bash 
if [ ! -f $1 ]; then
	echo "No file found"
	exit 1
fi
intregex='^[0-9]+$' 
if ! [[ $2 =~ $intregex ]] ; then 
	echo "Second argument must be an integer"
	exit 1
fi
x=$(wc -l < "$1")
if [[ $2 -gt $x ]] || [[ $3 -gt $x ]];then
	echo "File too short for specified lines"
	exit 1
fi
echo "Head:"
echo $(head -$2 $1)
echo "Tail:"
if [ $# -eq 2 ]; then
	echo $(tail -$2 $1)
else
	echo $(tail -$3 $1)
fi
