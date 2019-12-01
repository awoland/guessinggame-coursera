#!/usr/bin/env bash
# File: guessinggame.sh

echo "Welcome to Coursera.org Unix Workbench game!"

answer=0
numfiles=$(ls | wc -w)

function guess {
	echo -n "Plaease answer, how many files are in the current directory ? :"
	read answer
}

while [[ $answer -ne $numfiles ]]
do
	guess
	if [[ $answer -eq $numfiles ]]
	then
		echo "Congrats to You! Your guess has been correct!"
		continue
	elif [[ $answer -lt $numfiles ]]
	then
		echo "Sorry, but number in Your guesse is too low. Please try guess it again."
	else
		echo "Sorry, but number in Your guesse is too high. Please try guess it again."
	fi
done
