#!/usr/bin/bash

grain=1db

argument=$1


if [ $argument == '+' ] 
then
	amixer set Master $grain+
elif [ $argument == '-' ] 
then
	amixer set Master $grain-
elif [ $argument == 0 ]
then
	amixer set Master 0%
fi

if [ $(amixer cget numid=13 | grep ': values=' | grep -o -E '[0-9]+') == 0 ]
then
	amixer set 'Mute-LED Mode' On
else
	amixer set 'Mute-LED Mode' Off
fi
