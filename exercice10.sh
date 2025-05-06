#!/bin/bash

read -p "Enter the name of a Wireshark file: " wire_file
read -p "Now enter the name of a protocol (e.g. HTTP, TCP, UDP, etc.): " protocol 

if [[ -e "$wire_file" ]]; then
    if [[ "${wire_file##*.}" == "txt" || "${wire_file##*.}" == "csv" ]]; then
        count=$(grep -i "$protocol" "$wire_file" | wc -l)
        if [[ "$count" -eq 0 ]]; then
            echo "No lines found containing the protocol '$protocol'."
        else
            echo "Found $count lines with the protocol '$protocol'."
        fi
    else
        echo "Error: Bad file extension. Only .txt or .csv allowed."
    fi
else
    echo "Error: The file does not exist."
fi
