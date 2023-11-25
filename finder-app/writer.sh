#!/bin/bash

if [ "$#" -ne 2 ]
then
	echo Arguements are wrong
	exit 1
fi

writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")"

if [ ! -d "$(dirname "$writefile")" ]
then
	echo File not created
	exit 1
fi

echo "$writestr" > "$writefile"


