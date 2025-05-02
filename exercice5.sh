#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <file-path>"
elif [[ ! -e "$1" ]]; then
    echo "Error: File does not exist"
else
    file_type=$(file -b "$1")
    echo "File type: $file_type"

    if [[ -r "$1" ]]; then
        echo "The file is readable"
    else
        echo "The file is not readable"
    fi

    if [[ -w "$1" ]]; then
        echo "The file is writable"
    else
        echo "The file is not writable"
    fi

    if [[ -x "$1" ]]; then
        echo "The file is executable"
    else
        echo "The file is not executable"
    fi
fi
