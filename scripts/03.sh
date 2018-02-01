#!/bin/bash

if [ $# != 1 ]
	then 
		echo "Incorrect number of arguments !" >&1
		echo "USAGE: ./03.sh [DIRECTORY]" 
else
	du $1 | sort -rn
fi
