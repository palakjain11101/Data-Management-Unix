#!/bin/bash
#telling the environment/os to use bash as a command interpreter

#if an argument is given along with the script in the commandline
if [ $# -eq 1 ] && [ -d "$1" ]; then
	for file in $1/*; do #for every file in the folder
		simplefilename=${file%.*} # remove extension
		simplefilename=${simplefilename##*/} # remove path

		#variable avg stores the result of the sum of all
		#the overall ratings divided by the total number of
	        #times the field <Overall> appears
		avg=$(awk -F '>' '/<Overall>/{sum += $2; total += 1}

		#the result is limited to 2 decimal places
	       	END{printf ("%.2f", sum/total)}' $file)
		echo $simplefilename $avg

	#sort average ratings in descending order
	done | sort -k2 -n --reverse
else
	#if absolute/relative path is not provided in the
	#command line, inform the user that it must be provided
	echo "Please provide the path for `basename $0`"
fi
#EOF
