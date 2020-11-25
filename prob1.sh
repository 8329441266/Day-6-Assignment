#! /bin/bash

read -p "Enter nth number:" number

for(( count=0; count<number; count++))
do
	echo $((2**count))
done
