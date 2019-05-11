#!/usr/bin/bash

grain=1db

argument=$1


if [ $argument == '+' ] 
then
	echo amixer set Master $grain+
elif [ $argument == '-' ] 
then
	echo amixer set Master $grain-
elif [ $argument == 0 ]
then
	echo amixer set Master 0%
fi

