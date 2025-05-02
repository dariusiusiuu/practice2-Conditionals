#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <path>"
elif [[ ! -e $1 ]]; then
    echo "Error: The path does not exist"
elif [[ -d $1 ]]; then
    echo "It is a directory"
else
    echo "It is a file"
    echo "File extension: ${1##*.}"
fi
