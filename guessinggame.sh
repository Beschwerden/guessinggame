#!/usr/bin/env bash
# File: guessinggame.sh
varfiles=$(find . -type f | wc -l)
varloop=true
function answer {
	echo "Your guess is too $1. Guess again."
}
echo "Start guessinggame."
while $varloop
do
	echo "How many files are in the directory?"
	read response
	if [[ $response -eq $varfiles ]]
	then
		echo "Correct. There are $varfiles files in this directory."
		varloop=false
	elif [[ $response -gt $varfiles ]]
	then
		#echo "No, not that much. Guess again!"
		answer high
	elif [[ $response -lt $varfiles ]]
	then
		#echo "No, there are more files. Guess again!"
		answer low
	fi
done
echo "End guseeinggame."

