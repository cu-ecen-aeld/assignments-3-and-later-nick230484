#!/bin/sh
#Author:Nicola Bianchini

WRITEFILE=$1
WRITESTR=$2

#1 and 2 - check the number of input parameters
if [ $# -lt 2 ]
then
	echo "not all input parameters have been specified"
	exit 1
fi

#3 - create file and folder from input variables

mkdir -p  "${WRITEFILE%/*}"
touch $WRITEFILE
echo "$WRITESTR" > $WRITEFILE

if [ $? -eq 0 ]
then
	echo "success"
	exit 0
else
	echo "file could not be created"
	exit 1		        
fi

