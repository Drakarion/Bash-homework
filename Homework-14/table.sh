#!/bin/bash


read -p "Enter your number: " num

for i in {1..10}
do
	echo "$num * $i = $((num*i))"
done

