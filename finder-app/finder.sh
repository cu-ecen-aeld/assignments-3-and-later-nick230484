#!/bin/sh
#Author:Nicola Bianchini

FILESDIR=$1
SEARCHSTR=$2

#1 - check the number of input parameters
if [ $# -lt 2 ] 
then
	echo "not all input parameters have been specified"
	exit 1
fi

#2 - check if filesdir is a direcotry and exists
if [ -d "$FILESDIR" ] 
then
	echo "$FILESDIR exists and is a directory"
else
	echo"$FILESDIR is not a directory"
	exit 1
fi

#3 - counting number of files and matching lines
count=$(ls $FILESDIR | wc -l)
cd $FILESDIR
count_string_occurencies=$(grep -r $SEARCHSTR * | wc -l)

echo "The number of files are $count and the number of matching lines are $count_string_occurencies"
