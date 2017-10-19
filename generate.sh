#!/bin/bash

#This file generates jpg files with random filenames

m=0						#initialize counter outer while loop
while [ $m -lt $1 ]; do				#use first parameter for the amount of files to be generated
	word="pic"				#start filename with pic
	n=0					#initialize counter inner while loop
	while [ $n -lt 8 ]; do			#loop will run 8 times in order to get 8 characters
		i="$((97+$RANDOM%26))"		#i becomes a random number between 97 and 122 (a-z in ascii)
		word+="\\$(printf %o $i)"	#add character to word string
		let n=n+1			#alternative for double parenthesis (( ))
	done					#close inner while loop
	word+=".jpg"				#append file extension
	printf $word | xargs touch		#use xargs to properly parse the ascii characters in word
	let m=m+1
done
