#!/bin/bash

# Generate files with random filename (extension jpg)

n=0
while [ $n < 8 ]; do
	printf	((($RANDOM%26))+97)
	n=n+1
done
	
 
