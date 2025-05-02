#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <file-path>"
elif [[ ! -e "$1" ]]; then
    echo "Error: File does not exist"
else
    echo "Checking file permissions..."

    if [[ -r "$1" ]]; then
        echo "- Is readable"
    fi

    if [[ -w "$1" ]]; then
        echo "- Is writable"
    fi

    if [[ -x "$1" ]]; then
        echo "- Is executable"
    fi
fi
