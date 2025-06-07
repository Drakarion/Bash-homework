#!/bin/bash


while true
do
	read -p "Type a word: " word
	if [ "$word" == "stop" ]
	then
		break
	fi
done

