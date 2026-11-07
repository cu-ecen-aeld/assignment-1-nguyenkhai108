#!/bin/sh
# writer.sh - writes a string to a file
# Usage: ./writer.sh <file-path> <write-string>

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file-path> <write-string>"
    exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")"
echo "$writestr" > "$writefile"
