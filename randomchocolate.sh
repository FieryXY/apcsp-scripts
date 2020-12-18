#!/bin/bash

if [ $# -le $((0)) ] ; then
	echo "Invalid Argument";
	exit 0;
fi

NUM=$(($RANDOM % $1));
echo $NUM;
