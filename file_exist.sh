#!bin/usr/bash
if ["$#" -ne 2]; 
then
	echo "Usage: $0 <directory> <filename>"
	exit 1
fi

directory=$1
filename=$2
if [! -d "$directory"];
  then
	echo "Error: '$directory' this is not A DIRECTORY"
	exit 2
fi

search_file(){
    local dir="$1"
    local file="$2"
    for entry in "$dir"/*; do
	    if [-d "$entry"];
	    then
		    search_file "$entry" "$file"
	    elif [-f "$entry"];
	    then
		  if["$(basename "$entry")"="$file"];then
			    echo "File Found: $entry"
			    exit 0
		 fi
	    fi
    done

			    
}
search_file "$directory" "$filename"
echo "File '$filename' not found in '$directory'."
exit 3
