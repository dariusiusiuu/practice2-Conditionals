#!/bin/bash

read -p "Enter the path of the directory to compress: " dir
read -p "Enter the name of the output tarball file: " name

if [[ ! -e $dir ]]; then
    echo "Error: The path does not exist"
elif [[ ! -d $dir ]]; then
    echo "Error: The path is not a directory"
else
    if [[ -e $name.tar.gz ]]; then
        read -p "The file already exists. Overwrite? (y/n): " confirm
        if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
            echo "Compression cancelled."
        else
            tar -czf $name.tar.gz $dir
            echo "Directory successfully compressed."
        fi
    else
        tar -czf $name.tar.gz $dir
        echo "Directory successfully compressed."
    fi
fi
