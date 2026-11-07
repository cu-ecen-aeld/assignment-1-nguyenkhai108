#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Usage: $0 <search-directory> <search-string>"
    exit 1
fi

searchdir="$1"
searchstr="$2"

numfiles=$(find "$searchdir" -type f | wc -l)
numlines=$(grep -r "$searchstr" "$searchdir" | wc -l)

echo "The number of files are ${numfiles} and the number of matching lines are ${numlines}"
