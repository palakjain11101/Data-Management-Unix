#!/bin/bash
#telling the environment/os to use bash as a command interpreter

#if an argument is given along with the script, in the commandline
if [ $# -eq 1 ] && [ -d "$1" ]; then
	#for every file in the directory taken from the commandline
	for file in $1/*; do
		simplefilename=${file%.*} # remove extension
		simplefilename=${simplefilename##*/} # remove path

		#variable count stores the number of times
		#<Author> field appears in each file
		count=$(awk -F '>' '/<Author>/{sum +=1}

		END{print sum}' $file)
		echo $simplefilename $count

	#sort reviews count in descending order
	done | sort -k2 -n --reverse
else
	#if absolute/relative path is not provided in the
	#command line, inform the user that it must be provided
	echo "Please provide the path for `basename $0` "
fi
#EOF
